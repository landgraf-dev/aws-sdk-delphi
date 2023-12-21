unit AWS.Xml.Reader;
{$INCLUDE AWS.inc}
{.$INLINE ON}{$R-}{$Q-} //Inline causes AVs.

interface
uses Classes, SysUtils, Generics.Collections, AWS.Xml.Base,
  AWS.Lib.Collections, AWS.Lib.Micro, AWS.Lib.MicroDictionary;
{$IFDEF DELPHIXE3_LVL}
  {$DEFINE NEWSTREAMREAD}
{$ENDIF}
{$IFDEF FPC}
  {$DEFINE NEWSTREAMREAD}
{$ENDIF}

type
  TFDictionary<TKey, TValue> = class(TuDictionary<TKey ,TValue>)
  end;

  TFList<T> = class(TuList<T>)
  end;

  TXmlAtt = record
  public
    Name: string;
    Value: string;
    Prefix: string;

    constructor Create(const aPrefix, aName, aValue: string);
  end;

  TCharArrayND = Array[0..65536] of char; //will go faster than a dyn array.
  PCharArrayND = ^TCharArrayND;

  TXmlAttArray = TArray<TXmlAtt>;

  TXMLEncodingType = (
    ExternalEncoding,
    UTF8,
    UTF16,
    BigEndianUTF16
  );

  ///	<summary>
  /// The standard delphi TStreamReader deletes a character from the buffer
  /// every time you read a byte. It makes it too inefficient for real use.
  ///	</summary>
  TXmlStreamReader = class
  private
  const
    StreamBuffSize = 4192 * 8;
  var
    FStream: TStream;
    FEncoding: TEncoding;
    OwnsEncoding: boolean;
    EncodingType: TXMLEncodingType;
    Buffer: PCharArrayND;
    BuffAllocSize: integer;
    BuffPos: integer;
    BuffLen: integer;
    StreamBuff: TBytes;
    StreamBuffLen: integer;
    EofReached: boolean;

    procedure DetectXMLEncoding;
    procedure FillBuffer;
    procedure AddToBuffer(const a: array of byte);
    function IsContinuation(k: integer): boolean; inline;
    function IsStartOfContinuation(k: integer): boolean; inline;
  private
    procedure HandleEncoding(const aEncoding: TEncoding;
      const DetectBom: boolean);
    procedure SkipBom(const aEncoding: TEncoding; const DetectBom: boolean;
      out CodePage: integer);

  public
    constructor Create(const aStream: TStream);
    constructor CreateNoXML(const aStream: TStream; const aEncoding: TEncoding; const DetectBOM: boolean);
    destructor Destroy; override;
    function NextChar: Char; inline;
    function NextCharNotEOF: Char; inline;
    function PeekChar: Char; inline;
    function ReadLine: string;
    procedure Backup(const c: char);
    procedure MoveNext; inline;
    function NextString(const len: integer): string;
    function Eof: boolean; inline;

    function CharsInBuffer: integer; inline;

  end;


  ///	<summary>
  ///	  This class implements a fast and simple xml reader for xlsx files. <b>This
  ///	  isn't a generic xml reader</b>, it is specifically designed for xlsx files.
  ///	  See remarks.
  ///	</summary>
  ///	<remarks>
  ///	  This class doesn't handle DTDs, since those are not allowed in xlsx:
  ///	  From Part 2: 8.1.4 XML Usage: 2. The XML 1.0 specification allows for
  ///	  the usage of Document Type Definitions (DTDs), which enable Denial of
  ///	  Service attacks, typically through the use of an internal entity
  ///	  expansion technique. As mitigation for this potential threat, DTD
  ///	  declarations shall not be used in the XML markup defined in this Open
  ///	  Packaging specification. Package implementers shall enforce this
  ///	  requirement upon creation and retrieval of the XML content and shall
  ///	  treat the presence of DTD declarations as an error. [M1.18]
  ///	</remarks>
  TXmlReader = class
  strict private
  var
    FReader: TXmlStreamReader;
    FEndTag: boolean;
    FIsEmpty: boolean;
    FTagName: string;
    FLocalName: string;

    FRawNamespace: string;
    FNamespaceStack: TNamespaceStack;
    FAttsBase: Array[0..10] of TXmlAtt;
    FAttsBaseLen: integer;
    FAttsExtra: TuDictionary<string, TXmlAtt>;

    procedure SkipWhitespace;

  private
    function GotoNext(const c: Char): boolean; inline;
    procedure SkipProcessing;
    procedure SkipCommentOrCData;
    procedure ReadCommentOrCData(var Value: string);
    procedure SkipComment;
    procedure SkipCData;
    procedure ReadCData(var Value: string);
    procedure ReadAttributes;
    procedure ReadName(var TagName, LocalName, RawNamespace: string; out HasAtts: boolean; const NeedsTagName: boolean);
    function CheckEndOfTag(): boolean; inline;
    function FindNamespace(const nm: string): string; inline;
    function GetNamespace: string; inline;
    function Unquote(const c: char): string;
    function GetCharacterRef(s: string): string;
    function TryUnescape: string;
    procedure GetFullStartTag(out part1, part2: string; const UsedPrefixes: HashSet<string>);
    function ReadUntilCloseTag(const ReturnString: boolean; out AddedPrefixes: string; const UsedPrefixes: HashSet<string>): string; overload;
    procedure CheckCharsInBuffer(var Buff: PCharArrayND; var StillInBuff: Integer; var Result: string; var StartBuffPos: integer; const LocalTagPos: integer); inline;
    procedure CopyTagToString(const LocalTagPos: Integer; var TagName: string; StartBuffPos: Integer; Buff: PCharArrayND); inline;
    procedure PositionAtCurrentPos(var StartBuffPos: Integer; var Buff: PCharArrayND; var StillInBuff: Integer); inline;
    procedure Escape_x(var c, c1: char; var LocalTagPos: integer;
                          var Value: string; var StartBuffPos, StillInBuff: integer;
                          var Buff: PCharArrayND);
    procedure EscapeAnd(var c: char; var LocalTagPos: integer;
                           var Value: string; var StartBuffPos, StillInBuff: integer;
                           var Buff: PCharArrayND);
    procedure GetAttExtra(const attNamespace, attName: string;
                             var Result: string);
    procedure FixAttExtra;
    function SameTag(const Tag0, destTag, nm: string): boolean;
    function CheckNamespace(const i: integer; const attNamespace: string): boolean;
    function GetLocalNameChar: char; inline;
    function ReadAttValue(out attName, attPrefix:string): string;

  public
    constructor Create(const aStream: TStream); overload;
    constructor Create(const aStream: TStream; const Encoding: TEncoding); overload;

    destructor Destroy; override;

    function Read: boolean;
    property Name: string read FTagName;
    property LocalName: string read FLocalName;
    property LocalNameChar: char read GetLocalNameChar;
    property NamespaceURI: string read GetNamespace;
    property Prefix: string read FRawNamespace;

    function AttributeCount: integer;
    function GetAttribute(const attName: string): string; overload; inline;
    function GetAttribute(const attName, attNamespace: string): string; overload;
    function GetAttributes: TXmlAttArray;

    function ReadUntilCloseTag: string; overload;
    function ReadUntilCloseTagWithRelatedParts(const ReturnString: boolean; const Related: TFList<string>; const aNmRel: string; const aTagId: string; const RelGuid: string): string;
    function ReadOuterXml: string;
    procedure ReadStartElement(const element: string);
    procedure Skip;
    function ReadUntilTag(const destTag, nm: string): string;

    function FindAttNamespace(const nm: string): string;
    function LookupNamespace(const prefix: string): string;

    ///	<summary>
    ///	  This method reads the start tag, the contents of the element, and
    ///	  moves the reader past the end element tag. It expands entities and
    ///	  ignores processing instructions and comments. The element can only
    ///	  contain simple content. That is, it cannot have child elements.
    ///	</summary>
    function ReadElementContentAsString: string;
    function TryReadElementContentAsString(out Value: string): boolean;
    function ReadElementContentAsInt: integer;
    function ReadElementContentAsLong: int64;

    property IsEmptyElement: boolean read FIsEmpty;
    function Eof: boolean;

    property AtEndElement: boolean read FEndTag;
  end;

  TFlexCelStreamReader = class(TTextReader)
  public
    Reader: TXmlStreamReader;
  public
    constructor Create(const stream: TStream; const Encoding: TEncoding; const DetectEncodingFromBom: boolean);
    destructor Destroy; override;
    procedure Close; override;
    function Peek: Integer; override;
    function Read: Integer; overload; override;
{$IFDEF NEWSTREAMREAD}
    function Read(var Buffer: TCharArray; Index, Count: Integer): Integer; overload; override;
    function ReadBlock(var Buffer: TCharArray; Index, Count: Integer): Integer; override;
{$ELSE}
    function Read(const Buffer: TCharArray; Index, Count: Integer): Integer; overload; override;
    function ReadBlock(const Buffer: TCharArray; Index, Count: Integer): Integer; override;
{$ENDIF}
    function ReadLine: string; override;
    function ReadToEnd: string; override;

