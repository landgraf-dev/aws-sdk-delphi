unit AWS.Json.Reader;

{$I AWS.inc}
{$INLINE ON}{$R-}{$Q-}

interface

uses
  Classes, SysUtils,
{$IFDEF PAS2JS}
  WEBLib.Utils,
{$ELSE}
  AWS.Json.StreamReader,
{$ENDIF}
  AWS.Json.StringReader;

type
  TJsonToken = (BeginObject, EndObject, BeginArray, EndArray,
    Name, Boolean, Null, Text, Number, EOF);

  // Json parsing state machine algorithm based on Gson which api interface
  // is the most similar to TJsonReader
  TJsonState = (None, BeginObject, EndObject, BeginArray, EndArray, True, False,
    Null, DoubleQuoted, Buffered, DoubleQuotedName, Int64, Number, EOF);

  TNumberState = (None, Sign, Digit, Decimal, Fraction, ExpE, ExpSign, ExpDigit);

  TJsonScope = (EmptyDocument, EmptyArray, EmptyObject, NonEmptyDocument,
    NonEmptyArray, NonEmptyObject, DanglingName);

type
  TJsonReader = class
  public
    const
      MaxNumberBuffer = 255;
      MaxStackSize = 255;
  private
    // Do not use interfaces yet, performance might be better with
    // direct classes due to inline functions. More measurement is needed
{$IFDEF JSON_STRING_READER}
    FReader: TJsonStringReader;
{$ELSE}
    FReader: TJsonStreamReader;
{$ENDIF}
    FStack: array[0..MaxStackSize] of TJsonScope;
    FPathNames: array[0..MaxStackSize] of string;
    FPathIndices: array[0..MaxStackSize] of Integer;
    FStackSize: integer;
    FPeeked: TJsonState;
    FPeekedInt64: Int64;
    FPeekedNumber: string;
    FPeekedNumberLength: Integer;
    FPeekedString: string;
    FFormatSettings: TFormatSettings;
    function NextPeek: TJsonState; inline;
    procedure CheckState(const State: TJsonState); inline;
    procedure SkipChar; inline;
    function IsLiteral(C: Char): boolean;
    function IsDigit(C: Char): boolean; inline;
    function DoPeek: TJsonState;
    procedure PushScope(const Scope: TJsonScope);
    function PeekKeyword: TJsonState;
    function PeekNumber: TJsonState;
    function ReadQuoted: string;
    procedure SkipQuoted;
    procedure InitReader;
    function GetPath(UsePreviousPath: Boolean): string;
{$IFDEF JSON_STRING_READER}
    function StringFromStream(const AStream: TStream): string;
{$ENDIF}
  public
    constructor Create(const AString: string); overload;
    constructor Create(const AStream: TStream); overload;
    destructor Destroy; override;
    procedure ReadBeginArray;
    procedure ReadEndArray;
    procedure ReadBeginObject;
    procedure ReadEndObject;
    function ReadName: string;
    function ReadString: string;
    function ReadBoolean: boolean;
    function ReadDouble: double;
    function ReadInt64: Int64;
    function ReadInteger: integer;
    procedure SkipValue;
    procedure ReadNull;
    function HasNext: boolean;
    function Peek: TJsonToken;
    function IsNull: boolean;
    function Eof: boolean;
    function IsFloat: Boolean;
    function IsInt64: Boolean;
    function Path: string;
    function PreviousPath: string;
  end;

  EJsonReaderException = class(Exception)
  private
    FPath: string;
  public
    constructor Create(const Msg, Path: string);
    property Path: string read FPath;
  end;

  EInvalidStateException = class(EJsonReaderException)
  public
    constructor Create(const Expected, Actual: TJsonState; const Path: string);
  end;

  EJsonUnterminatedArray = class(EJsonReaderException)
  public
    constructor Create(const Location: string);
  end;

  EJsonUnterminatedObject = class(EJsonReaderException)
  public
    constructor Create(const Location: string);
  end;

  EJsonNameExpected = class(EJsonReaderException)
  public
    constructor Create(const Location: string);
  end;

  EJsonColonExpected = class(EJsonReaderException)
  public
    constructor Create(const Location: string);
  end;

  EMultipleRootNotAllowed = class(EJsonReaderException)
  public
    constructor Create;
  end;

  EJsonExpectedValue = class(EJsonReaderException)
  public
    constructor Create(const Location: string);
  end;

  ETooManyDepthLevels = class(EJsonReaderException)
  public
    constructor Create;
  end;

