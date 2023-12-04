unit AWS.Json.StreamReader;

{$I AWS.inc}

interface

uses
  Classes, SysUtils;

type
  TCharArrayND = Array [0 .. 65536] of char; // will go faster than a dyn array.
  PCharArrayND = ^TCharArrayND;

  TJsonStreamReader = class
  strict private
  const
    StreamBuffSize = 4192;
  var
    FStream: TStream;
    FOwnsStream: Boolean;
    FEncoding: TEncoding;
    UsingUTF16: boolean;
    BigEndian: boolean;
    BuffAllocSize: integer;
    BuffLen: integer;
    StreamBuff: TBytes;
    StreamBuffLen: integer;
    EofReached: boolean;
    Buffer: PCharArrayND;
    BuffPos: integer;
    procedure DetectEncoding;
    procedure FillBuffer;
    procedure AddToBuffer(Data: PByte; Count: Integer);
    function IsContinuation(K: integer): boolean; inline;
    function IsStartOfContinuation(K: integer): boolean; inline;
    procedure CopyBufferToString(const LocalTagPos: integer; var TagName: string; StartBuffPos: integer; Buff: PCharArrayND); inline;
    procedure PositionAtCurrentPos(var StartBuffPos: integer; var Buff: PCharArrayND;
      var StillInBuff: integer); inline;
    function ReadEscaped: Char;
    function CharsInBuffer: integer; inline;
  public
    constructor Create(const AStream: TStream; AOwnsStream: Boolean = False);
    destructor Destroy; override;
    function NextChar: char; inline;
    function PeekChar: char; inline;
    procedure Backup(const c: char);
    procedure MoveNext(const Count: integer = 1); inline;
    function Eof: boolean; inline;
    function NextNonWhitespace: Char;
    function SkipWhitespaceUntilEnd: boolean;
    function InternalReadQuoted(const BuildString: boolean): string;
  public
    function ReadString: string;
  end;

  EJsonStreamReaderException = class(Exception)
  private
    FPosition: Integer;
  public
    constructor Create(const Msg: string; Position: Integer);
    property Position: Integer read FPosition;
  end;

  EInvalidJsonInput = class(EJsonStreamReaderException)
  public
    constructor Create(Position: Integer);
  end;

  EJsonStreamInternalError = class(Exception)
  public
    constructor Create;
  end;

  EEndOfInputReached = class(EJsonStreamReaderException)
  public
    constructor Create;
  end;

  EInvalidEscaped = class(EJsonStreamReaderException)
  public
    constructor Create(Position: Integer);
  end;

implementation

const
  Wspace: Set of byte = [$20, $A, $D, $9, $C];

type
  TEncoding_UTF8 = class(TUTF8Encoding)
  public
    function GetCharsPChar(Bytes: PByte; ByteCount: integer; Chars: PChar; CharCount: integer): integer;
  end;

  TEncoding_Unicode = class(TUnicodeEncoding)
  public
    function GetCharsPChar(Bytes: PByte; ByteCount: integer; Chars: PChar; CharCount: integer): integer;
  end;

  TEncoding_BigEndianUnicode = class(TBigEndianUnicodeEncoding)
  public
    function GetCharsPChar(Bytes: PByte; ByteCount: integer; Chars: PChar; CharCount: integer): integer;
  end;

{ TEncoding_BigEndianUnicode }

function TEncoding_BigEndianUnicode.GetCharsPChar(Bytes: PByte; ByteCount: integer; Chars: PChar; CharCount: integer): integer;
begin
  Result := GetChars(Bytes, ByteCount, Chars, CharCount);
end;

{ TEncoding_Unicode }

function TEncoding_Unicode.GetCharsPChar(Bytes: PByte; ByteCount: integer; Chars: PChar; CharCount: integer): integer;
begin
  Result := GetChars(Bytes, ByteCount, Chars, CharCount);
end;

{ TEncoding_UTF8 }

function TEncoding_UTF8.GetCharsPChar(Bytes: PByte; ByteCount: integer; Chars: PChar; CharCount: integer): integer;
begin
  Result := GetChars(Bytes, ByteCount, Chars, CharCount);
end;

{ EInvalidJsonInput }

constructor EInvalidJsonInput.Create(Position: Integer);
begin
  inherited Create('Invalid JSON Input', Position);
end;

{ EJsonStreamInternalError }

constructor EJsonStreamInternalError.Create;
begin
  inherited Create('JSON stream reader internal error');