{$IFDEF DELPHIRIO_LVL}
    procedure Rewind; override;
{$ENDIF}

  end;

  procedure RaiseInvalidXMLFile;  //Out of loops so they don't add a stack frame to methods.
  procedure RaiseNamespaceNotFound;  //Out of loops so they don't add a stack frame to methods.
  procedure RaiseEofReached;  //Out of loops so they don't add a stack frame to methods.
  procedure RaiseInvalidEncoding;


const
  Wspace: Set of byte    = [$9, $20, $10, $a, $D];
  WspaceExt: Set of byte = [$9, $20, $10, $a, $D, byte('/'), byte('>'), byte('=')];

implementation
uses AWS.Lib.Encoding, AWS.Xml.Writer;

resourcestring
  ErrInternal = 'Unexpected error.';
  ErrNamespaceNotFound = 'Namespace not found.';
  ErrEofReached = 'Reached the end of the xml file.';
  ErrInvalidXmlFile = 'Invalid XML file.';
  ErrInvalidEncoding = 'The file has invalid characters for the encoding used.';

type
 TEncoding_UTF8 = class(TUTF8Encoding)
   public
    function GetCharsPChar(Bytes: PByte; ByteCount: Integer; Chars: PChar; CharCount: Integer): Integer;
 end;

 TEncoding_Unicode = class(TUnicodeEncoding)
   public
    function GetCharsPChar(Bytes: PByte; ByteCount: Integer; Chars: PChar; CharCount: Integer): Integer;
 end;

 TEncoding_BigEndianUnicode = class(TBigEndianUnicodeEncoding)
   public
    function GetCharsPChar(Bytes: PByte; ByteCount: Integer; Chars: PChar; CharCount: Integer): Integer;
 end;

procedure RaiseInvalidXMLFile;  //Out of loops so they don't add a stack frame to methods.
begin
  raise Exception.Create(ErrInvalidXmlFile);
end;

procedure RaiseNamespaceNotFound;  //Out of loops so they don't add a stack frame to methods.
begin
  raise Exception.Create(ErrNamespaceNotFound);
end;

procedure RaiseEofReached;  //Out of loops so they don't add a stack frame to methods.
begin
  raise Exception.Create(ErrEofReached);
end;

procedure RaiseInvalidEncoding;  //Out of loops so they don't add a stack frame to methods.
begin
  raise Exception.Create(ErrInvalidEncoding);
end;

procedure RaiseInternal;  //Out of loops so they don't add a stack frame to methods.
begin
  raise Exception.Create(ErrInternal);
end;


{$region 'XmlReader'}
{ TXmlReader }

constructor TXmlReader.Create(const aStream: TStream);
begin
  inherited Create;
  FReader := TXmlStreamReader.Create(aStream);
  FNamespaceStack := TNamespaceStack.Create;
  FAttsExtra := TFDictionary<string, TXmlAtt>.Create;
end;

constructor TXmlReader.Create(const aStream: TStream; const Encoding: TEncoding);
begin
  inherited Create;
  FReader := TXmlStreamReader.CreateNoXML(aStream, Encoding, false);
  FNamespaceStack := TNamespaceStack.Create;
  FAttsExtra := TFDictionary<string, TXmlAtt>.Create;
end;


destructor TXmlReader.Destroy;
begin
  FreeAndNil(FAttsExtra);
  FreeAndNil(FNamespaceStack);
  FreeAndNil(FReader);
  inherited;
end;

function TXmlReader.Eof: boolean;
begin
  Result := FReader.Eof;
end;

procedure TXmlReader.PositionAtCurrentPos(var StartBuffPos: Integer; var Buff: PCharArrayND; var StillInBuff: Integer);
begin
  StillInBuff := FReader.CharsInBuffer;
  if StillInBuff <= 0 then
    RaiseInvalidXMLFile;
  Buff := FReader.Buffer;
  StartBuffPos := FReader.BuffPos;
end;

procedure TXmlReader.CopyTagToString(const LocalTagPos: Integer; var TagName: string; StartBuffPos: Integer; Buff: PCharArrayND);
var
  LV: integer;
begin
  LV := Length(TagName);
  if LocalTagPos <= LV then exit;

  SetLength(TagName, LocalTagPos);
  System.Move(Buff[StartBuffPos], TagName[1 + LV], (LocalTagPos - LV) * SizeOf(Char));
end;

procedure TXmlReader.CheckCharsInBuffer(var Buff: PCharArrayND; var StillInBuff: Integer; var Result: string; var StartBuffPos: integer; const LocalTagPos: integer);
begin
  if StillInBuff <= 0 then
  begin
    CopyTagToString(LocalTagPos, Result, StartBuffPos, Buff);
    PositionAtCurrentPos(StartBuffPos, Buff, StillInBuff);
  end;
end;

function TXmlReader.GotoNext(const c: Char): boolean;
var
  c1: Char;
begin
  repeat
    if (FReader.Eof) then exit(false);
    c1 := FReader.NextCharNotEOF;
  until c1 = c;

  Result := true;
end;

procedure TXmlReader.SkipProcessing;
var
  c1, c0: Char;
begin
  c1 := char(0);
  repeat
    c0 := c1;
    c1 := FReader.NextChar;
  until (c0 = '?') and (c1 = '>');
end;

procedure TXmlReader.SkipComment;
var
  c1, c0: Char;
begin
  c1 := FReader.NextChar;
  if c1 <> '-' then RaiseInvalidXMLFile;

  c1 := char(0);
  repeat
    c0 := c1;
    c1 := FReader.NextChar;
  until (c0 = '-') and (c1 = '-');

  c1 := FReader.NextChar;
  if c1 <> '>' then RaiseInvalidXMLFile;

end;

procedure TXmlReader.SkipCData;
const
  Cdata = 'CDATA[';
var
  s1: string;
  c0, c1, c2: char;
begin
  s1 := FReader.NextString(Length(Cdata));
  if s1 <> Cdata then RaiseInvalidXMLFile;

  c1 := char(0);
  c2 := char(0);
  repeat
    c0 := c1;
    c1 := c2;
    c2 := FReader.NextChar;
  until (c0 = ']') and (c1 = ']') and (c2 = '>');

end;

procedure TXmlReader.ReadCData(var Value: string);
const
  Cdata = 'CDATA[';
var
  s1: string;
  c0, c1, c2: char;
begin
  s1 := FReader.NextString(Length(Cdata));
  if s1 <> Cdata then RaiseInvalidXMLFile;

  c1 := char(0);
  c2 := char(0);
  repeat
    c0 := c1;
    c1 := c2;
    c2 := FReader.NextChar;
    Value := Value + c2;
  until (c0 = ']') and (c1 = ']') and (c2 = '>');
  SetLength(Value, Length(Value) - 3);