implementation

const
  JsonStateNames: array[TJsonState] of string =
    ('None', 'BeginObject', 'EndObject', 'BeginArray', 'EndArray', 'True', 'False',
    'Null', 'DoubleQuoted', 'Buffered', 'DoubleQuotedName', 'Int64', 'Number', 'EOF');

{ TJsonReader }

constructor TJsonReader.Create(const AStream: TStream);
begin
  inherited Create;
{$IFDEF JSON_STRING_READER}
  FReader := TJsonStringReader.Create(StringFromStream(AStream));
{$ELSE}
  FReader := TJsonStreamReader.Create(AStream);
{$ENDIF}
  InitReader;
end;

constructor TJsonReader.Create(const AString: string);
begin
  inherited Create;
{$IFDEF JSON_STRING_READER}
  FReader := TJsonStringReader.Create(AString);
{$ELSE}
  FReader := TJsonStreamReader.Create(
    TStringStream.Create(AString, TEncoding.UTF8, False),
    True);
{$ENDIF}
  InitReader;
end;

destructor TJsonReader.Destroy;
begin
  FReader.Free;
  inherited;
end;

function TJsonReader.Eof: boolean;
begin
  Result := (Peek = TJsonToken.EOF);
end;

function TJsonReader.GetPath(UsePreviousPath: Boolean): string;
var
  I: Integer;
  PathIndex: Integer;
begin
  Result := '$';
  for I := 0 to FStackSize - 1 do
    case FStack[I] of
      TJsonScope.EmptyArray,
      TJsonScope.NonEmptyArray:
        begin
          PathIndex := FPathIndices[I];
          if UsePreviousPath and (PathIndex >= 0) and (I = FStackSize - 1) then
            Dec(PathIndex);
          Result := Result + '[' + IntToStr(PathIndex) + ']';
        end;
      TJsonScope.EmptyObject,
      TJsonScope.DanglingName,
      TJsonScope.NonEmptyObject:
        begin
          Result := Result + '.';
          if FPathNames[I] <> '' then
            Result := Result + FPathNames[I];
        end;
    end;
end;

procedure TJsonReader.SkipChar;
begin
  FReader.MoveNext;
end;

function TJsonReader.DoPeek: TJsonState;
var
  FPeekStack: TJsonScope;
  C: Char;
