unit AWS.Json.Writer;

{$I AWS.inc}
{$INLINE ON}{$R-}{$Q-}

interface

uses
  Classes,
{$IFDEF PAS2JS}
  WEBLib.Utils,
{$ENDIF}
  SysUtils;

type
  IJsonTextWriter = interface
  ['{74C6F427-E6B5-4395-A4AA-661589B9D90A}']
    procedure Flush;
    procedure Write(const Value: string);
  end;

{$IFDEF PAS2JS}
  TJsonStreamWriter = class(TInterfacedObject, IJsonTextWriter)
  strict private
    FStream: TStream;
  public
    constructor Create(AStream: TStream);
    destructor Destroy; override;
    procedure Flush;
    procedure Write(const Value: string);
  end;
{$ELSE}
{$IFNDEF DELPHIXE3_LVL}
  MarshaledAString = PAnsiChar;
{$ENDIF}

  TJsonStreamWriter = class(TInterfacedObject, IJsonTextWriter)
  strict private
  const
    StrBuffMaxInitial = 4096;
  var
    FStream: TStream;
    Buffer: TBytes;
    BuffLen: integer;
    StrBuff: PChar;
    StrBuffLen: integer;
    StrBuffMax: integer;
    FFlushOnDestroy: Boolean;
  strict private
    procedure FlushStrBuff;
    procedure FlushBuff; inline;
  public
    constructor Create(AStream: TStream; ABufferSize: integer);
    destructor Destroy; override;
    procedure Flush;
    procedure Write(const Value: string);
    property FlushOnDestroy: Boolean read FFlushOnDestroy write FFlushOnDestroy;
  end;
{$ENDIF}

  TJsonWriter = class
  public
    type
      ECannotWriteName = class(Exception)
      public
        constructor Create;
      end;
      EMultipleRootNotAllowed = class(Exception)
      public
        constructor Create;
      end;
      EObjectOrArrayExpected = class(Exception)
      public
        constructor Create;
      end;
      EInvalidNesting = class(Exception)
      public
        constructor Create;
      end;
      EMissingValue = class(Exception)
      public
        constructor Create;
      end;
      ETooManyDepthLevels = class(Exception)
      public
        constructor Create;
      end;
      EEmptyJson = class(Exception)
      public
        constructor Create;
      end;
      EEmptyName = class(Exception)
      public
        constructor Create;
      end;
  strict private
    type
      TJsonScope = (EmptyDocument, EmptyArray, EmptyObject, NonEmptyDocument,
        NonEmptyArray, NonEmptyObject, DanglingName);
    const
      MaxStackSize = 255;
    class var
      FReplacements: array[0..127] of string;
      FReplaceable: set of Byte;
  strict private
    FWriter: IJsonTextWriter;
    FStack: array[0..MaxStackSize] of TJsonScope;
    FStackSize: integer;
    FIndent: string;
    FMustIndent: Boolean;
    FSeparator: string;
    FDeferredName: string;
//    FClosed: boolean;
    FFormatSettings: TFormatSettings;
    procedure SetIndentLength(const Value: integer);
    function GetIndentLength: integer;
    function OpenItem(const Empty: TJsonScope; const OpenBracket: string): TJsonWriter;
    function CloseItem(const Empty, NonEmpty: TJsonScope; const CloseBracket: string): TJsonWriter;
    procedure PushScope(const Scope: TJsonScope); inline;
    function PeekScope: TJsonScope; inline;
    procedure ReplaceTop(const Scope: TJsonScope); inline;
    procedure WriteDeferredName; inline;
    procedure InternalWriteString(const Value: string);
    procedure DoIndent; inline;
    procedure NewLine; inline;
    procedure BeforeName;
    procedure BeforeValue;
  public
    property Writer: IJsonTextWriter read FWriter;
  public
    class constructor Create;
    constructor Create(const AStream: TStream);
    function WriteBeginArray: TJsonWriter;
    function WriteEndArray: TJsonWriter;
    function WriteBeginObject: TJsonWriter;
    function WriteEndObject: TJsonWriter;
    function WriteName(const Name: string): TJsonWriter;
    function WriteString(const Value: string): TJsonWriter;
    function WriteRawString(const Value: string): TJsonWriter;
    function WriteBoolean(const Value: boolean): TJsonWriter;
    function WriteNull: TJsonWriter;
    function WriteDouble(const Value: double): TJsonWriter;
    function WriteInteger(const Value: Int64): TJsonWriter;
    procedure Flush;
    procedure Close;
    property IndentLength: integer read GetIndentLength write SetIndentLength;
  end;