end;

procedure TXmlReader.SkipCommentOrCData;
var
  c1: Char;
begin
  c1 := FReader.NextChar;
  case c1 of
    '-': SkipComment;
    '[': SkipCData;
    else RaiseInvalidXMLFile
  end;

end;

procedure TXmlReader.ReadCommentOrCData(var Value: string);
var
  c1: Char;
begin
  c1 := FReader.NextChar;
  case c1 of
    '-': SkipComment;
    '[': ReadCData(Value);
    else RaiseInvalidXMLFile
  end;

end;

function TXmlReader.Read: boolean;
var
  c: char;
  NameFound: boolean;
  HasAtts: boolean;
begin
  if (FAttsExtra.Count > 0) then FAttsExtra.Clear;
  FAttsBaseLen := 0;
  NameFound := false;
  FEndTag := false;
  FIsEmpty:= false;
  repeat
    if (not GotoNext('<')) then exit(false);
    c := FReader.PeekChar;
    case c of
      '?':
        begin
          FReader.MoveNext;
          SkipProcessing;
        end;
      '!':
        begin
          FReader.MoveNext;
          SkipCommentOrCData;
        end;
      '/':
        begin
          FEndTag := true;
          NameFound := true;
          FReader.MoveNext;
          FNamespaceStack.DecLevel;
        end
      else
      begin
        NameFound := true;
        FNamespaceStack.IncLevel;
      end;
    end;
  until NameFound;

  ReadName(FTagName, FLocalName, FRawNamespace, HasAtts, true);
  if (HasAtts) then
  begin
    ReadAttributes;
  end;

  Result := true;
end;