begin
  FPeekStack := FStack[FStackSize - 1];
  if FPeekStack = TJsonScope.EmptyArray then
    FStack[FStackSize - 1] := TJsonScope.NonEmptyArray
  else
  if FPeekStack = TJsonScope.NonEmptyArray then
  begin
    C := FReader.NextNonWhitespace;
    case C of
      ']':
        begin
          SkipChar;
          FPeeked := TJsonState.EndArray;
          Exit(FPeeked);
        end;
      ',':
         SkipChar;
    else
      raise EJsonUnterminatedArray.Create(Path);
    end;
  end
  else
  if FPeekStack in [TJsonScope.EmptyObject, TJsonScope.NonEmptyObject] then
  begin
    FStack[FStackSize - 1] := TJsonScope.DanglingName;
    if FPeekStack = TJsonScope.NonEmptyObject then
    begin
      C := FReader.NextNonWhitespace;
      case C of
        '}':
          begin
            SkipChar;
            FPeeked := TJsonState.EndObject;
            Exit(FPeeked);
          end;
        ',': SkipChar;
      else
        raise EJsonUnterminatedObject.Create(Path);
      end;
    end;
    C := FReader.NextNonWhitespace;
    case C of
      '"':
        begin
          SkipChar;
          FPeeked := TJsonState.DoubleQuotedName;
          Exit(FPeeked);
        end;
      '}':
        if FPeekStack <> TJsonScope.NonEmptyObject then
        begin
          SkipChar;
          FPeeked := TJsonState.EndObject;
          Exit(FPeeked);
        end else
          raise EJsonNameExpected.Create(Path);
    else
      raise EJsonNameExpected.Create(Path);
    end;
  end
  else
  if FPeekStack = TJsonScope.DanglingName then
  begin
    FStack[FStackSize - 1] := TJsonScope.NonEmptyObject;
    C := FReader.NextNonWhitespace;
    if C = ':' then
      SkipChar
    else
      raise EJsonColonExpected.Create(Path);
  end
  else
  if FPeekStack = TJsonScope.EmptyDocument then
    FStack[FStackSize - 1] := TJsonScope.NonEmptyDocument
  else
  if FPeekStack = TJsonScope.NonEmptyDocument then
  begin
    if FReader.SkipWhitespaceUntilEnd then
    begin
      FPeeked := TJsonState.EOF;
      Exit(FPeeked);
    end else
      raise EMultipleRootNotAllowed.Create;
  end;

  C := FReader.NextNonWhitespace;
  case C of
    ']':
      if FPeekStack = TJsonScope.EmptyArray then
      begin
        SkipChar;
        FPeeked := TJsonState.EndArray;
        Exit(FPeeked);
      end else
        raise EJsonExpectedValue.Create(Path);
    '"':
      begin
        SkipChar;
        FPeeked := TJsonState.DoubleQuoted;
        Exit(FPeeked);
      end;
    '[':
      begin
        SkipChar;
        FPeeked := TJsonState.BeginArray;
        Exit(FPeeked);
      end;
    '{':
      begin
        SkipChar;
        FPeeked := TJsonState.BeginObject;
        Exit(FPeeked);
      end;
  end;

  Result := PeekKeyword;
  if Result <> TJsonState.None then
    Exit;
  Result := PeekNumber;
  if Result <> TJsonState.None then
    Exit;
  raise EJsonExpectedValue.Create(Path);
end;

function TJsonReader.NextPeek: TJsonState;
begin
  if FPeeked = TJsonState.None then
    FPeeked := DoPeek;
  Result := FPeeked;
end;

function TJsonReader.Path: string;
begin
  Result := GetPath(False);
end;

function TJsonReader.Peek: TJsonToken;
begin
  case NextPeek of
    TJsonState.BeginObject:
      Result := TJsonToken.BeginObject;

    TJsonState.EndObject:
      Result := TJsonToken.EndObject;

    TJsonState.BeginArray:
      Result := TJsonToken.BeginArray;

    TJsonState.EndArray:
      Result := TJsonToken.EndArray;

    TJsonState.DoubleQuotedName:
      Result := TJsonToken.Name;

    TJsonState.True,
    TJsonState.False:
      Result := TJsonToken.Boolean;

    TJsonState.Null:
      Result := TJsonToken.Null;

    TJsonState.DoubleQuoted,
    TJsonState.Buffered:
      Result := TJsonToken.Text;

    TJsonState.Int64,
    TJsonState.Number:
      Result := TJsonToken.Number;

    TJsonState.EOF:
      Result := TJsonToken.EOF;
  else
    Assert(false);
    Result := TJsonToken.EOF; // to avoid warnings, this should never happen
  end;
end;

function TJsonReader.PeekKeyword: TJsonState;
begin
  // don't need to create looping logic just for three small keywords
  case FReader.PeekChar of
    't', 'T':
      begin
        FReader.MoveNext;
        case FReader.NextChar of
          'r', 'R': case FReader.NextChar of
            'u', 'U': case FReader.NextChar of
              'e', 'E':
                if FReader.EOF or not IsLiteral(FReader.PeekChar) then
                  Exit(TJsonState.True);
            end;
          end;
        end;
      end;
    'f', 'F':
      begin
        FReader.MoveNext;
        case FReader.NextChar of
          'a', 'A': case FReader.NextChar of
            'l', 'L': case FReader.NextChar of
              's', 'S': case FReader.NextChar of
                'e', 'E':
                  if FReader.EOF or not IsLiteral(FReader.PeekChar) then
                    Exit(TJsonState.False);
              end;
            end;
          end;
        end;
      end;
    'n', 'N':
      begin
        FReader.MoveNext;
        case FReader.NextChar of
          'u', 'U': case FReader.NextChar of
            'l', 'L': case FReader.NextChar of
              'l', 'L':
                if FReader.EOF or not IsLiteral(FReader.PeekChar) then
                  Exit(TJsonState.Null);
            end;
          end;
        end;
      end;
  else
    Exit(TJsonState.None);
  end;
  raise EJsonExpectedValue.Create(Path);