implementation

{ TJsonWriter.ECannotWriteName }

constructor TJsonWriter.ECannotWriteName.Create;
begin
  inherited Create('Cannot write name in current Json scope');
end;

{ TJsonWriter.EMultipleRootNotAllowed }

constructor TJsonWriter.EMultipleRootNotAllowed.Create;
begin
  inherited Create('Multiple root values not allowed');
end;

{ TJsonWriter.EObjectOrArrayExpected }

constructor TJsonWriter.EObjectOrArrayExpected.Create;
begin
  inherited Create('Object or array expected as top-level value');
end;

{ TJsonWriter.EInvalidNesting }

constructor TJsonWriter.EInvalidNesting.Create;
begin
  inherited Create('Invalid nesting. Not all arrays/objects were properly closed.');
end;

{ TJsonWriter.EMissingValue }

constructor TJsonWriter.EMissingValue.Create;
begin
  inherited Create('Json value missing');
end;

{ TJsonWriter.ETooManyDepthLevels }

constructor TJsonWriter.ETooManyDepthLevels.Create;
begin
  inherited Create('Maximum level of nested structured reached.');
end;

{ TJsonWriter.EEmptyJson }

constructor TJsonWriter.EEmptyJson.Create;
begin
  inherited Create('Json is still empty. Cannot perform operation.');
end;

{ TJsonWriter.EEmptyName }

constructor TJsonWriter.EEmptyName.Create;
begin
  inherited Create('Cannot write empty name');
end;

{ TJsonStreamWriter }

{$IFDEF PAS2JS}
constructor TJsonStreamWriter.Create(aStream: TStream);
begin
  inherited Create;
  FStream := aStream;
end;
{$ENDIF}

{$IFDEF PAS2JS}
destructor TJsonStreamWriter.Destroy;
begin
  inherited;
end;
{$ENDIF}

{$IFDEF PAS2JS}
procedure TJsonStreamWriter.Flush;
begin
end;
{$ENDIF}

{$IFDEF PAS2JS}
procedure TJsonStreamWriter.Write(const Value: string);
var
  Bytes: TBytes;
begin
  if Value = '' then Exit;
  
  Bytes := TTMSEncoding.Unicode.GetBytes(Value);
  FStream.Write(Bytes, Length(Bytes));
end;
{$ENDIF}

{ TJsonStreamWriter }

{$IFNDEF PAS2JS}
constructor TJsonStreamWriter.Create(aStream: TStream; aBufferSize: integer);
begin
  inherited Create;
  FStream := aStream;
  SetLength(Buffer, aBufferSize);
  StrBuffMax := StrBuffMaxInitial;
  GetMem(StrBuff, StrBuffMax * SizeOf(Char));
  FFlushOnDestroy := True;
end;
{$ENDIF}

{$IFNDEF PAS2JS}
destructor TJsonStreamWriter.Destroy;
begin
  try
    if FFlushOnDestroy then
      Flush;
  finally
    FreeMem(StrBuff);
  end;
  inherited;
end;
{$ENDIF}

{$IFNDEF PAS2JS}
procedure TJsonStreamWriter.FlushBuff;
begin
  if (BuffLen > 0) then
    FStream.Write(Buffer[0], BuffLen);
  BuffLen := 0;
end;
{$ENDIF}