function IsWhiteSpace(const c: char): boolean; inline;
begin
  if (c > #32) then exit(false);

  Result := byte(c) in Wspace;  // $D isn't really standard, but it is used in legacy xml.
end;

function IsWhiteSpaceOrEndTag(const c: char): boolean; inline;
begin
  if (c = '>') then exit(true);
  exit(IsWhiteSpace(c));
end;

procedure TXmlReader.SkipWhitespace;
var
  StartBuffPos, StillInBuff: Integer;
  Buff: PCharArrayND;
begin
  PositionAtCurrentPos(StartBuffPos, Buff, StillInBuff);
  repeat
    //if not IsWhitespace(Buff[StartBuffPos])
    if (Buff[StartBuffPos] > #32) or not (byte(Buff[StartBuffPos]) in WSpace)
      then begin; FReader.BuffPos := StartBuffPos; exit; end;

    Dec(StillInBuff);
    Inc(StartBuffPos);
    if StillInBuff <= 0 then
    begin
      FReader.BuffPos := StartBuffPos;
      if Eof then exit;
      PositionAtCurrentPos(StartBuffPos, Buff, StillInBuff);
      continue;
    end;


  until false;
end;

function TXmlReader.FindNamespace(const nm: string): string;
begin
  if not FNamespaceStack.TryGetValue(nm, Result)
    then RaiseNamespaceNotFound;
end;

function TXmlReader.FindAttNamespace(const nm: string): string;
begin
  //Attributes are never in a default namespace: http://www.xmlplease.com/attributexmlns
  if (nm = '') then exit('');

  if not FNamespaceStack.TryGetValue(nm, Result) then RaiseNamespaceNotFound;
end;

function TXmlReader.LookupNamespace(const prefix: string): string;
begin
  Result := FindAttNamespace(prefix);
end;

function TXmlReader.GetNamespace: string;
begin
  Result := FindNamespace(FRawNamespace)
end;

function TXmlReader.CheckEndOfTag(): boolean;
var
  c, c0: char;
begin
 c := FReader.Buffer[FReader.BuffPos];  //buffpos should always be valid when calling this method.
 if (c = '/') then
 begin
   FReader.MoveNext;
   c0 := FReader.NextChar;
   if c0 <> '>' then begin; RaiseInvalidXMLFile; exit(false); end;
   FIsEmpty := true;
   //FEndTag := true;
   FNamespaceStack.DecLevel;
   exit(true);
 end;

 Result := c = '>';
 if Result then FReader.MoveNext;

end;

procedure TXmlReader.ReadName(var TagName, LocalName, RawNamespace: string; out HasAtts: boolean; const NeedsTagName: boolean);
var
  StartLocal: integer;
  StillInBuff: integer;
  Buff: PCharArrayND;
  StartBuffPos: integer;
  Pc, Pc0: PChar; m: integer;
begin
  StartLocal := 0;
  LocalName := '';
  PositionAtCurrentPos(StartBuffPos, Buff, StillInBuff);
  Pc := @(Buff[FReader.BuffPos]);
  Pc0 := Pc;
  repeat
    if (StillInBuff <= 0) then
    begin
      CheckCharsInBuffer(Buff, StillInBuff, LocalName, StartBuffPos, Pc - Pc0);
      m := (Pc - Pc0);
      Pc := @Buff[FReader.BuffPos];
      Pc0 := Pc - m;

    end;

    if (Pc^ < #65) then
    begin
      if (byte(Pc^) in WspaceExt) then break;

      if (Pc^ = ':') then
      begin
        StartLocal := Pc - Pc0 + 2;
      end;
    end;

    Inc(FReader.BuffPos); //FReader.MoveNext;
    Inc(Pc);
    Dec(StillInBuff);

  until false;
  CopyTagToString(Pc - Pc0, LocalName, StartBuffPos, Buff);

  if StartLocal > 0 then
  begin
    if (NeedsTagName) then TagName := LocalName;
    RawNamespace := System.Copy(LocalName, 1, StartLocal - 2);
    LocalName := Copy(LocalName, StartLocal, Length(LocalName))
  end
  else
  begin
    if NeedsTagName then TagName := LocalName;
    RawNamespace := '';
  end;

  if (IsWhitespace(Pc^)) then
  begin
    SkipWhitespace;
  end;
  HasAtts := not CheckEndOfTag();
end;

function TXmlReader.GetCharacterRef(s: string): string;
var
  u32: UCS4String;
begin
  if (length(s) > 1) and (s[1] = 'x') then s[1] := '$';
  SetLength(u32, 2); //0 terminated 0-based array (not 1 as the rest of strings)
  u32[0] := UCS4Char(StrToInt64(s));
  u32[1] := 0;
  Result := UCS4StringToUnicodeString(u32);
end;

function TXmlReader.TryUnescape: string;
var
  c1: Char;
  cFinal: UInt32;
  bc1: byte;
  s: string;
  i: integer;
begin
  FReader.NextChar; //Positions in the "x"
  s := '_x';
  cFinal := 0;
  for i := 3 downto 0 do
  begin
    c1 := FReader.PeekChar;
    if (c1 > #255) then exit(s);
    bc1 := byte(c1);

    if bc1 in [ord('0')..ord('9')] then
    begin
      cFinal := cFinal + (UInt32(bc1) - ord('0')) shl (i * 4);
      s := s + c1;
      FReader.MoveNext;
      continue;
    end;
    if bc1 in [ord('a')..ord('f')] then
    begin
      cFinal := cFinal + (10 + UInt32(bc1) - ord('a')) shl (i * 4);
      s := s + c1;
      FReader.MoveNext;
      continue;
    end;
    if bc1 in [ord('A')..ord('F')] then
    begin
      cFinal := cFinal + (10 + UInt32(bc1) - ord('A')) shl (i * 4);
      s := s + c1;
      FReader.MoveNext;
      continue;
    end;

    exit(s);
  end;

  c1 := FReader.PeekChar;
  if c1 <> '_' then exit(s);
  FReader.MoveNext;
  exit(char(cFinal));
end;

function TXmlReader.Unquote(const c: char): string;
var
  c1: char;
  s: string;
  Lens: integer;
begin
  if (c = '_') and (FReader.PeekChar = 'x') then exit(TryUnescape);

  if (c <> '&') then exit(c);

  SetLength(s, 12); Lens := 0;
  repeat
    c1 := FReader.NextChar;
    if c1 = ';' then break else begin; Inc(Lens); s[Lens] := c1; end;
  until Lens > 10; //avoid reading to end of file...

  if (Lens > 1) and (s[1] = '#') then exit(GetCharacterRef(copy(s, 2, Lens - 1)));

  SetLength(s, Lens);
  if s = 'amp' then exit('&');
  if s = 'quot' then exit('"');
  if s = 'lt' then exit('<');
  if s = 'gt' then exit('>');
  if s = 'apos' then exit('''');

  RaiseInvalidXMLFile;
end;

procedure TXmlReader.ReadAttributes;
var
  AttNameDummy, LocalAttName, RawAttNamespace: string;
  AttValue: string;
  HasMore: boolean;
  StartQuote, c, c1: char;
  Done: boolean;

  Buff: PCharArrayND;
  LocalTagPos, StillInBuff: integer;
  StartBuffPos: integer;
  NeedsReloadAtts: boolean;

begin
  NeedsReloadAtts := false;
  SkipWhitespace;
  repeat
    ReadName(AttNameDummy, LocalAttName, RawAttNamespace, HasMore, false);
    SkipWhitespace;
    if FReader.NextChar <> '=' then RaiseInvalidXMLFile;
    SkipWhitespace;
    StartQuote := FReader.NextChar;
    if (StartQuote <> '''') and (StartQuote <> '"') then RaiseInvalidXMLFile;


    c:= ' ';
    AttValue := '';
    PositionAtCurrentPos(StartBuffPos, Buff, StillInBuff); LocalTagPos := 0;
    repeat
      CheckCharsInBuffer(Buff, StillInBuff, AttValue, StartBuffPos, LocalTagPos);
      c1 := c;
      c := Buff[FReader.BuffPos];
      if (c = StartQuote) then begin; FReader.MoveNext; break; end;

      if c = '&' then
      begin
        EscapeAnd(c, LocalTagPos, AttValue, StartBuffPos, StillInBuff, Buff);
        continue;
      end;

      if (c1 = '_') and (c = 'x') then
      begin
        Escape_x(c, c1, LocalTagPos, AttValue, StartBuffPos, StillInBuff, Buff);
        continue;
      end;


      Inc(LocalTagPos);
      Inc(FReader.BuffPos); //FReader.MoveNext;
      Dec(StillInBuff);
    until false;
    CopyTagToString(LocalTagPos, AttValue, StartBuffPos, Buff);

    if RawAttNamespace = 'xmlns' then FNamespaceStack.Add(LocalAttName, AttValue)
    else if LocalAttName = 'xmlns' then FNamespaceStack.Add('', AttValue)
    else
    begin
      if FAttsBaseLen <= High(FAttsBase) then
      begin
        FAttsBase[FAttsBaseLen].Name := LocalAttName;
        FAttsBase[FAttsBaseLen].Value := AttValue;
        FAttsBase[FAttsBaseLen].Prefix := RawAttNamespace;
        Inc(FAttsBaseLen);
      end
      else
      begin
        if LocalAttName <> '' then NeedsReloadAtts := true;
        //we will ignore repeated atts. Some Excel files might have them in the legacy drawings.
        FAttsExtra[LocalAttName] := TXmlAtt.Create(RawAttNamespace, LocalAttName, AttValue);
      end;
    end;

    SkipWhitespace;
    done := CheckEndOfTag();
  until done;

 if (FAttsExtra.Count > 0) and NeedsReloadAtts then FixAttExtra; //this will happen very rarely

end;

procedure TXmlReader.FixAttExtra;
var
  i: integer;
  Att: TXmlAtt;
  NewAtts: TFList<TXmlAtt>;
begin
  NewAtts := TFList<TXmlAtt>.Create();
  try
    for Att in FAttsExtra.Values do
    begin
      NewAtts.Add(Att);
    end;

    FAttsExtra.Clear;
    for i := 0 to NewAtts.Count - 1 do
    begin
      Att := NewAtts[i];
      FAttsExtra.Add(FindAttNamespace(Att.Prefix)+ ':' + Att.Name, Att);
    end;
  finally
    FreeAndNil(NewAtts);
  end;
end;

function TXmlReader.AttributeCount: integer;
begin
  Result := FAttsBaseLen + FAttsExtra.Count;
end;

function TXmlReader.GetAttribute(const attName: string): string;
begin
  Result := GetAttribute(attName, '');
end;

function TXmlReader.GetAttribute(const attName, attNamespace: string): string;
var
  i: integer;
begin
  for i := 0 to FAttsBaseLen - 1 do
  begin
    if (FAttsBase[i].Name = attName) then
    begin
      if (attNamespace = '') then exit(FAttsBase[i].Value);
      if CheckNamespace(i, attNamespace) then exit(FAttsBase[i].Value); //avoid stack frame
    end;
  end;

  if FAttsExtra.Count = 0 then exit('');
  GetAttExtra(attNamespace, attName, Result); //avoid stack frame.
end;

function TXmlReader.CheckNamespace(const i: integer; const attNamespace: string): boolean;
begin
  Result := attNamespace = FindAttNamespace(FAttsBase[i].Prefix);
end;

procedure TXmlReader.GetAttExtra(const attNamespace, attName: string; var Result: string);
var
  Res: TXmlAtt;
begin
    if not FAttsExtra.TryGetValue(attNamespace + ':' + attName, Res) then begin; Result := ''; exit; end;
    Result := Res.Value;
end;

function TXmlReader.GetAttributes: TXmlAttArray;
var
  att: TXmlAtt;
  i: integer;
begin
  SetLength(Result, FAttsBaseLen + FAttsExtra.Count);

  for i := 0 to FAttsBaseLen - 1 do Result[i] := FAttsBase[i];


  if FAttsExtra.Count = 0 then exit;

  i := FAttsBaseLen;
  for att in FAttsExtra.Values do
  begin
    Result[i] := att;
    inc(i);
  end;

end;

function TXmlReader.ReadElementContentAsInt: integer;
begin
  Result := StrToInt(Trim(ReadElementContentAsString));
end;

function TXmlReader.ReadElementContentAsLong: int64;
begin
  Result := StrToInt64(Trim(ReadElementContentAsString));
end;

function TXmlReader.ReadElementContentAsString: string;
begin
  if IsEmptyElement then begin; Read; exit(''); end;

  if not TryReadElementContentAsString(Result) then RaiseInvalidXMLFile;
  Read;
end;

function TXmlReader.TryReadElementContentAsString(out Value: string): boolean;
var
  c, c1: char;
  StillInBuff: integer;
  Buff: PCharArrayND;
  LocalTagPos: integer;
  StartBuffPos: integer;
begin
  Result := true;
  Value := '';
  c := ' ';

  LocalTagPos := 0;
  PositionAtCurrentPos(StartBuffPos, Buff, StillInBuff);
  repeat
    CheckCharsInBuffer(Buff, StillInBuff, Value, StartBuffPos, LocalTagPos);

    c1 := c;
    c := Buff[FReader.BuffPos];
    if (c1 = '<') then
    begin //no children allowed
      if c = '/' then begin; FReader.Backup(c1); break; end
      else if c = '?' then begin; FReader.NextChar; SkipProcessing; PositionAtCurrentPos(StartBuffPos, Buff, StillInBuff); LocalTagPos := Length(Value); continue; end
      else if c = '!' then begin; FReader.NextChar; ReadCommentOrCData(Value); PositionAtCurrentPos(StartBuffPos, Buff, StillInBuff); LocalTagPos := Length(Value);continue; end

      else begin; FReader.Backup(c1); Value := ''; exit(false); end;
    end;

    if c = '&' then
    begin
      EscapeAnd(c, LocalTagPos, Value, StartBuffPos, StillInBuff, Buff);
      continue;
    end;

    //normalize line feeds: http://www.w3.org/TR/xml11/#sec-line-ends
    if c1 = #13 then
    if c = #10 then
    begin
      if (Length(Value) = LocalTagPos) then
      begin
        if (Length(Value) > 0) then SetLength(Value, Length(Value) - 1); //should be very rare, if CheckCharsInBuffer added the '#13' from the start
      end;
      CopyTagToString(LocalTagPos - 1, Value, StartBuffPos, Buff);
      FReader.NextChar;
      if FReader.Eof then exit(false);

      PositionAtCurrentPos(StartBuffPos, Buff, StillInBuff);
      Value := Value + #10;
      LocalTagPos := Length(Value);
      continue;
    end else
    if (FReader.BuffPos >= 1) and (Buff[FReader.BuffPos - 1] = #13) then Buff[FReader.BuffPos - 1] := #10;

    if (c1 = '_') and (c = 'x') then
    begin
      Escape_x(c, c1, LocalTagPos, Value, StartBuffPos, StillInBuff, Buff);
      continue;
    end;


    Inc(LocalTagPos);
    Inc(FReader.BuffPos); //FReader.MoveNext;
    Dec(StillInBuff);

  until false;
  if (Length(Value) = LocalTagPos) then
  begin
    if (Length(Value) > 0) then SetLength(Value, Length(Value) - 1); //should be very rare, if CheckCharsInBuffer added the '/'
  end
  else CopyTagToString(LocalTagPos - 1, Value, StartBuffPos, Buff);

  Read;
end;

procedure TXmlReader.EscapeAnd(var c: char; var LocalTagPos: integer; var Value: string; var StartBuffPos, StillInBuff: integer; var Buff: PCharArrayND);
begin
  CopyTagToString(LocalTagPos, Value, StartBuffPos, Buff);
  FReader.NextChar;
  Value := Value + Unquote(c);
  PositionAtCurrentPos(StartBuffPos, Buff, StillInBuff);

  LocalTagPos := Length(Value);
end;

procedure TXmlReader.Escape_x(var c, c1: char; var LocalTagPos: integer; var Value: string; var StartBuffPos, StillInBuff: integer; var Buff: PCharArrayND);
begin
  if (Length(Value) = LocalTagPos) then
  begin
    if (Length(Value) > 0) then SetLength(Value, Length(Value) - 1); //should be very rare, if CheckCharsInBuffer added the '_' from the start of _x
  end;

  CopyTagToString(LocalTagPos - 1, Value, StartBuffPos, Buff);
  Value := Value + TryUnescape;
  PositionAtCurrentPos(StartBuffPos, Buff, StillInBuff);

  LocalTagPos := Length(Value);
end;

function TXmlReader.ReadUntilCloseTag: string;
var
  tmp: string;
  UsedPrefixes: HashSet<string>;
begin
  UsedPrefixes := HashSet<string>.Create;
  try
    Result := ReadUntilCloseTag(true, tmp, UsedPrefixes);
  finally
    FreeObj(UsedPrefixes);
  end;
end;

procedure TXmlReader.Skip;
var
  tmp: string;
begin
  ReadUntilCloseTag(false, tmp, nil);
  Read;
end;

function TXmlReader.ReadUntilCloseTag(const ReturnString: boolean; out AddedPrefixes: string; const UsedPrefixes: HashSet<string>): string;
var
  c: char;
  Tag0, Tag1 : string;
  startTag, currentTag: string;
  TagLevel: integer;
  ix: integer;
  prefix, nmForPrefix: string; //FI:W517
begin
  AddedPrefixes := '';
  if IsEmptyElement then exit('');

  TagLevel := 1;
  startTag := '</' + FTagName + '>';
  currentTag := '<' + FTagName;
  Tag0 := ''; Tag1:= '';
  Result := '';

  repeat
    c := FReader.NextChar;
    if c = '<' then
    begin
      if (ReturnString) then Result := Result + Tag0;
      Tag0 := c;
      Tag1 := c;
      continue;
    end;

    if ReturnString and (c = ':') then
    begin
      ix := Length(Tag0) - 1;
      while (ix > 1) and (not IsWhitespace(Tag0[ix])) do dec(ix);

      prefix := copy(Tag0, ix + 1, Length(Tag0) - 1);
      if (Length(prefix) > 0) then
      begin
        if FNamespaceStack.TryGetValue(prefix, nmForPrefix) then
        begin
          if not UsedPrefixes.Contains(prefix) then
          begin
            UsedPrefixes.Add(prefix);
            AddedPrefixes:= AddedPrefixes + ' xmlns:' + prefix +'="' + nmForPrefix + '"';
          end;


        end;
      end;
    end;

    if (ReturnString) then Tag0 := Tag0 + c;

    if (Length(Tag1) < Length(startTag) - 1) then
    begin
      Tag1 := Tag1 + c;
    end
    else
    if (Length(Tag1) < Length(startTag)) and not IsWhitespace(c) then
    begin
      Tag1 := Tag1 + c;
    end;

    if (c = '/') and (FReader.PeekChar = '>') and (Trim(Tag1)='/') then
    begin
      Dec(TagLevel); Tag1 := '';
    end

    else if Tag1 = startTag then begin; Dec(TagLevel); Tag1 := ''; end
    else if (Tag1 = currentTag) and IsWhiteSpaceOrEndTag(FReader.PeekChar)
    then begin;Inc(TagLevel); Tag1 := ''; end;


  until TagLevel <= 0;
  FEndTag := true;
  FAttsBaseLen := 0;
  if (FAttsExtra.Count > 0) then FAttsExtra.Clear;
end;

function TXmlReader.ReadUntilCloseTagWithRelatedParts(const ReturnString: boolean; const Related: TFList<string>; const aNmRel: string; const aTagId: string; const RelGuid: string): string;
var
  c: char;
  Tag0 : string;
  startTag, currentTag: string;
  TagLevel: integer;
  prefix, nmForPrefix, fullPrefix: string; //FI:W517
  attValue, attName: string;
  ReadingTagName, FirstTag, ClosingTag, InsideTag: boolean;
begin
  if IsEmptyElement then exit('');
  ReadingTagName := false;
  TagLevel := 1;
  FirstTag := true;
  startTag := '</>';
  currentTag := '<';
  Tag0 := '';
  Result := '';
  InsideTag := false;
  ClosingTag := false;
  repeat
    c := FReader.PeekChar;
    if (c = '<') and not InsideTag then
    begin
      InsideTag := true;
      if (ReturnString) then Result := Result + Tag0;
      Tag0 := c;
      FReader.MoveNext;
      if (FReader.PeekChar = '/') then ClosingTag := true else
      begin
        if not FirstTag then Inc(TagLevel);
      end;
      ReadingTagName := true;

      continue;
    end;

    if (IsWhitespace(c)) then
    begin
      FReader.MoveNext;
      if ReadingTagName then
      begin
        if (ReturnString) then Result := Result + Tag0;
        if (FirstTag) then
        begin
          startTag := '</' + System.Copy(Tag0, 2, Length(Tag0)) + '>';
          currentTag := Tag0;
          FirstTag := false;
        end;

        Tag0 := c;
        ReadingTagName := false;
        continue;
      end;
    end
    else
    begin
      if ReturnString and (not ReadingTagName) and InsideTag and (c <> '>') and (c <> '/') then
      begin
        attValue := ReadAttValue(attName, prefix);
        c := '"';
        if prefix = '' then fullPrefix := '' else fullPrefix := prefix + ':';
        if (Length(prefix) > 0) then
        begin
          if FNamespaceStack.TryGetValue(prefix, nmForPrefix) then
          if (nmForPrefix = aNmRel) and (attName = aTagId) then
          begin
            Related.Add(attValue);
            attValue := RelGuid + IntTostr(Related.Count);
          end;
        end;
        Tag0 := Tag0 + fullPrefix + attName + '="' + attValue;
      end
      else FReader.MoveNext;
    end;

    if (ReturnString) then Tag0 := Tag0 + c;

    if (FReader.PeekChar = '>') and InsideTag then
    begin
      InsideTag := false;
      FirstTag := false;
      if (c = '/') or ClosingTag then
      begin
        Dec(TagLevel);
        Result := Result + Tag0 + '>';
        FReader.MoveNext;
        Tag0 := '';
        ClosingTag := false;
      end;
    end;


  until (TagLevel <= 0);
  FEndTag := true;
  FAttsBaseLen := 0;
  if (FAttsExtra.Count > 0) then FAttsExtra.Clear;
end;

function TXmlReader.ReadAttValue(out attName, attPrefix:string): string;
var
  AttNameDummy, LocalAttName, RawAttNamespace: string;
  AttValue: string;
  HasMore: boolean;
  StartQuote, c: char;

  Buff: PCharArrayND;
  LocalTagPos, StillInBuff: integer;
  StartBuffPos: integer;

begin
    SkipWhitespace;

    ReadName(AttNameDummy, LocalAttName, RawAttNamespace, HasMore, false);
    SkipWhitespace;
    if FReader.NextChar <> '=' then RaiseInvalidXMLFile;
    SkipWhitespace;
    StartQuote := FReader.NextChar;
    if (StartQuote <> '''') and (StartQuote <> '"') then RaiseInvalidXMLFile;


    AttValue := '';
    PositionAtCurrentPos(StartBuffPos, Buff, StillInBuff); LocalTagPos := 0;
    repeat
      CheckCharsInBuffer(Buff, StillInBuff, AttValue, StartBuffPos, LocalTagPos);
      c := Buff[FReader.BuffPos];
      if (c = StartQuote) then begin; FReader.MoveNext; break; end;

      Inc(LocalTagPos);
      Inc(FReader.BuffPos); //FReader.MoveNext;
      Dec(StillInBuff);
    until false;
    CopyTagToString(LocalTagPos, AttValue, StartBuffPos, Buff);

    if RawAttNamespace = 'xmlns' then FNamespaceStack.Add(LocalAttName, AttValue)
    else if LocalAttName = 'xmlns' then FNamespaceStack.Add('', AttValue);

    attName := LocalAttName;
    attPrefix := RawAttNamespace;
    exit(AttValue);

end;


function TXmlReader.SameTag(const Tag0, destTag, nm: string): boolean;
var
  p: integer;
 // prf: string;
begin
  p := pos(':', Tag0);
  if (p <= 1) then
  begin
     if (p < 1) then p := 0;
     if nm <> '' then exit (false);
  end
  else
  begin
    //We can't check the namespace, since this is a fragment, and the namespace table is probably already generated.
    //To do this right, we should pass the original XmlReader namespaces.
   // prf := System.Copy(Tag0, 2, p - 2);
   // if (FindNamespace(prf) <> nm) then exit(false);
  end;

  Result := System.Copy(Tag0, p + 1, Length(Tag0)) = destTag;

end;

function TXmlReader.ReadUntilTag(const destTag, nm: string): string;
var
  c: char;
  Tag0: string;
begin
  Tag0 := '';
  Result := '';

  repeat
    c := FReader.NextChar;
    if c = '<' then
    begin
      Result := Result + Tag0;
      Tag0 := c;
      continue;
    end;

    Tag0 := Tag0 + c;

  until Eof or SameTag(Tag0, destTag, nm);
  if not SameTag(Tag0, destTag, nm) then Result := Result + Tag0;

  FEndTag := true;
  FAttsBaseLen := 0;
  if (FAttsExtra.Count > 0) then FAttsExtra.Clear;
end;

procedure ProcessAtt(const att: TXmlAtt; const UsedPrefixes: HashSet<string>;
           const NamespaceStack: TNamespaceStack; var Part1, Part2: string);
var
  s1, s2, nmForPrefix: string;
  pws, lww: boolean;
  start: integer;
begin
  if (att.Prefix = '') then s1 := att.Name else
  begin
    s1 := att.Prefix + ':' + att.Name;
  end;

  if (att.Prefix) <> '' then
  begin
    if NamespaceStack.TryGetValue(att.Prefix, nmForPrefix) then
    begin
      if not UsedPrefixes.Contains(att.Prefix) then
      begin
        UsedPrefixes.Add(att.Prefix);
        Part1 := Part1 + ' xmlns:' + att.Prefix + '="' + nmForPrefix + '"';
      end;
    end;
  end;

  s2 := att.Value;
  if(TXmlWriter.NeedsEscape(s2, pws, lww, start, false, true)) then TXmlWriter.DoEscape(s2, start, pws, lww, true, true);
  Part2 := Part2 + ' ' + s1 + ' = ' + '"' + s2 + '"';

end;

procedure TXmlReader.GetFullStartTag(out part1, part2: string; const UsedPrefixes: HashSet<string>);
var
  nmForPrefix: string;
  i: integer;
  att: TXmlAtt;
begin
  Part1 := '<' + FTagName;
  Part2 := '';
  Part1 := Part1 + FNamespaceStack.GetPrefixes(UsedPrefixes);
  for i := 0 to FAttsBaseLen - 1 do
  begin
    ProcessAtt(FAttsBase[i], UsedPrefixes, FNamespaceStack, Part1, Part2);
  end;

  if (FAttsExtra.Count > 0) then
  begin
    for att in FAttsExtra.Values do
    begin
      ProcessAtt(att, UsedPrefixes, FNamespaceStack, Part1, Part2);
    end;
  end;

  if (FRawNamespace <> '') then
  begin
    if FNamespaceStack.TryGetValue(FRawNamespace, nmForPrefix) then
    begin
      if not UsedPrefixes.Contains(FRawNamespace) then
      begin
        UsedPrefixes.Add(FRawNamespace);
        Part1 := Part1 + ' xmlns:' + FRawNamespace + '="' + nmForPrefix + '"';
      end;
    end;
  end;

  if IsEmptyElement then Part2 := Part2 + ' /';


  Part2 := Part2 + '>'
end;

function TXmlReader.GetLocalNameChar: char;
begin
  if Length(FLocalName) <> 1 then exit (#0);
  exit(FLocalName[1]);
end;

function TXmlReader.ReadOuterXml: string;
var
  part1, part2, part3, text: string;
  UsedPrefixes: HashSet<string>;

begin
  UsedPrefixes := HashSet<string>.Create;
  try
    GetFullStartTag(part1, part2, UsedPrefixes);

    if IsEmptyElement then
    begin
      Result := part1 + part2;
    end
    else begin
      text := ReadUntilCloseTag(true, part3, UsedPrefixes);
      Result := part1 + part3 + part2 + text  + '</' + FTagName + '>';
    end;
    Read;
  finally
    FreeObj(UsedPrefixes);
  end;
end;

procedure TXmlReader.ReadStartElement(const element: string);
begin
  if FTagName <> element then RaiseInvalidXMLFile;

  Read;
end;

{$endregion}

{ TXmlStreamReader }
function TXmlStreamReader.CharsInBuffer: integer;
begin
  Result := BuffLen - BuffPos;
  if Result <= 0 then
  begin
    FillBuffer;
    Result := BuffLen - BuffPos;
  end;
end;

constructor TXmlStreamReader.Create(const aStream: TStream);
begin
  FStream := aStream;
  SetLength(StreamBuff, StreamBuffSize);
  DetectXMLEncoding;
  OwnsEncoding := true;
  BuffAllocSize := FEncoding.GetMaxByteCount(StreamBuffSize) + 1;
  GetMem(Buffer, BuffAllocSize * SizeOf(Char));
end;

constructor TXmlStreamReader.CreateNoXML(const aStream: TStream; const aEncoding: TEncoding; const DetectBOM: boolean);
begin
  FStream := aStream;
  SetLength(StreamBuff, StreamBuffSize);
  HandleEncoding(aEncoding, DetectBOM);
  BuffAllocSize := FEncoding.GetMaxByteCount(StreamBuffSize) + 1;
  GetMem(Buffer, BuffAllocSize * SizeOf(Char));
end;

destructor TXmlStreamReader.Destroy;
begin
  FreeMem(Buffer);
  if OwnsEncoding then FreeAndNil(FEncoding);
  inherited;
end;

procedure TXmlStreamReader.SkipBom(const aEncoding: TEncoding; const DetectBom: boolean; out CodePage: integer);
var
  b: array[0..1] of byte;
  c: array[0..0] of byte;
begin
  CodePage := aEncoding.CodePage;
  if FStream.Position + Length(b) >= FStream.Size then exit; //bom is 2 bytes in utf16 and 3 in utf8. less than 2 is not a bom.
  FStream.Read(b[0], Length(b));
  if (b[0] = $FF) and (b[1] = $FE) and (DetectBom or (aEncoding.CodePage = 1200)) then
  begin
    CodePage := 1200;
    exit;
  end;

  if (b[0] = $FE) and (b[1] = $FF) and (DetectBom or (aEncoding.CodePage = 1201)) then
  begin
    CodePage := 1201;
    exit;
  end;

  if (b[0] = $EF) and (b[1] = $BB) and (FStream.Position + Length(c) < FStream.Size)
  and (DetectBom or (aEncoding.CodePage = 65001)) then
  begin
    FStream.Read(c[0], Length(c));
    if (c[0] <> $BF) then
    begin
      AddToBuffer(b);
      AddToBuffer(c);
      exit;
    end;

    CodePage := 65001;
    exit;
  end;

  AddToBuffer(b);

end;

procedure TXmlStreamReader.HandleEncoding(const aEncoding: TEncoding; const DetectBom: boolean);
var
  CodePage: integer;
begin
  SkipBom(aEncoding, DetectBom, CodePage);

  OwnsEncoding := true;
  case CodePage of
    65001:
      begin
      FEncoding := TEncoding_UTF8.Create;
      EncodingType := TXMLEncodingType.UTF8;
      end;
    1200:
      begin
      FEncoding := TEncoding_Unicode.Create;
      EncodingType := TXMLEncodingType.UTF16;
      end;
    1201:
      begin
      FEncoding := TEncoding_BigEndianUnicode.Create;
      EncodingType := TXMLEncodingType.BigEndianUTF16;
      end;
    else
      begin
      FEncoding := aEncoding;
      OwnsEncoding := false;
      EncodingType := TXMLEncodingType.ExternalEncoding;
      end;
  end;

end;

procedure TXmlStreamReader.DetectXMLEncoding;
var
  b: array[0..1] of byte;
begin
  EncodingType := TXMLEncodingType.UTF8;

  if FStream.Size = FStream.Position then
  begin
    FEncoding := TEncoding_UTF8.Create;
    exit;
  end;

  if FStream.Position + Length(b) >= FStream.Size then RaiseInvalidXMLFile;
  FStream.Read(b[0], Length(b));
  {From Open Packaging specification:
    XML content shall be encoded using either UTF-8 or UTF-16. If any part includes an encoding
    declaration, as defined in $4.3.3 of the XML 1.0 specification, that declaration shall not name any
    encoding other than UTF-8 or UTF-16. Package implementers shall enforce this requirement upon
    creation and retrieval of the XML content. [M1.17]
  }

  { From http://www.w3.org/TR/REC-xml/#sec-guessing

  With a Byte Order Mark:

    00 00 FE FF	UCS-4, big-endian machine (1234 order)
    FF FE 00 00	UCS-4, little-endian machine (4321 order)
    00 00 FF FE	UCS-4, unusual octet order (2143)
    FE FF 00 00	UCS-4, unusual octet order (3412)
    *FE FF ## ##	UTF-16, big-endian
    *FF FE ## ##	UTF-16, little-endian
    *EF BB BF	UTF-8

    Without a Byte Order Mark:
    00 00 00 3C	UCS-4 or other encoding with a 32-bit code unit and ASCII characters encoded as ASCII values, in respectively big-endian (1234), little-endian (4321) and two unusual byte orders (2143 and 3412). The encoding declaration must be read to determine which of UCS-4 or other supported 32-bit encodings applies.
    3C 00 00 00
    00 00 3C 00
    00 3C 00 00
    *00 3C 00 3F	UTF-16BE or big-endian ISO-10646-UCS-2 or other encoding with a 16-bit code unit in big-endian order and ASCII characters encoded as ASCII values (the encoding declaration must be read to determine which)
    *3C 00 3F 00	UTF-16LE or little-endian ISO-10646-UCS-2 or other encoding with a 16-bit code unit in little-endian order and ASCII characters encoded as ASCII values (the encoding declaration must be read to determine which)
    *3C 3F 78 6D	UTF-8, ISO 646, ASCII, some part of ISO 8859, Shift-JIS, EUC, or any other 7-bit, 8-bit, or mixed-width encoding which ensures that the characters of ASCII have their normal positions, width, and values; the actual encoding declaration must be read to detect which of these applies, but since all of these encodings use the same bit patterns for the relevant ASCII characters, the encoding declaration itself may be read reliably
    4C 6F A7 94	EBCDIC (in some flavor; the full encoding declaration must be read to tell which code page is in use)
    Other	UTF-8 without an encoding declaration, or else the data stream is mislabeled (lacking a required encoding declaration), corrupt, fragmentary, or enclosed in a wrapper of some kind
  }

  case b[0] of
    $FE: begin; FEncoding := TEncoding_BigEndianUnicode.Create; EncodingType := TXMLEncodingType.BigEndianUTF16; end;
    $FF: begin; FEncoding := TEncoding_Unicode.Create; EncodingType := TXMLEncodingType.UTF16; end;
    $EF: begin; FEncoding := TEncoding_UTF8.Create; FStream.Seek(1, TSeekOrigin.soCurrent); end;  //BOM is 3 chars in UTF-8

    //No BOM
    $00:
    begin;
      FEncoding := TEncoding_BigEndianUnicode.Create;
      EncodingType := TXMLEncodingType.BigEndianUTF16;
      AddToBuffer(b);
    end;
    $3C:
    begin
      if b[1] = 0 then
      begin
        FEncoding := TEncoding_Unicode.Create;
        EncodingType := TXMLEncodingType.UTF16;
      end else FEncoding := TEncoding_UTF8.Create;
      AddToBuffer(b);
    end
    else
    begin
      FEncoding := TEncoding_UTF8.Create;
      AddToBuffer(b);
    end;

  end;

end;

procedure TXmlStreamReader.AddToBuffer(const a: Array of byte);
begin
  if StreamBuffLen + Length(a) >= StreamBuffSize then RaiseInternal;

  System.Move(a[0], StreamBuff[StreamBuffLen], Length(a));
  inc(StreamBuffLen, Length(a));
end;

function TXmlStreamReader.IsContinuation(k: integer): boolean;
begin
 if (k < 0) then exit(false);
 begin
   if (StreamBuff[k] and $C0) = $80 then exit(true) else exit(false);
 end;

end;

function TXmlStreamReader.IsStartOfContinuation(k: integer): boolean;
begin
 if (k < 0) then exit(false);
 begin
   if (StreamBuff[k] and $C0) = $C0 then exit(true) else exit(false);
 end;

end;


procedure TXmlStreamReader.FillBuffer;
var
  SRead, ERead: integer;
  RBuffLen: integer;
  Len, BytesUsed: integer;
begin
  if EofReached then exit;

  Assert(StreamBuffLen < StreamBuffSize);
  SRead := FStream.Read(StreamBuff[StreamBuffLen], StreamBuffSize - StreamBuffLen);
  if (SRead <> StreamBuffSize - StreamBuffLen) then EofReached := true;
  Inc(StreamBuffLen, SRead);
  RBuffLen := StreamBuffLen;
  if ((EncodingType = TXMLEncodingType.UTF8) and not EofReached) then //we don't care about UTF16 surrogates, as we will treat them as different chars. We do have to care about utf8 continuations.
  begin
    while IsContinuation(RBuffLen - 1) do Dec(RBuffLen);
    if (IsStartOfContinuation(RBuffLen -1)) then Dec(RBuffLen);
  end;

  if (RBuffLen < 0) then RaiseInvalidXMLFile;

  if (EncodingType = TXMLEncodingType.ExternalEncoding) then
  begin
    Len := TAWSEncoding.GetCharCountX(FEncoding, @StreamBuff[0], RBuffLen);
    if (Len = 0) and (RBuffLen > 0) then RaiseInvalidEncoding;
    if (Len >= BuffAllocSize - 1) then RaiseInternal; //security check. It should never happen.

    ERead := TAWSEncoding.GetCharsX(FEncoding, @StreamBuff[0], RBuffLen, @Buffer[1], BuffAllocSize - 1);
    BytesUsed := TAWSEncoding.GetByteCountX(FEncoding, @Buffer[1], ERead);
    if RBuffLen <> BytesUsed then
    begin
      RBuffLen := BytesUsed;

    end;
  end
  else
  begin
    if (EncodingType <> TXMLEncodingType.UTF8) then
    begin
      //Delphi implementation in those ignores bytecount (RBuffLen). We need to ensure last parameter is ok, we can't pass BuffAllocSize as we do in UTF8.
      if RBuffLen mod 2 <> 0 then dec(RBuffLen);
      if RBuffLen > (BuffAllocSize - 1) * 2 then RBuffLen := (BuffAllocSize - 1) * 2;

      if EncodingType = TXMLEncodingType.BigEndianUTF16 then ERead := TEncoding_BigEndianUnicode(FEncoding).GetCharsPChar(@StreamBuff[0], RBuffLen, @Buffer[1], RBuffLen div 2)
      else ERead := TEncoding_Unicode(FEncoding).GetCharsPChar(@StreamBuff[0], RBuffLen, @Buffer[1], RBuffLen div 2);
    end
    else ERead := TEncoding_UTF8(FEncoding).GetCharsPChar(@StreamBuff[0], RBuffLen, @Buffer[1], BuffAllocSize - 1);
  end;
  if (RBuffLen < StreamBuffLen) then
  begin
    System.Move(StreamBuff[RBuffLen], StreamBuff[0], StreamBuffLen - RBuffLen);
  end;
  Dec(StreamBuffLen, RBuffLen);
  BuffPos := 1;
  BuffLen := ERead + 1;

end;

function TXmlStreamReader.NextChar: Char;
begin
  if (Eof) then RaiseEofReached;
  Result := Buffer[BuffPos];
  Inc(BuffPos);
end;

function TXmlStreamReader.NextCharNotEOF: Char;
begin
  Result := Buffer[BuffPos];
  Inc(BuffPos);
end;

function TXmlStreamReader.PeekChar: Char;
begin
  if (Eof) then RaiseEofReached;
  Result := Buffer[BuffPos];
end;

function TXmlStreamReader.ReadLine: string;
const
  step = 512;
var
  ch: Char;
  Len: integer;
begin
  Len := 0;
  SetLength(Result, step);
  while (true) do
  begin
    if (Eof) then begin SetLength(Result, Len); exit; end;
    ch := Buffer[BuffPos];
    Inc(BuffPos);

    if ch = #$A then  //there are 3 types of EOL: Win (13 10) Mac (10)  and Ms.Dos(13)
    begin
      SetLength(Result, Len); exit;
    end
    else if ch = #$D then
    begin
      if (Eof) then begin SetLength(Result, Len); exit; end;
      ch := NextCharNotEOF;
      if (Eof) then begin SetLength(Result, Len); exit; end;
      if ch <> #$A then Backup(ch);
      SetLength(Result, Len); exit;
    end;

    if (Len >= Length(Result)) then SetLength(Result, Length(Result) + step);
    Result[Len + 1] := ch;
    Inc(Len);

  end;


end;

procedure TXmlStreamReader.Backup(const c: char);
begin
  Dec(BuffPos);
  if (BuffPos = 0) then Buffer[0] := c;
end;

procedure TXmlStreamReader.MoveNext; //this should be called always after PeekChar, both methods together do a NextChar.
begin
  Inc(BuffPos);
end;

function TXmlStreamReader.NextString(const len: integer): string;
var
  i: integer;
begin
  SetLength(Result, len);
  for i := 1 to len do
  begin
    if (Eof) then RaiseEofReached;
    Result[i] := Buffer[BuffPos];
    Inc(BuffPos);
  end;
end;

function TXmlStreamReader.Eof: boolean;
begin
  if (BuffPos >= BuffLen) then FillBuffer;
  Result := EofReached and (BuffPos >= BuffLen);
end;

{ TEncoding_BigEndianUnicode }

function TEncoding_BigEndianUnicode.GetCharsPChar(Bytes: PByte;
  ByteCount: Integer; Chars: PChar; CharCount: Integer): Integer;
begin
  Result := GetChars(Bytes, ByteCount, Chars, CharCount);
end;

{ TEncoding_Unicode }

function TEncoding_Unicode.GetCharsPChar(Bytes: PByte; ByteCount: Integer;
  Chars: PChar; CharCount: Integer): Integer;
begin
  Result := GetChars(Bytes, ByteCount, Chars, CharCount);
end;

{ TEncoding_UTF8 }

function TEncoding_UTF8.GetCharsPChar(Bytes: PByte; ByteCount: Integer;
  Chars: PChar; CharCount: Integer): Integer;
begin
  Result := GetChars(Bytes, ByteCount, Chars, CharCount);
end;

{ TXmlAtt }

constructor TXmlAtt.Create(const aPrefix, aName, aValue: string);
begin
  Prefix := aPrefix;
  Name := aName;
  Value := aValue;
end;

{ TFlexCelStreamReader }

constructor TFlexCelStreamReader.Create(const stream: TStream;
  const Encoding: TEncoding; const DetectEncodingFromBom: boolean);
begin
   Reader := TXmlStreamReader.CreateNoXML(stream, Encoding, DetectEncodingFromBom);
end;

destructor TFlexCelStreamReader.Destroy;
begin
  Close;
  inherited;
end;

procedure TFlexCelStreamReader.Close;
begin
  Reader.Free;
  inherited;
end;


function TFlexCelStreamReader.Peek: Integer;
begin
  if Reader.Eof then exit(-1);

  Result := Int32(Reader.PeekChar);
end;

function TFlexCelStreamReader.Read: Integer;
begin
  if (Reader.BuffPos >= Reader.BuffLen) then
  begin
  if Reader.Eof then exit(-1);
  end;
  Result := Int32(Reader.NextCharNotEOF);
end;

{$IFDEF NEWSTREAMREAD}
function TFlexCelStreamReader.Read(var Buffer: TCharArray; Index,
  Count: Integer): Integer;
begin
  raise Exception.Create('Method not implemented.');
end;

function TFlexCelStreamReader.ReadBlock(var Buffer: TCharArray; Index,
  Count: Integer): Integer;
begin
  raise Exception.Create('Method not implemented.');
end;
{$ELSE}
function TFlexCelStreamReader.Read(const Buffer: TCharArray; Index,
  Count: Integer): Integer;
begin
  raise Exception.Create('Method not implemented.');
end;

function TFlexCelStreamReader.ReadBlock(const Buffer: TCharArray; Index,
  Count: Integer): Integer;
begin
  raise Exception.Create('Method not implemented.');
end;
{$ENDIF}

function TFlexCelStreamReader.ReadLine: string;
begin
  Result := Reader.ReadLine;
end;

function TFlexCelStreamReader.ReadToEnd: string;
begin
  raise Exception.Create('Method not implemented.');
end;

{$IFDEF DELPHIRIO_LVL}
procedure TFlexCelStreamReader.Rewind;
begin
  raise Exception.Create('Method not implemented.');
end;
{$ENDIF}


end.