end;

{ EEndOfInputReached }

constructor EEndOfInputReached.Create;
begin
  inherited Create('End of JSON input reached', 0);
end;

{ EInvalidEscaped }

constructor EInvalidEscaped.Create(Position: Integer);
begin
  inherited Create('Invalid escaped sequence', Position);
end;

{ TJsonStreamReader }

function TJsonStreamReader.CharsInBuffer: integer;
begin
  Result := BuffLen - BuffPos;
  if Result <= 0 then
  begin
    FillBuffer;
    Result := BuffLen - BuffPos;
  end;
end;

procedure TJsonStreamReader.CopyBufferToString(const LocalTagPos: integer; var TagName: string; StartBuffPos: integer;
  Buff: PCharArrayND);
var
  LV: integer;
begin
  LV := Length(TagName);
  if LocalTagPos <= LV then
    exit;

  SetLength(TagName, LocalTagPos);
  System.Move(Buff[StartBuffPos], TagName[1 + LV], (LocalTagPos - LV) * SizeOf(char));
end;

constructor TJsonStreamReader.Create(const aStream: TStream; AOwnsStream: Boolean = False);
begin
  FStream := AStream;
  FOwnsStream := AOwnsStream;
  SetLength(StreamBuff, StreamBuffSize);
  DetectEncoding;
  BuffAllocSize := FEncoding.GetMaxCharCount(StreamBuffSize) + 1;
  GetMem(Buffer, BuffAllocSize * SizeOf(char));
end;

destructor TJsonStreamReader.Destroy;
begin
  FreeMem(Buffer);
  FreeAndNil(FEncoding);
  if FOwnsStream then
    FStream.Free;
  inherited;
end;

procedure TJsonStreamReader.DetectEncoding;
var
  b: array [0..1] of byte;
  BytesRead: integer;
begin
  BytesRead := FStream.Read(b[0], Length(b));
  if BytesRead = 0 then
  begin
    // Do not raise error for empty stream. An empty stream could just provide
    // an EOF token when reading Json
    EofReached := true;
    FEncoding := TEncoding_UTF8.Create;
    Exit;
  end;

  if BytesRead = 1 then
  begin
    AddToBuffer(@b[0], 1);
    FEncoding := TEncoding_UTF8.Create;
    Exit;
  end;

  { from RFC-4627:

    JSON text SHALL be encoded in Unicode.  The default encoding is
    UTF-8.

    Since the first two characters of a JSON text will always be ASCII
    characters [RFC0020], it is possible to determine whether an octet
    stream is UTF-8, UTF-16 (BE or LE), or UTF-32 (BE or LE) by looking
    at the pattern of nulls in the first four octets.

           00 00 00 xx  UTF-32BE
           00 xx 00 xx  UTF-16BE
           xx 00 00 00  UTF-32LE
           xx 00 xx 00  UTF-16LE
           xx xx xx xx  UTF-8
  }
  // ignore UTF-32 for now
  if b[0] = 0 then
  begin
    FEncoding := TEncoding_BigEndianUnicode.Create;
    UsingUTF16 := true;
    BigEndian := true;
    AddToBuffer(@b[0], 2);
  end
  else
  if b[1] = 0 then
  begin
    FEncoding := TEncoding_Unicode.Create;
    UsingUTF16 := true;
  end
  else
    FEncoding := TEncoding_UTF8.Create;
  AddToBuffer(@b[0], 2);
end;

procedure TJsonStreamReader.AddToBuffer(Data: PByte; Count: Integer);
begin
  if StreamBuffLen + Count >= StreamBuffSize then
    raise EJsonStreamInternalError.Create;

  System.Move(Data^, StreamBuff[StreamBuffLen], Count);
  Inc(StreamBuffLen, Count);
end;

function TJsonStreamReader.IsContinuation(K: integer): boolean;
begin
  if (K < 0) then
    exit(false);
  begin
    if (StreamBuff[K] and $C0) = $80 then
      exit(true)
    else
      exit(false);
  end;
end;

function TJsonStreamReader.IsStartOfContinuation(K: integer): boolean;
begin
  if (K < 0) then
    exit(false);
  begin
    if (StreamBuff[K] and $C0) = $C0 then
      exit(true)
    else
      exit(false);
  end;
end;

procedure TJsonStreamReader.FillBuffer;
var
  SRead, ERead: integer;
  RBuffLen: integer;