{$IFNDEF PAS2JS}
procedure TJsonStreamWriter.Flush;
begin
  FlushStrBuff;
  FlushBuff;
end;
{$ENDIF}

{$IFNDEF PAS2JS}
procedure TJsonStreamWriter.Write(const Value: string);
var
  LV: integer;
begin
  LV := Length(Value);
  if (LV = 0) then
    exit;

  if StrBuffLen + LV > StrBuffMax then
    FlushStrBuff;
  if LV > StrBuffMax then
  begin
    StrBuffMax := LV + 1024;
    ReallocMem(StrBuff, StrBuffMax * SizeOf(char));
  end;

  System.Move(Value[1], StrBuff[StrBuffLen], LV * SizeOf(char));
  Inc(StrBuffLen, LV);
end;
{$ENDIF}

{$IFNDEF PAS2JS}
resourcestring
  ErrInvalidString = 'The file contains a string that can''t be encoded in UTF-8';

procedure RaiseErrInvalidString;
begin
  raise Exception.Create(ErrInvalidString);
end;

procedure TJsonStreamWriter.FlushStrBuff;
const
  CP_UTF8 = 65001;
var
  Written: integer;

begin
  if BuffLen * 3 > Length(Buffer) - BuffLen then
    FlushBuff;

  // FEncoding does too many extra calls. We will hardcode UTF8 here. Written := FEncoding.GetBytes(Value, 1, Length(Value), Buffer, BuffPos);

  // http://msdn.microsoft.com/en-us/library/dd374130(VS.85).aspx  StrBuffLen must not be 0.
  if (StrBuffLen = 0) then
    Written := 0
  else
    {$IFDEF DELPHIXE_LVL}
    Written := LocaleCharsFromUnicode(CP_UTF8, 0, StrBuff, StrBuffLen, MarshaledAString(@Buffer[BuffLen]), Length(Buffer) - BuffLen, nil, nil);
    {$ELSE}
    Written := WideCharToMultiByte(CP_UTF8, 0, StrBuff, StrBuffLen, MarshaledAString(@Buffer[BuffLen]), Length(Buffer) - BuffLen, nil, nil);
    {$ENDIF}

  if (Written > 0) then
  begin
    Inc(BuffLen, Written);
    StrBuffLen := 0;
    exit;
  end;

  // This part should happen rarely.
  FlushBuff;
  if StrBuffLen = 0 then
    exit;

  {$IFDEF DELPHIXE_LVL}
  Written := LocaleCharsFromUnicode(CP_UTF8, 0, StrBuff, StrBuffLen, nil, 0, nil, nil);
  {$ELSE}
  Written := WideCharToMultiByte(CP_UTF8, 0, StrBuff, StrBuffLen, nil, 0, nil, nil);
  {$ENDIF}

  if (Written > Length(Buffer)) then
  begin
    SetLength(Buffer, Written + 1024);
  end;

  {$IFDEF DELPHIXE_LVL}
  Written := LocaleCharsFromUnicode(CP_UTF8, 0, StrBuff, StrBuffLen, MarshaledAString(@Buffer[BuffLen]), Length(Buffer) - BuffLen, nil, nil);
  {$ELSE}
  Written := WideCharToMultiByte(CP_UTF8, 0, StrBuff, StrBuffLen, MarshaledAString(@Buffer[BuffLen]), Length(Buffer) - BuffLen, nil, nil);
  {$ENDIF}

  if (Written = 0) then
    RaiseErrInvalidString;

  Inc(BuffLen, Written);
  StrBuffLen := 0;
end;
{$ENDIF}

{ TJsonWriter }

procedure TJsonWriter.ReplaceTop(const Scope: TJsonScope);
begin
  if FStackSize = 0 then
    raise EEmptyJson.Create;
  FStack[FStackSize - 1] := Scope;
end;

procedure TJsonWriter.DoIndent;
var
  I: integer;