end;

procedure TJsonReader.InitReader;
begin
  FFormatSettings := TFormatSettings.Invariant;
  FFormatSettings.DecimalSeparator := '.';
  FFormatSettings.ThousandSeparator := ',';
  if FReader.Eof then
    FPeeked := TJsonState.Eof
  else
    FPeeked := TJsonState.None;
  FStack[0] := TJsonScope.EmptyDocument;
  FStackSize := 1;
  SetLength(FPeekedNumber, MaxNumberBuffer);
end;

function TJsonReader.IsDigit(C: Char): boolean;
begin
  Result := (C <= #255) and (byte(C) in [Ord('0')..Ord('9')]);
end;

function TJsonReader.PeekNumber: TJsonState;
const
  MinIncompleteInteger = Low(Int64) div 10;
var
  Last: TNumberState;
  Negative: boolean;
  FitsInInt64: boolean;
  Value: Int64;
  NewValue: Int64;
  C: Char;
  BufIndex: integer;
begin
  C := FReader.PeekChar;
  if (C <> '-') and not IsDigit(C) then
    Exit(TJsonState.None);

  Negative := false;
  FitsInInt64 := true;
  Last := TNumberState.None;
  BufIndex := 1;
  Value := -1; // just a value different than zero
  repeat
    if BufIndex > MaxNumberBuffer then
      raise EJsonExpectedValue.Create(Path);
    if FReader.Eof then
      break;
    C := FReader.NextChar;
    FPeekedNumber[BufIndex] := C;
    Inc(BufIndex);
    case C of
      '-':
        if Last = TNumberState.None then
        begin
          Negative := true;
          Last := TNumberState.Sign;
          Continue;
        end
        else
        if Last = TNumberState.ExpE then
        begin
          Last := TNumberState.ExpSign;
          Continue;
        end
        else
          raise EJsonExpectedValue.Create(Path);
      '+':
        if Last = TNumberState.ExpE then
        begin
          Last := TNumberState.ExpSign;
          Continue;
        end
        else
          raise EJsonExpectedValue.Create(Path);
      'e', 'E':
        if Last in [TNumberState.Digit, TNumberState.Fraction] then
        begin
          Last := TNumberState.ExpE;
          Continue;
        end
        else
          raise EJsonExpectedValue.Create(Path);
      '.':
        if Last = TNumberState.Digit then
        begin
          Last := TNumberState.Decimal;
          Continue;
        end
        else
          raise EJsonExpectedValue.Create(Path);
    else
      if not IsDigit(C) then
        if not IsLiteral(C) then
        begin
          FReader.Backup(C);
          Dec(BufIndex);
          Break;
        end
        else
          raise EJsonExpectedValue.Create(Path);

      if Last in [TNumberState.Sign, TNumberState.None] then
      begin
        Value := -(Ord(C) - 48);
        Last := TNumberState.Digit
      end
      else
      if Last = TNumberState.Digit then
      begin
        if Value = 0 then
          raise EJsonExpectedValue.Create(Path); // numbers cannot have leading zeros
        NewValue := Value * 10 - (Ord(C) - 48);
        FitsInInt64 := FitsInInt64 and (
            (Value > MinIncompleteInteger)
             or ((Value = MinIncompleteInteger) and (NewValue < Value))
          );
        Value := NewValue;
      end
      else
      if Last = TNumberState.Decimal then
        Last := TNumberState.Fraction
      else
      if Last in [TNumberState.ExpE, TNumberState.ExpSign] then
        Last := TNumberState.ExpDigit;
    end;
  until false;

  if (Last = TNumberState.Digit) and FitsInInt64 and ((Value <> Low(Int64)) or Negative) then
  begin
    if Negative then
      FPeekedInt64 := Value
    else
      FPeekedInt64 := -Value;
    Exit(TJsonState.Int64);
  end
  else
  if Last in [TNumberState.Digit, TNumberState.Fraction, TNumberState.ExpDigit] then
  begin
//    FPeekedNumber[BufIndex] := #0;
    FPeekedNumberLength := BufIndex - 1;
    Exit(TJsonState.Number);
  end
  else
    raise EJsonExpectedValue.Create(Path);
end;

function TJsonReader.PreviousPath: string;
begin
  Result := GetPath(True);
end;

procedure TJsonReader.PushScope(const Scope: TJsonScope);
begin
  if FStackSize > MaxStackSize then
    raise ETooManyDepthLevels.Create;
  FStack[FStackSize] := Scope;
  Inc(FStackSize);
end;

function TJsonReader.HasNext: boolean;
begin
  Result := not (NextPeek in [TJsonState.EndObject, TJsonState.EndArray, TJsonState.EOF]);
end;

function TJsonReader.IsFloat: Boolean;
begin
  Result := (NextPeek = TJsonState.Number);
end;

function TJsonReader.IsInt64: Boolean;
begin
  Result := (NextPeek = TJsonState.Int64);
end;

function TJsonReader.IsLiteral(C: Char): boolean;
begin
  {$IFDEF NEXTGEN} {$WARNINGS OFF} {$ENDIF}
  Result := not CharInSet(C, ['/', '\', ';', '#', '{', '}', '[', ']', ':', ',', ' ', #13, #10, #12, #9]);
  {$IFDEF NEXTGEN} {$WARNINGS ON} {$ENDIF}
end;

function TJsonReader.IsNull: boolean;
begin
  Result := (Peek = TJsonToken.Null);
end;

procedure TJsonReader.SkipQuoted;
begin
  FReader.InternalReadQuoted(false);
end;

procedure TJsonReader.SkipValue;
var
  Count: integer;
begin
  Count := 0;
  repeat
    case NextPeek of //FI:W535
      TJsonState.BeginArray:
        begin
          PushScope(TJsonScope.EmptyArray);
          Inc(Count);
        end;
      TJsonState.BeginObject:
        begin
          PushScope(TJsonScope.EmptyObject);
          Inc(Count);
        end;
      TJsonState.EndArray, TJsonState.EndObject:
        begin
          Dec(FStackSize);
          Dec(Count);
        end;
      TJsonState.DoubleQuoted, TJsonState.DoubleQuotedName:
        SkipQuoted;
    end;
    FPeeked := TJsonState.None;
  until Count <= 0;

  FPathIndices[FStackSize - 1] := FPathIndices[FStackSize - 1] + 1;
  FPathNames[FStackSize - 1] := 'null';
end;

{$IFDEF JSON_STRING_READER}
function TJsonReader.StringFromStream(const AStream: TStream): string;
{$IFDEF PAS2JS}
var
  StrStream: TStringStream;
begin
  StrStream := TStringStream.Create('');
  try
    StrStream.CopyFrom(AStream, 0);
    Result := StrStream.DataString;
  finally
    StrStream.Free;
  end;
end;
{$ELSE}
var
  Reader: TJsonStreamReader;
begin
  Reader := TJsonStreamReader.Create(AStream, False);
  try
    Result := Reader.ReadString;
  finally
    Reader.Free;
  end;
end;
{$ENDIF}
{$ENDIF}

procedure TJsonReader.CheckState(const State: TJsonState);
begin
  if NextPeek <> State then
    raise EInvalidStateException.Create(State, NextPeek, Path);
end;

procedure TJsonReader.ReadBeginArray;
begin
  CheckState(TJsonState.BeginArray);
  PushScope(TJsonScope.EmptyArray);
  FPathIndices[FStackSize - 1] := 0;
  FPeeked := TJsonState.None;
end;

procedure TJsonReader.ReadEndArray;
begin
  CheckState(TJsonState.EndArray);
  Dec(FStackSize);
  FPathIndices[FStackSize - 1] := FPathIndices[FStackSize - 1] + 1;
  FPeeked := TJsonState.None;
end;

function TJsonReader.ReadBoolean: boolean;
begin
  case NextPeek of
    TJsonState.True:
      Result := true;
    TJsonState.False:
      Result := false;
  else
    raise EInvalidStateException.Create(TJsonState.True, NextPeek, Path); // todo: false
  end;
  FPeeked := TJsonState.None;
  FPathIndices[FStackSize - 1] := FPathIndices[FStackSize - 1] + 1;
end;

function TJsonReader.ReadDouble: double;
begin
  case NextPeek of
    TJsonState.Int64:
      begin
        FPeeked := TJsonState.None;
        FPathIndices[FStackSize - 1] := FPathIndices[FStackSize - 1] + 1;
        Exit(FPeekedInt64);
      end;
    TJsonState.Number:
      begin
        if TryStrToFloat(Copy(FPeekedNumber, 1, FPeekedNumberLength), Result, FFormatSettings) then
        begin
          FPeeked := TJsonState.None;
          FPathIndices[FStackSize - 1] := FPathIndices[FStackSize - 1] + 1;
          Exit;
        end else
          FPeekedString := Copy(FPeekedNumber, 1, FPeekedNumberLength);
      end;
    TJsonState.DoubleQuoted:
      FPeekedString := ReadQuoted;
    TJsonState.Buffered: ;
  else
    raise EInvalidStateException.Create(TJsonState.Number, NextPeek, Path); // todo
  end;

  FPeeked := TJsonState.Buffered;
  Result := StrToFloat(FPeekedString, FFormatSettings);
  FPeekedString := '';
  FPeeked := TJsonState.None;
  FPathIndices[FStackSize - 1] := FPathIndices[FStackSize - 1] + 1;
end;

function TJsonReader.ReadInt64: Int64;
var
  AsDouble: double;
begin
  case NextPeek of
    TJsonState.Int64:
      begin
        FPeeked := TJsonState.None;
        FPathIndices[FStackSize - 1] := FPathIndices[FStackSize - 1] + 1;
        Exit(FPeekedInt64);
      end;
    TJsonState.Number:
      begin
        if TryStrToInt64(Copy(FPeekedNumber, 1, FPeekedNumberLength), Result) then
        begin
          FPeeked := TJsonState.None;
          FPathIndices[FStackSize - 1] := FPathIndices[FStackSize - 1] + 1;
          Exit;
        end else
          FPeekedString := Copy(FPeekedNumber, 1, FPeekedNumberLength);
      end;
    TJsonState.DoubleQuoted:
      begin
        FPeekedString := ReadQuoted;
        if TryStrToInt64(FPeekedString, Result) then
        begin
          FPeeked := TJsonState.None;
          FPathIndices[FStackSize - 1] := FPathIndices[FStackSize - 1] + 1;
          Exit;
        end;
      end;
    TJsonState.Buffered: ;
  else
    raise EInvalidStateException.Create(TJsonState.Int64, NextPeek, Path); // todo
  end;

  FPeeked := TJsonState.Buffered;
  AsDouble := StrToFloat(FPeekedString, FFormatSettings);
  Result := Round(AsDouble);
  if AsDouble <> Result then
    raise EInvalidStateException.Create(TJsonState.Int64, NextPeek, Path);
  FPeekedString := '';
  FPeeked := TJsonState.None;
  FPathIndices[FStackSize - 1] := FPathIndices[FStackSize - 1] + 1;
end;

function TJsonReader.ReadInteger: integer;
var
  AsDouble: double;
begin
  case NextPeek of
    TJsonState.Int64:
      begin
        Result := Integer(FPeekedInt64);
        if Result <> FPeekedInt64 then
          raise EInvalidStateException.Create(TJsonState.Int64, NextPeek, Path);
        FPeeked := TJsonState.None;
        FPathIndices[FStackSize - 1] := FPathIndices[FStackSize - 1] + 1;
        Exit;
      end;
    TJsonState.Number:
      begin
        if TryStrToInt(Copy(FPeekedNumber, 1, FPeekedNumberLength), Result) then
        begin
          FPeeked := TJsonState.None;
          FPathIndices[FStackSize - 1] := FPathIndices[FStackSize - 1] + 1;
          Exit;
        end else
          FPeekedString := Copy(FPeekedNumber, 1, FPeekedNumberLength);
      end;
    TJsonState.DoubleQuoted:
      begin
        FPeekedString := ReadQuoted;
        if TryStrToInt(FPeekedString, Result) then
        begin
          FPeeked := TJsonState.None;
          FPathIndices[FStackSize - 1] := FPathIndices[FStackSize - 1] + 1;
          Exit;
        end;
      end;
    TJsonState.Buffered: ;
  else
    raise EInvalidStateException.Create(TJsonState.Int64, NextPeek, Path); // todo
  end;

  FPeeked := TJsonState.Buffered;
  AsDouble := StrToFloat(FPeekedString, FFormatSettings);
  Result := Round(AsDouble);
  if AsDouble <> Result then
    raise EInvalidStateException.Create(TJsonState.Int64, NextPeek, Path);
  FPeekedString := '';
  FPeeked := TJsonState.None;
  FPathIndices[FStackSize - 1] := FPathIndices[FStackSize - 1] + 1;
end;

function TJsonReader.ReadName: string;
begin
  CheckState(TJsonState.DoubleQuotedName);
  FPeeked := TJsonState.None;
  Result := ReadQuoted;
  FPathNames[FStackSize - 1] := Result;
end;

procedure TJsonReader.ReadNull;
begin
  CheckState(TJsonState.Null);
  FPeeked := TJsonState.None;
  FPathIndices[FStackSize - 1] := FPathIndices[FStackSize - 1] + 1;
end;

procedure TJsonReader.ReadBeginObject;
begin
  CheckState(TJsonState.BeginObject);
  PushScope(TJsonScope.EmptyObject);
  FPeeked := TJsonState.None;
end;

procedure TJsonReader.ReadEndObject;
begin
  CheckState(TJsonState.EndObject);
  Dec(FStackSize);
  FPathNames[FStackSize] := '';
  FPathIndices[FStackSize - 1] := FPathIndices[FStackSize - 1] + 1;
  FPeeked := TJsonState.None;
end;

function TJsonReader.ReadQuoted: string;
begin
  Result := FReader.InternalReadQuoted(true);
end;

function TJsonReader.ReadString: string;
begin
  case NextPeek of
    TJsonState.DoubleQuoted:
      Result := ReadQuoted;
    TJsonState.Int64:
      Result := IntToStr(FPeekedInt64);
    TJsonState.Number:
      Result := Copy(FPeekedNumber, 1, FPeekedNumberLength);
    TJsonState.Buffered:
      Result := FPeekedString;
  else
    raise EInvalidStateException.Create(TJsonState.DoubleQuoted, NextPeek, Path); // todo: int64 or number
  end;
  FPeeked := TJsonState.None;
  FPathIndices[FStackSize - 1] := FPathIndices[FStackSize - 1] + 1;
end;

{ EInvalidStateException }

constructor EInvalidStateException.Create(const Expected, Actual: TJsonState; const Path: string);
begin
  inherited CreateFmt('Expected %s but was %s at path %s',
    [JsonStateNames[Expected], JsonStateNames[Actual], Path]);
end;

{ EJsonUnterminatedArray }

constructor EJsonUnterminatedArray.Create(const Location: string);
begin
  inherited Create('Unterminated array', Location);
end;

{ EJsonUnterminatedObject }

constructor EJsonUnterminatedObject.Create(const Location: string);
begin
  inherited Create('Unterminated object', Location);
end;

{ EJsonNameExpected }

constructor EJsonNameExpected.Create(const Location: string);
begin
  inherited Create('Name expected', Location);
end;

{ EJsonColonExpected }

constructor EJsonColonExpected.Create(const Location: string);
begin
  inherited Create('Colon expected', Location);
end;

{ EMultipleRootNotAllowed }

constructor EMultipleRootNotAllowed.Create;
begin
  inherited Create('Multiple root values not allowed', '');
end;

{ EJsonExpectedValue }

constructor EJsonExpectedValue.Create(const Location: string);
begin
  inherited Create('Value expected but invalid character found', Location);
end;

{ ETooManyDepthLevels }

constructor ETooManyDepthLevels.Create;
begin
  inherited Create('Maximum level of nested structured reached.', '');
end;

{ EJsonReaderException }

constructor EJsonReaderException.Create(const Msg, Path: string);
begin
  FPath := Path;
  if Path <> '' then
    inherited Create(Msg + ' at ' + Path)
  else
    inherited Create(Msg);
end;

end.