begin
  if EofReached then
    exit;

  Assert(StreamBuffLen < StreamBuffSize);
  SRead := FStream.Read(StreamBuff[StreamBuffLen], StreamBuffSize - StreamBuffLen);
  if (SRead <> StreamBuffSize - StreamBuffLen) then
    EofReached := true;
  Inc(StreamBuffLen, SRead);
  RBuffLen := StreamBuffLen;
  if (not UsingUTF16 and not EofReached) then
  // we don't care about UTF16 surrogates, as we will treat them as different chars. We do have to care about utf8 continuations.
  begin
    while IsContinuation(RBuffLen - 1) do
      Dec(RBuffLen);
    if (IsStartOfContinuation(RBuffLen - 1)) then
      Dec(RBuffLen);
  end;

  if (RBuffLen < 0) then
    raise EInvalidJsonInput.Create(0);

  if (UsingUTF16) then
  begin
    // Delphi implementation in those ignores bytecount (RBuffLen). We need to ensure last parameter is ok, we can't pass BuffAllocSize as we do in UTF8.
    if RBuffLen mod 2 <> 0 then
      Dec(RBuffLen);
    if RBuffLen > (BuffAllocSize - 1) * 2 then
      RBuffLen := (BuffAllocSize - 1) * 2;

    if BigEndian then
      ERead := TEncoding_BigEndianUnicode(FEncoding).GetCharsPChar(@StreamBuff[0], RBuffLen, @Buffer[1], RBuffLen div 2)
    else
      ERead := TEncoding_Unicode(FEncoding).GetCharsPChar(@StreamBuff[0], RBuffLen, @Buffer[1], RBuffLen div 2);
  end
  else
    ERead := TEncoding_UTF8(FEncoding).GetCharsPChar(@StreamBuff[0], RBuffLen, @Buffer[1], BuffAllocSize - 1);

  if (RBuffLen < StreamBuffLen) then
  begin
    System.Move(StreamBuff[RBuffLen], StreamBuff[0], StreamBuffLen - RBuffLen);
  end;
  Dec(StreamBuffLen, RBuffLen);
  BuffPos := 1;
  BuffLen := ERead + 1;
end;

function TJsonStreamReader.Eof: boolean;
begin
  if (BuffPos >= BuffLen) then
    FillBuffer;
  Result := EofReached and (BuffPos >= BuffLen);
end;

function TJsonStreamReader.NextChar: char;
begin
  if (Eof) then
    raise EEndOfInputReached.Create;
  Result := Buffer[BuffPos];
  Inc(BuffPos);
end;

function TJsonStreamReader.PeekChar: char;
begin
  if (Eof) then
    raise EEndOfInputReached.Create;
  Result := Buffer[BuffPos];
end;

procedure TJsonStreamReader.Backup(const c: char);
begin
  Dec(BuffPos);
  if (BuffPos = 0) then
    Buffer[0] := c;
end;

procedure TJsonStreamReader.MoveNext(const Count: integer = 1); // this should be called always after PeekChar, both methods together do a NextChar.
begin
  Inc(BuffPos, Count);
end;

procedure TJsonStreamReader.PositionAtCurrentPos(var StartBuffPos: integer; var Buff: PCharArrayND;
  var StillInBuff: integer);
begin
  StillInBuff := Self.CharsInBuffer;
  if StillInBuff <= 0 then
    raise EEndOfInputReached.Create;
  Buff := Self.Buffer;
  StartBuffPos := Self.BuffPos;
end;

function TJsonStreamReader.SkipWhitespaceUntilEnd: boolean;
var
  StartBuffPos, StillInBuff: integer;
  Buff: PCharArrayND;