begin
  FWriter.Write(#13#10);
  for I := 1 to FStackSize - 1 do
    FWriter.Write(FIndent);
end;

procedure TJsonWriter.NewLine;
begin
  if FMustIndent then
    DoIndent;
end;

procedure TJsonWriter.BeforeName;
begin
  case PeekScope of
    TJsonScope.NonEmptyObject: FWriter.Write(',');
    TJsonScope.EmptyObject: ;
  else
    raise ECannotWriteName.Create;
  end;
  NewLine;
  ReplaceTop(TJsonScope.DanglingName);
end;

procedure TJsonWriter.BeforeValue;
begin
  case PeekScope of
    TJsonScope.NonEmptyDocument:
      raise EMultipleRootNotAllowed.Create;
    TJsonScope.EmptyDocument:
      ReplaceTop(TJsonScope.NonEmptyDocument);
    TJsonScope.EmptyArray:
      begin
        ReplaceTop(TJsonScope.NonEmptyArray);
        NewLine;
      end;
    TJsonScope.NonEmptyArray:
      begin
        FWriter.Write(',');
        NewLine;
      end;
    TJsonScope.DanglingName:
      begin
        FWriter.Write(FSeparator);
        ReplaceTop(TJsonScope.NonEmptyObject);
      end;
  else
    raise EInvalidNesting.Create;
  end;
end;

function TJsonWriter.CloseItem(const Empty, NonEmpty: TJsonScope;
  const CloseBracket: string): TJsonWriter;
var
  Context: TJsonScope;
begin
  Context := PeekScope;
  if not (Context in [Empty, NonEmpty]) then
    raise EInvalidNesting.Create;
  if FDeferredName <> '' then
    raise EMissingValue.Create;
  Dec(FStackSize);
  if Context = NonEmpty then
    NewLine;
  FWriter.Write(CloseBracket);
  Result := Self;
end;

procedure TJsonWriter.Close;
begin
  Flush;
  if (FStackSize > 1) or ((FStackSize = 1) and (PeekScope <> TJsonScope.NonEmptyDocument)) then
    raise EInvalidNesting.Create;
//  FClosed := true;
end;

procedure TJsonWriter.PushScope(const Scope: TJsonScope);
begin
  if FStackSize > MaxStackSize then
    raise ETooManyDepthLevels.Create;
  FStack[FStackSize] := Scope;
  Inc(FStackSize);
end;

constructor TJsonWriter.Create(const aStream: TStream);
begin
  inherited Create;
  FFormatSettings := TFormatSettings.Invariant;
  FFormatSettings.DecimalSeparator := '.';
{$IFDEF PAS2JS}
  FWriter := TJsonStreamWriter.Create(aStream);
{$ELSE}
  FWriter := TJsonStreamWriter.Create(aStream, 4096);
{$ENDIF}
  FSeparator := ':';
  PushScope(TJsonScope.EmptyDocument);
end;

class constructor TJsonWriter.Create;
var
  C: Byte;
begin
  for C := Low(FReplacements) to High(FReplacements) do
    if C < 32 then
      FReplacements[C] := '\u' + IntToHex(C, 4)
    else
      FReplacements[C] := '';
  FReplacements[Ord('"')] := '\"';
  FReplacements[Ord('\')] := '\\';
  FReplacements[8] := '\b';
  FReplacements[9] := '\t';
  FReplacements[10] := '\n';
  FReplacements[12] := '\f';
  FReplacements[13] := '\r';
  FReplaceable := [];
  for C := Low(FReplacements) to High(FReplacements) do
    if FReplacements[C] <> '' then
      FReplaceable := FReplaceable + [C];
end;

procedure TJsonWriter.Flush;
begin
  FWriter.Flush;
end;

function TJsonWriter.OpenItem(const Empty: TJsonScope;
  const OpenBracket: string): TJsonWriter;
begin
  BeforeValue;
  PushScope(Empty);
  FWriter.Write(OpenBracket);
  Result := Self;
end;

function TJsonWriter.PeekScope: TJsonScope;
begin
  if FStackSize = 0 then
    raise EEmptyJson.Create;
  Result := FStack[FStackSize - 1];
end;

procedure TJsonWriter.SetIndentLength(const Value: integer);
begin
  if Value <= 0 then
  begin
    FIndent := '';
    FSeparator := ':';
    FMustIndent := False;
  end else
  begin
    FIndent := StringOfChar(#32, Value);
    FSeparator := ': ';
    FMustIndent := True;
  end;
end;

function TJsonWriter.GetIndentLength: integer;
begin
  Result := Length(FIndent);
end;

procedure TJsonWriter.InternalWriteString(const Value: string);
var
  Last: integer;
  Len: integer;
  I: integer;
  C: Integer;
  B: Byte;
begin
  FWriter.Write('"');
  Last := 1;
  Len := Length(Value);
  for I := 1 to Len do
  begin
    C := Ord(Value[I]);
    if C >= 128 then
      Continue;
    B := Byte(C);
    if not (B in FReplaceable) then
      Continue;

    if Last < I then
      FWriter.Write(Copy(Value, Last, I - Last));
    FWriter.Write(FReplacements[B]);
    Last := I + 1;
  end;
  if Last <= Len then
    FWriter.Write(Copy(Value, Last, Len - Last + 1));
  FWriter.Write('"');
end;

procedure TJsonWriter.WriteDeferredName;
begin
  if FDeferredName <> '' then
  begin
    BeforeName;
    InternalWriteString(FDeferredName);
    FDeferredName := '';
  end;
end;

function TJsonWriter.WriteString(const Value: string): TJsonWriter;
begin
  WriteDeferredName;
  BeforeValue;
  InternalWriteString(Value);
  Result := Self;
end;

function TJsonWriter.WriteEndArray: TJsonWriter;
begin
  Result := CloseItem(TJsonScope.EmptyArray, TJsonScope.NonEmptyArray, ']');
end;

function TJsonWriter.WriteEndObject: TJsonWriter;
begin
  Result := CloseItem(TJsonScope.EmptyObject, TJsonScope.NonEmptyObject, '}');
end;

function TJsonWriter.WriteBeginArray: TJsonWriter;
begin
  WriteDeferredName;
  Result := OpenItem(TJsonScope.EmptyArray, '[');
end;

function TJsonWriter.WriteBeginObject: TJsonWriter;
begin
  WriteDeferredName;
  Result := OpenItem(TJsonScope.EmptyObject, '{');
end;

function TJsonWriter.WriteBoolean(const Value: boolean): TJsonWriter;
begin
  WriteDeferredName;
  BeforeValue;
  if Value then
    FWriter.Write('true')
  else
    FWriter.Write('false');
    Result := Self;
end;

function TJsonWriter.WriteDouble(const Value: double): TJsonWriter;
begin
  WriteDeferredName;
  BeforeValue;
  FWriter.Write(FloatToStr(Value, FFormatSettings));
  Result := Self;
end;

function TJsonWriter.WriteName(const Name: string): TJsonWriter;
begin
  if Name = '' then
    raise EEmptyName.Create;
  if FDeferredName <> '' then
    raise EMissingValue.Create;
  if FStackSize = 0 then
    raise EEmptyJson.Create;
  FDeferredName := Name;
  Result := Self;
end;

function TJsonWriter.WriteNull: TJsonWriter;
begin
  WriteDeferredName;
  BeforeValue;
  FWriter.Write('null');
  Result := Self;
end;

function TJsonWriter.WriteRawString(const Value: string): TJsonWriter;
begin
  WriteDeferredName;
  BeforeValue;
  FWriter.Write('"');
  FWriter.Write(Value);
  FWriter.Write('"');
  Result := Self;
end;

function TJsonWriter.WriteInteger(const Value: Int64): TJsonWriter;
begin
  WriteDeferredName;
  BeforeValue;
  FWriter.Write(IntToStr(Value));
  Result := Self;
end;

end.
