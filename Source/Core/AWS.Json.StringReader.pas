unit AWS.Json.StringReader;

{$I AWS.inc}

interface

uses
  SysUtils;

type
  TJsonStringReader = class
  public
    type
      EInternalError = class(Exception)
      public
        constructor Create;
      end;
      EEndOfInputReached = class(Exception)
      public
        constructor Create;
      end;
      EInvalidEscaped = class(Exception)
      public
        constructor Create;
      end;
  strict private
  var
    Buffer: string;
    FLength: Integer;
    BuffPos: integer;
    procedure CopyBufferToString(const LocalTagPos: integer; var TagName: string; StartBuffPos: integer); inline;
    procedure PositionAtCurrentPos(var StartBuffPos: integer; var StillInBuff: integer); inline;
    function ReadEscaped: Char;
  public
    constructor Create(const AValue: string);
    destructor Destroy; override;
    function NextChar: char; inline;
    function PeekChar: char; inline;
    procedure Backup(const c: char);
    procedure MoveNext(const Count: integer = 1); inline;
    function Eof: boolean; inline;
    function NextNonWhitespace: Char;
    function SkipWhitespaceUntilEnd: boolean;
    function InternalReadQuoted(const BuildString: boolean): string;
  end;

implementation

const
  Wspace: Set of byte = [$20, $A, $D, $9, $C];

{ TJsonStringReader.EEndOfInputReached }

constructor TJsonStringReader.EEndOfInputReached.Create;
begin
  inherited Create('End of JSON input reached.');
end;

{ TJsonStringReader.EInternalError }

constructor TJsonStringReader.EInternalError.Create;
begin
  inherited Create('JSON stream reader internal error');
end;

{ TJsonStringReader.EInvalidEscaped }

constructor TJsonStringReader.EInvalidEscaped.Create;
begin
  inherited Create('Invalid escaped sequence');
end;

{ TJsonStringReader }

procedure TJsonStringReader.CopyBufferToString(const LocalTagPos: integer; var TagName: string; StartBuffPos: integer);
var
  LV: integer;
begin
  LV := Length(TagName);
  TagName := TagName + Copy(Buffer, StartBuffPos, LocalTagPos - LV);
end;

constructor TJsonStringReader.Create(const AValue: string);
begin
  inherited Create;
  Buffer := AValue;
  FLength := Length(Buffer);
  BuffPos := 1;
end;

destructor TJsonStringReader.Destroy;
begin
  inherited;
end;

function TJsonStringReader.Eof: boolean;
begin
  Result := BuffPos > FLength;
end;

function TJsonStringReader.NextChar: char;
begin
  if (Eof) then
    raise EEndOfInputReached.Create;
  Result := Buffer[BuffPos];
  Inc(BuffPos);
end;

function TJsonStringReader.PeekChar: char;
begin
  if (Eof) then
    raise EEndOfInputReached.Create;
  Result := Buffer[BuffPos];
end;

procedure TJsonStringReader.Backup(const c: char);
begin
  Dec(BuffPos);
  if (BuffPos = 0) then
    raise EInternalError.Create;
end;

procedure TJsonStringReader.MoveNext(const Count: integer = 1);
begin
  Inc(BuffPos, Count);
end;

procedure TJsonStringReader.PositionAtCurrentPos(var StartBuffPos, StillInBuff: integer);
begin
  StillInBuff := FLength - BuffPos + 1;
  if StillInBuff <= 0 then
    raise EEndOfInputReached.Create;
  StartBuffPos := Self.BuffPos;
end;

function TJsonStringReader.SkipWhitespaceUntilEnd: boolean;
begin
  repeat
    if BuffPos > FLength then
      Exit(True);
    if (Buffer[BuffPos] > #32) or not(byte(Buffer[BuffPos]) in Wspace) then
      Exit(False);
    Inc(BuffPos);
  until False;
end;

function TJsonStringReader.InternalReadQuoted(const BuildString: boolean): string;
var
  c: char;
  StillInBuff: integer;
  LocalTagPos: integer;
  StartBuffPos: integer;
  LocalBuffPos: integer;
begin
  Result := '';
  LocalTagPos := 0;
  repeat
    PositionAtCurrentPos(StartBuffPos, StillInBuff);
    LocalBuffPos := StartBuffPos;
    while StillInBuff > 0 do
    begin
      c := Buffer[LocalBuffPos];
      Inc(LocalBuffPos);
      Dec(StillInBuff);
      Inc(LocalTagPos);
      if (c = '"') then
      begin
        Self.BuffPos := LocalBuffPos;
        if BuildString then
          CopyBufferToString(LocalTagPos - 1, Result, StartBuffPos);
        Exit;
      end
      else
      if c = '\' then
      begin
        Self.BuffPos := LocalBuffPos;
        if BuildString then
        begin
          CopyBufferToString(LocalTagPos - 1, Result, StartBuffPos);
          Result := Result + ReadEscaped;
        end else
          ReadEscaped;
        PositionAtCurrentPos(StartBuffPos, StillInBuff);
        LocalBuffPos := StartBuffPos;
        LocalTagPos := Length(Result);
      end;
    end;
    if BuildString then
      CopyBufferToString(LocalTagPos, Result, StartBuffPos);
    Self.BuffPos := LocalBuffPos;
  until false;
end;

function TJsonStringReader.NextNonWhitespace: Char;
var
  StartBuffPos, StillInBuff: integer;
begin
  PositionAtCurrentPos(StartBuffPos, StillInBuff);
  repeat
    if (Buffer[StartBuffPos] > #32) or not(byte(Buffer[StartBuffPos]) in Wspace) then
    begin;
      Self.BuffPos := StartBuffPos;
      Exit(Buffer[StartBuffPos]);
    end;

    Dec(StillInBuff);
    Inc(StartBuffPos);
    if StillInBuff <= 0 then
    begin
      Self.BuffPos := StartBuffPos;
      PositionAtCurrentPos(StartBuffPos, StillInBuff);
      Continue;
    end;
  until False;
end;

function TJsonStringReader.ReadEscaped: Char;
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
            raise EInvalidEscaped.Create;
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
            raise EInvalidEscaped.Create;
        end;
        Result := Char(CharValue);
      end;
  end;
  // keep ", \, /
end;

end.