begin
  StillInBuff := Self.CharsInBuffer;
  if StillInBuff <= 0 then
    Exit(true);
  Buff := Self.Buffer;
  StartBuffPos := Self.BuffPos;

  repeat
    if (Buff[StartBuffPos] > #32) or not(byte(Buff[StartBuffPos]) in Wspace) then
    begin;
      Self.BuffPos := StartBuffPos;
      Exit(false);
    end;

    Dec(StillInBuff);
    Inc(StartBuffPos);
    if StillInBuff <= 0 then
    begin
      Self.BuffPos := StartBuffPos;
      StillInBuff := Self.CharsInBuffer;
      if StillInBuff <= 0 then
        Exit(true);
      Buff := Self.Buffer;
      StartBuffPos := Self.BuffPos;
    end;
  until False;
end;

function TJsonStreamReader.InternalReadQuoted(const BuildString: boolean): string;
var
  c: char;
  StillInBuff: integer;
  Buff: PCharArrayND;
  LocalTagPos: integer;
  StartBuffPos: integer;
  LocalBuffPos: integer;
begin
  Result := '';
  LocalTagPos := 0;
  repeat
    PositionAtCurrentPos(StartBuffPos, Buff, StillInBuff);
    LocalBuffPos := StartBuffPos;
    while StillInBuff > 0 do
    begin
      c := Buff[LocalBuffPos];
      Inc(LocalBuffPos);
      Dec(StillInBuff);
      Inc(LocalTagPos);
      if (c = '"') then
      begin
        Self.BuffPos := LocalBuffPos;
        if BuildString then
          CopyBufferToString(LocalTagPos - 1, Result, StartBuffPos, Buff);
        Exit;
      end
      else
      if c = '\' then
      begin
        Self.BuffPos := LocalBuffPos;
        if BuildString then
        begin
          CopyBufferToString(LocalTagPos - 1, Result, StartBuffPos, Buff);
          Result := Result + ReadEscaped;
        end else
          ReadEscaped;
        PositionAtCurrentPos(StartBuffPos, Buff, StillInBuff);
        LocalBuffPos := StartBuffPos;
        LocalTagPos := Length(Result);
      end;
    end;
    if BuildString then
      CopyBufferToString(LocalTagPos, Result, StartBuffPos, Buff);
    Self.BuffPos := LocalBuffPos;
  until false;
end;

function TJsonStreamReader.NextNonWhitespace: Char;
var
  StartBuffPos, StillInBuff: integer;
  Buff: PCharArrayND;
begin
  PositionAtCurrentPos(StartBuffPos, Buff, StillInBuff);
  repeat
    if (Buff[StartBuffPos] > #32) or not(byte(Buff[StartBuffPos]) in Wspace) then
    begin;
      Self.BuffPos := StartBuffPos;
      Exit(Buff[StartBuffPos]);
    end;

    Dec(StillInBuff);
    Inc(StartBuffPos);
    if StillInBuff <= 0 then
    begin
      Self.BuffPos := StartBuffPos;
      PositionAtCurrentPos(StartBuffPos, Buff, StillInBuff);
      Continue;
    end;
  until False;
end;

function TJsonStreamReader.ReadEscaped: Char;
var
  CharValue: UInt32;
  I: integer;
  C1: Char;
  B: byte;
begin
  Result := Self.NextChar;
  case Result of
    'n': Result := #10;
    'r': Result := #13;
    't': Result := #9;
    'b': Result := #8;
    'f': Result := #12;
    'u':
      begin
        CharValue := 0;
        for I := 3 downto 0 do
        begin
          C1 := Self.PeekChar;
          if (C1 > #255) then
            raise EInvalidEscaped.Create(0);
          Self.MoveNext;
          B := Byte(C1);
          CharValue := CharValue shl 4;
          if B in [ord('0') .. ord('9')] then
            CharValue := CharValue + (UInt32(B) - ord('0'))
          else
          if B in [ord('a') .. ord('f')] then
            CharValue := CharValue + (UInt32(B) - ord('a')) + 10
          else
          if B in [ord('A') .. ord('F')] then
            CharValue := CharValue + (UInt32(B) - ord('A')) + 10
          else
            raise EInvalidEscaped.Create(0);
        end;
        Result := Char(CharValue);
      end;
  end;
  // keep ", \, /
end;

function TJsonStreamReader.ReadString: string;
var
  StillInBuff: integer;
  LocalTagPos: integer;
begin
  Result := '';
  LocalTagPos := 0;
  repeat
    StillInBuff := Self.CharsInBuffer;
    if StillInBuff <= 0 then
      Exit;

    Inc(LocalTagPos, StillInBuff);
    CopyBufferToString(LocalTagPos, Result, Self.BuffPos, Self.Buffer);
    Self.BuffPos := Self.BuffPos + StillInBuff;
  until false;
end;

{ EJsonStreamReaderException }

constructor EJsonStreamReaderException.Create(const Msg: string; Position: Integer);
begin
  FPosition := Position;;
  if Position <> 0 then
    inherited Create(Msg + ' at position ' + IntToStr(Position))
  else
    inherited Create(Msg);
end;

end.
