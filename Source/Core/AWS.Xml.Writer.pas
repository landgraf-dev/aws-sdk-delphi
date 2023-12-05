unit AWS.Xml.Writer;
{$INCLUDE AWS.inc}
{$IFDEF DEBUG}
{$INLINE OFF}
{$ELSE}
{$R-} {$Q-}
{$INLINE ON}
{$ENDIF}

interface
uses Classes, SysUtils, Generics.Collections,
{$IFDEF FPC}
{$ENDIF}
  AWS.Xml.Base;

type
{$IFNDEF DELPHIXE4_LVL}
  MarshaledAString = PAnsiChar;
{$ENDIF}

  //The built in stream writer creates a bytearray every time you write an string (!). Can be slow as hell.
  TXmlStreamWriter = class(TTextWriter)
  strict private
  const
    StrBuffMaxInitial = 4096;
  var
    FStream: TStream;
    Buffer: TBytes;
    BuffLen: integer;
    FAutoFlush: Boolean;
    StrBuff: PChar;
    StrBuffLen: integer;
    StrBuffMax: integer;
    CodePage: Cardinal;
    FEncoding: TEncoding;
    OwnsStream: boolean;
  private
    procedure FlushStrBuff;
    procedure FlushBuff; inline;
    procedure HandleBigEndianUnicode();
  public
    constructor Create(aStream: TStream; const aEncoding: TEncoding; aBufferSize: Integer; const AddPreamble: boolean = true);
    destructor Destroy; override;

    procedure Flush; override;
    procedure Close; override;

    property AutoFlush: boolean read FAutoFlush write FAutoFlush;  //not really used, just to keep the same interface as TStreamWriter

    procedure Write(Value: Boolean); overload; override;
    procedure Write(Value: Char); overload; override;
    procedure Write(const Value: TCharArray); overload; override;
    procedure Write(Value: Double); overload; override;
    procedure Write(Value: Integer); overload; override;
    procedure Write(Value: Int64); overload; override;
    procedure Write(Value: TObject); overload; override;
    procedure Write(Value: Single); overload; override;
    procedure Write(const Value: string); overload; override;
    procedure Write(Value: Cardinal); overload; override;
    procedure Write(Value: UInt64); overload; override;
    procedure Write(const Format: string; Args: array of const); overload; override;
    procedure Write(const Value: TCharArray; Index, Count: Integer); overload; override;
    procedure WriteLine; overload; override;
    procedure WriteLine(Value: Boolean); overload; override;
    procedure WriteLine(Value: Char); overload; override;
    procedure WriteLine(const Value: TCharArray); overload; override;
    procedure WriteLine(Value: Double); overload; override;
    procedure WriteLine(Value: Integer); overload; override;
    procedure WriteLine(Value: Int64); overload; override;
    procedure WriteLine(Value: TObject); overload; override;
    procedure WriteLine(Value: Single); overload; override;
    procedure WriteLine(const Value: string); overload; override;
    procedure WriteLine(Value: Cardinal); overload; override;
    procedure WriteLine(Value: UInt64); overload; override;
    procedure WriteLine(const Format: string; Args: array of const); overload; override;
    procedure WriteLine(const Value: TCharArray; Index, Count: Integer); overload; override;

    property Encoding: TEncoding read FEncoding;
    procedure OwnStream;
    function Position: Integer;
  end;

  ///	<summary>
  ///	  This class implements a fast and simple stream writer.
  ///   The built in TStreamWriter is too slow for large operations with files.
  ///  <b>This class only implements writing to a string, and can be used safely wherever FlexCel requests a TTextWriter
  ///  since FlexCel doesn't use any other method.</b>
  ///	</summary>
  TFlexCelStreamWriter = TXmlStreamWriter;

  ///	<summary>
  ///	  Encapsulates a generic writer. This record converts automatically from
  ///  a TStreamWriter or a TFlexCelStreamWriter, so you can use both when
  ///  a FlexCel method requires a TFlexCelWriter.
  ///	</summary>
  ///  <example>
  ///  To use a method that takes a TFlexCelWriter as parameter with a standard Delphi
  ///  TStreamWriter you would use:
  ///  <code region="TFlexCelWriter" source="_DocExamples.DocExamples.pas" lang="delphi" />
  ///  </example>
  TFlexCelWriter = record
  private
    FEncoding: TEncoding;
    FWriter: TTextWriter;
  public
    procedure CloseWriter;
    property Encoding: TEncoding read FEncoding;
    property Writer: TTextWriter read FWriter;
    class function Null: TFlexCelWriter; static;
    procedure Write(const s: string);
    procedure WriteLine(const s: string);
    procedure Flush;
    function Position: Integer;
    procedure OwnStream;

    {$IFNDEF FPC}
    class operator Implicit(const StreamWriter: TStreamWriter): TFlexCelWriter;
    {$ENDIF}
    class operator Implicit(const StreamWriter: TFlexCelStreamWriter): TFlexCelWriter;
  end;

  ///	<summary>
  ///	  This class implements a fast and simple xml writer for xlsx files. <b>This
  ///	  isn't a generic xml writer</b>, it is specifically designed for xlsx files.
  ///	</summary>
  TXmlWriter = class
  strict private
    st: TXmlStreamWriter;
    TagList: TStack<string>;
    TagIsVirgin: boolean;
    FNamespaceStack : TNamespaceStack;
    FEncodeSpecialChars: boolean;
  private
    procedure WriteEscaped(const v: string; var pws, LWW: boolean; //Isolated again.
      const EscapeLineFeed: boolean; const Start: integer);
    procedure WriteNM(const Prefix, Ns: string);
    procedure WriteStartElementSlow(const Prefix, LocalName, Ns: string);

  public
    constructor Create(const aStream: TStream; const AddPreamble: boolean = true; const Encoding: TEncoding = nil);
    destructor Destroy; override;

    procedure WriteStartDocument(const standalone: boolean = true; const encodingName: string = 'utf-8');
    procedure WriteEndDocument;

    procedure WriteStartElement(const LocalName: string); overload;
    procedure WriteStartElement(const LocalName, Ns: string); overload;
    procedure WriteStartElement(const Prefix, LocalName, Ns: string); overload;
    procedure WriteEndElement;

    procedure WriteString(const s: string; const PreserveWhitespace: boolean);
    procedure WriteElementString(const Prefix, LocalName, Ns, Value: string); overload;
    procedure WriteElementString(const LocalName, Ns, Value: string); overload;
    procedure WriteValue(const s: string);

    procedure WriteAttributeString(const LocalName, Value: string); overload; inline;
    procedure WriteAttributeString(const LocalName, Ns, Value: string); overload; inline;
    procedure WriteAttributeString(const Prefix, LocalName, Ns, Value: string); overload;

    procedure WriteProcessingInstruction(const name, text: string);
    procedure WriteRaw(const s: string);
    function LookupPrefix(const nm: string): string;

    class function NeedsEscape(const s: string; out NeedsPreserveWhitespace, LastWasWhitespace: boolean; out start: integer; const FullWhitespaceScan, EscapeLineFeed: boolean): boolean; inline;
    class procedure DoEscape(var s: string; const start: integer;  //isolated from the main escape so we don't introduce an exception frame in the most common case.
      var  NeedsPreserveWhitespace, LastWasWhiteSpace: boolean;
      const EncodeSpecialChars, EscapeLineFeed: boolean);

    property EncodeSpecialChars: boolean read FEncodeSpecialChars write FEncodeSpecialChars;
    procedure Flush;
    function Encoding: TEncoding;
  end;


implementation
resourcestring
  ErrInternal = 'Internal error in xml writer.';
  ErrInvalidString = 'The file contains a string that can''t be encoded in the encoding.';

procedure RaiseErrInvalidString;
begin
  raise Exception.Create(ErrInvalidString);
end;

{ TXmlWriter }

constructor TXmlWriter.Create(const aStream: TStream; const AddPreamble: boolean = true; const Encoding: TEncoding = nil);
var
  EncodingNotNil: TEncoding;
begin
  inherited Create;
  if Encoding = nil then EncodingNotNil := TEncoding.UTF8 else EncodingNotNil := Encoding;

  FEncodeSpecialChars := true;
  st := TXmlStreamWriter.Create(aStream, EncodingNotNil, 4096, AddPreamble);
  st.AutoFlush := false;
  TagList := TStack<string>.Create();
  FNamespaceStack := TNamespaceStack.Create;
end;

destructor TXmlWriter.Destroy;
begin
  FreeAndNil(FNamespaceStack);
  FreeAndNil(TagList);
  FreeAndNil(st);
  inherited;
end;

class function TXmlWriter.NeedsEscape(const s: string; out NeedsPreserveWhitespace, LastWasWhitespace: boolean; out start: integer; const FullWhitespaceScan, EscapeLineFeed: boolean): boolean;
var
  si: char;
  i: integer;
begin
  Result := false;
  NeedsPreserveWhitespace := false;
  LastWasWhitespace := true;
  start := 1;
  if s = '' then exit;

  for i := 1 to Length(s) do
  begin
    si := s[i];

    if (si > #$FFFD) or (si <= #$20) then
    begin
      if ((si = ' ') or (si = #9)) or ((si = #10) and not EscapeLineFeed) {or (si = #13)} then
      begin
        if LastWasWhiteSpace then
          NeedsPreserveWhitespace := true else
          LastWasWhiteSpace := true;

        continue;
      end
      else
      begin
        if not Result then start:= i; if FullWhitespaceScan then Result := true else exit(true);
        LastWasWhiteSpace := false;
        continue;
      end;
    end;

    LastWasWhiteSpace := false;
    if (si <= '_') then //#95... make it bigger if condition grows
    begin // a simple and/or could make it here, but the optimizer breaks.
      if (si = '_') then
      begin
        if ((i + 6) <= Length(s)) and (s[1 + i] = 'x') and (s[i + 6] = '_')
        then begin; if not Result then start:= i; if FullWhitespaceScan then Result := true else exit(true); end;
      end;
      if (byte(si) in [byte('&'), byte('<'), byte('>'), byte('"')] )
      then begin; if not Result then start:= i; if FullWhitespaceScan then Result := true else exit(true); end;
    end;
  end;

  if LastWasWhiteSpace then
    NeedsPreserveWhitespace := true;

end;

class procedure TXmlWriter.DoEscape(var s: string; const start: integer; var  NeedsPreserveWhitespace, LastWasWhiteSpace: boolean; const EncodeSpecialChars, EscapeLineFeed : boolean);
var
  rCopied: Int32;
  HasHexDigits: Boolean;
  Result : string;
  i, k: Int32;
  si: char;
  IsSpace: boolean;

begin
  SetLength(Result, 0);
  rCopied := 1;

  for i := start to Length(s) do
  begin
    si := s[i];
    if (si > #$FFFD) or (si <= #$20) then
    begin
      IsSpace := ((si = ' ') or (si = #9)) or ((si = #10) and not EscapeLineFeed) {or (si = #13)};
      if IsSpace then
      begin
        if LastWasWhiteSpace then
          NeedsPreserveWhitespace := true else
          LastWasWhiteSpace := true;

        continue;
      end;

      LastWasWhiteSpace := false;
    end else
    begin
      LastWasWhiteSpace := false;
      if (EncodeSpecialChars and ((si = '_') and ((i + 6) <= Length(s))) and (s[1 + i] = 'x')) and (s[i + 6] = '_') then
      begin
        HasHexDigits := true;
        for k := i + 2 to i + 6 - 1 do  //this won't be so common as to do a loop unroll.
        begin
          if (s[k] >= '0') and (s[k] <= '9') then
            continue;

          if (s[k] >= 'a') and (s[k] <= 'f') then
            continue;

          if (s[k] >= 'A') and (s[k] <= 'F') then
            continue;

          HasHexDigits := false;
          break;
        end;

        if not HasHexDigits then
          continue;

      end else
      begin
        case (si) of
        '&':
        begin
          Result := Result + System.Copy(s, rCopied, i - rCopied)
          + '&amp;';
          rCopied := i + 1;
          continue;
        end;
        '<':
        begin
          Result := Result + System.Copy(s, rCopied, i - rCopied)
          + '&lt;';
          rCopied := i + 1;
          continue;
        end;
        '>':
        begin
          Result := Result + System.Copy(s, rCopied, i - rCopied)
          + '&gt;';
          rCopied := i + 1;
          continue;
        end;
        '"':
        begin
          Result := Result + System.Copy(s, rCopied, i - rCopied)
          + '&quot;';
          rCopied := i + 1;
          continue;
        end;
        end;

        continue;
      end;
    end;

    case (si) of
      // Those characters are valid xml if escaped, see: https://www.w3.org/TR/xml/#charsets
      // If we escape them as "_x----_" the alt text of images will be wrong.
      // See multienter.xlsx, the alt text of the star. If you change it to _x000a_ it will show as is in the alt.
      //In most other places, Excel writes _x000a_ for the enter, but is happy also with &#xA so we will write
      // &#xA everywhere to be sure there are no problems.
      #$0009:
      begin
        Result := Result + System.Copy(s, rCopied, i - rCopied)
        + '&#x9;';
        rCopied := i + 1;
        continue;
      end;
      #$000A:
      begin
        Result := Result + System.Copy(s, rCopied, i - rCopied)
        + '&#xA;';
        rCopied := i + 1;
        continue;
      end;
      //Char 13 is not converted to &#xd by Excel.

    end;

    if EncodeSpecialChars then
    begin
      Result := Result + System.Copy(s, rCopied, i - rCopied)
                       + '_x'
                       + IntToHex(Int32(si), 4)
                       + '_';
    end else
    begin
      Result := Result + System.Copy(s, rCopied, i - rCopied);
    end;
    rCopied := i + 1;
  end;

  s := Result + System.Copy(s, rCopied, Length(s) - (rCopied - 1));
end;


function TXmlWriter.Encoding: TEncoding;
begin
  Result := st.Encoding;
end;

procedure TXmlWriter.Flush;
begin
  if (st <> nil) then st.Flush;
end;

function TXmlWriter.LookupPrefix(const nm: string): string;
begin
  if not FNamespaceStack.TryGetValue(nm, Result) then exit('');
end;

procedure TXmlWriter.WriteStartDocument(const standalone: boolean = true; const encodingName: string = 'utf-8');
begin
  if (standalone) then st.Write('<?xml version="1.0" encoding="' + encodingName + '" standalone="yes"?>')
  else st.Write('<?xml version="1.0" encoding="' + encodingName + '" standalone="no"?>');
end;

procedure TXmlWriter.WriteElementString(const LocalName, Ns, Value: string);
begin
  WriteStartElement(LocalName, Ns);
  if (value <> '') then WriteString(value, false);
  WriteEndElement;
end;

procedure TXmlWriter.WriteEndDocument;
begin
  if (TagList.Count > 0) then raise Exception.Create(ErrInternal);
end;

procedure TXmlWriter.WriteStartElement(const LocalName: string);
begin
  WriteStartElement('', LocalName, '');
end;

procedure TXmlWriter.WriteStartElement(const LocalName, Ns: string);
begin
  WriteStartElement('', LocalName, Ns);
end;

procedure TXmlWriter.WriteStartElement(const Prefix, LocalName, Ns: string);
begin
  if TagIsVirgin then st.Write('>');

  if (Prefix = '') and (Ns = '') and (FNamespaceStack.EmptyCached) then
  begin
    TagList.Push(LocalName);
    TagIsVirgin := true;
    st.Write('<');
    st.Write(LocalName);
    FNamespaceStack.IncLevel;
    exit;
  end;

  WriteStartElementSlow(Prefix, LocalName, Ns);
end;

procedure TXmlWriter.WriteAttributeString(const LocalName, Value: string);
begin
  WriteAttributeString('', LocalName, '', Value);
end;

procedure TXmlWriter.WriteAttributeString(const LocalName, Ns, Value: string);
begin
  WriteAttributeString('', LocalName, Ns, Value);
end;

procedure TXmlWriter.WriteAttributeString(const Prefix, LocalName, Ns, Value: string);
var
  pws, LWW: boolean;
  Start: integer;
  NMMissing: boolean;
begin
  NMMissing := true;

  if Prefix = 'xmlns' then FNamespaceStack.Add(Value, LocalName)
  else
  begin
    if (Ns <> '') then begin; WriteNM(Prefix, Ns); NMMissing := false; end;
  end;

  if NMMissing then
  begin
    st.Write(' ');
    st.Write(Prefix);
  end;

  if (not NMMissing or (Prefix <>'')) and (LocalName <>'') then st.Write(':');
  st.Write(LocalName);
  st.Write('="');
  if NeedsEscape(Value, pws, LWW, Start, false, true) then WriteEscaped(Value, pws, LWW, true, Start)
  else st.Write(Value);
  st.Write('"');
end;

procedure TXmlWriter.WriteStartElementSlow(const Prefix, LocalName, Ns: string);
var
  FullTag: string;
  newpfx, newpfx2: string;
begin
  newpfx := Prefix;
  if newpfx = '' then if FNamespaceStack.TryGetValue(Ns, newpfx2) then
  begin
    newpfx := newpfx2;
  end;

  if newpfx = '' then FullTag := LocalName else FullTag := newpfx + ':' + LocalName;
  TagList.Push(FullTag);
  TagIsVirgin := true;
  st.Write('<' + FullTag);

  FNamespaceStack.IncLevel;
  if (Ns <> '') and not FNamespaceStack.AlreadyExists(Ns, newpfx) then WriteAttributeString('xmlns', newpfx, Ns, Ns);
end;

procedure TXmlWriter.WriteEndElement;
var
  tag: string;
begin
  tag := TagList.Pop;
  if TagIsVirgin then st.Write(' />') else st.Write('</' + tag + '>');
  TagIsVirgin := false;
  FNamespaceStack.DecLevel;
end;

procedure TXmlWriter.WriteNM(const Prefix, Ns: string);
var
  Pfx: string;
begin
  if not FNamespaceStack.TryGetValue(Ns, Pfx) then
  begin
    Pfx := Prefix;
    WriteAttributeString('xmlns', Pfx, '', Ns);
  end;

  st.Write(' ');
  st.Write(Pfx);
end;

procedure TXmlWriter.WriteProcessingInstruction(const name, text: string);
begin
st.Write('<?' + name + ' ' + text + '?>');
end;

procedure TXmlWriter.WriteEscaped(const v: string; var pws, LWW: boolean; const EscapeLineFeed: boolean; const Start: integer);
var
  v1: string;
begin
  v1 := v;
  DoEscape(v1, start, pws, LWW, EncodeSpecialChars, EscapeLineFeed);
  st.Write(v1);
end;

procedure TXmlWriter.WriteString(const s: string;
  const PreserveWhitespace: boolean);
var
  pws, LWW: boolean;
  Start: integer;
  Escaped: boolean;
begin
  Escaped := NeedsEscape(s, pws, LWW, Start, true, false); //here we are not calling DoEscape immediately (because it would introduce a string variable and slow down). So we need to do a full whitespace scan.
  if (PreserveWhitespace and pws) then WriteAttributeString('xml', 'space', '', 'preserve');
  if  Length(s) = 0 then exit;

  st.Write('>');
  TagIsVirgin := false;
  if Escaped then WriteEscaped(s, pws, LWW, false, Start)
  else st.Write(s);
end;

procedure TXmlWriter.WriteValue(const s: string);
begin
  WriteString(s, false);
end;

procedure TXmlWriter.WriteElementString(const Prefix, LocalName, Ns, Value: string);
begin
  WriteStartElement(Prefix, LocalName, Ns);
  if (value <> '') then WriteString(value, false);
  WriteEndElement;
end;


procedure TXmlWriter.WriteRaw(const s: string);
begin
  if (TagIsVirgin) then
  begin
    st.Write('>');
    TagIsVirgin := false;
  end;

  st.Write(s);
end;

{ TXmlStreamWriter }

procedure TXmlStreamWriter.Close;
begin
  Flush;
end;

constructor TXmlStreamWriter.Create(aStream: TStream; const aEncoding: TEncoding;
  aBufferSize: Integer; const AddPreamble: boolean = true);
var
  Preamble: TBytes;
begin
  FStream := aStream;
  SetLength(Buffer, aBufferSize);

  if AddPreamble and (aStream.Position = 0) then
  begin
    Preamble := aEncoding.GetPreamble;
    if (Length(Preamble) > 0) then System.Move(Preamble[0], Buffer[0], Length(Preamble));
    BuffLen := Length(Preamble);
  end;

  StrBuffMax := StrBuffMaxInitial;
  GetMem(StrBuff, StrBuffMax * SizeOf(Char));
  CodePage := aEncoding.CodePage;
  FEncoding := aEncoding;
end;

destructor TXmlStreamWriter.Destroy;
begin
  try
  try
    Flush;
  finally
    FreeMem(StrBuff);
  end;

  finally
    if (OwnsStream) then FStream.Free;
  end;

  inherited;
end;

procedure TXmlStreamWriter.FlushBuff;
begin
  if (BuffLen > 0) then FStream.Write(Buffer[0], BuffLen);
  BuffLen := 0;
end;

procedure TXmlStreamWriter.Flush;
begin
  FlushStrBuff;
  FlushBuff;
end;

procedure TXmlStreamWriter.Write(const Value: string);
var
  LV: integer;
begin
  LV := Length(Value);
  if (LV = 0) then exit;

  if StrBuffLen + LV > StrBuffMax then FlushStrBuff;
  if LV > StrBuffMax then
  begin
    StrBuffMax := LV + 1024;
    ReallocMem(StrBuff, StrBuffMax * SizeOf(Char));
  end;

  System.Move(Value[1], StrBuff[StrBuffLen], LV * SizeOf(Char));
  Inc(StrBuffLen, LV);
end;

procedure TXmlStreamWriter.HandleBigEndianUnicode();
var
  i, x, z, Written: integer;
begin
  while StrBuffLen > 0 do
  begin
    if StrBuffLen * SizeOf(Char) > Length(Buffer) - BuffLen then Written := Length(Buffer) - BuffLen else Written := StrBuffLen * SizeOf(Char);
    x := 0;
    z := 0;
    for i := 0 to Pred(Written) do
    begin
      Buffer[BuffLen + x] := Hi(Word(StrBuff[z]));
      Inc(x);
      Buffer[BuffLen + x] := Lo(Word(StrBuff[z]));
      Inc(x);
      Inc(z);
    end;
    Dec(StrBuffLen, Written div SizeOf(Char));
    Inc(BuffLen, Written);
    if BuffLen * 3 > Length(Buffer) - BuffLen then FlushBuff;

  end;

end;

procedure TXmlStreamWriter.FlushStrBuff;
var
  Written, k: integer;

begin
  if BuffLen * 3 > Length(Buffer) - BuffLen then FlushBuff;

  if (CodePage = 1200) then //unicode, no conversion needed
  begin
    k := 0;
    while StrBuffLen > 0 do
    begin
      if StrBuffLen * SizeOf(Char) > Length(Buffer) - BuffLen then Written := Length(Buffer) - BuffLen else Written := StrBuffLen * SizeOf(Char);
      System.Move(StrBuff[k], Buffer[BuffLen], Written);
      Dec(StrBuffLen, Written div SizeOf(Char));
      Inc(BuffLen, Written);
      inc(k, Written div SizeOf(Char));
      if BuffLen * 3 > Length(Buffer) - BuffLen then FlushBuff;

    end;
    exit;
  end;

  if (CodePage = 1201) then //big endian unicode, LocaleCharsFromUnicode won't work.
  begin
      HandleBigEndianUnicode();
  exit;

  end;


  //FEncoding does too many extra calls. We will call the conversion directly. Written := FEncoding.GetBytes(Value, 1, Length(Value), Buffer, BuffPos);

  //http://msdn.microsoft.com/en-us/library/dd374130(VS.85).aspx  StrBuffLen must not be 0.
  if (StrBuffLen = 0) then Written := 0
{$IFDEF FPC}
  else Written := FEncoding.GetBytesX(
    StrBuff, StrBuffLen , @Buffer[BuffLen], Length(Buffer) - BuffLen);
{$ELSE}
  else Written := LocaleCharsFromUnicode(CodePage, 0,
    StrBuff, StrBuffLen , MarshaledAString(@Buffer[BuffLen]), Length(Buffer) - BuffLen, nil, nil);
{$ENDIF}

  if (Written > 0) then
  begin
    Inc(BuffLen, Written);
    StrBuffLen := 0;
    exit;
  end;

  //This part should happen rarely.
  FlushBuff;
  if StrBuffLen = 0 then exit;

{$IFDEF FPC}
  Written := FEncoding.GetByteCountX(StrBuff, StrBuffLen);
{$ELSE}
  Written := LocaleCharsFromUnicode(CodePage, 0,
    StrBuff, StrBuffLen, nil, 0, nil, nil);
{$ENDIF}

  if (Written > Length(Buffer)) then
  begin
    SetLength(Buffer, Written + 1024);
  end;

{$IFDEF FPC}
  Written := FEncoding.GetBytesX(
    StrBuff, StrBuffLen , @Buffer[BuffLen], Length(Buffer) - BuffLen);
{$ELSE}
  Written := LocaleCharsFromUnicode(CodePage, 0,
    StrBuff, StrBuffLen, MarshaledAString(@Buffer[BuffLen]), Length(Buffer) - BuffLen, nil, nil);
{$ENDIF}

  if (Written = 0) then RaiseErrInvalidString;

  Inc(BuffLen, Written);
  StrBuffLen := 0;

end;

procedure TXmlStreamWriter.OwnStream;
begin
  OwnsStream := true;
end;

function TXmlStreamWriter.Position: Integer;
begin
  Result := FStream.Position;
end;

procedure TXmlStreamWriter.Write(Value: Double);
begin
  //depends in the locale
  raise Exception.Create('Not implemented.');
end;

procedure TXmlStreamWriter.Write(Value: Integer);
begin
  Write(IntToStr(value));
end;

procedure TXmlStreamWriter.Write(Value: Int64);
begin
  Write(IntToStr(Value));
end;

procedure TXmlStreamWriter.Write(Value: Boolean);
begin
  Write(BoolToStr(Value));
end;

procedure TXmlStreamWriter.Write(Value: Char);
const
  LV = 1;
begin
  if StrBuffLen + LV > StrBuffMax then FlushStrBuff;
  if LV > StrBuffMax then
  begin
    StrBuffMax := LV + 1024;
    ReallocMem(StrBuff, StrBuffMax * SizeOf(Char));
  end;

  System.Move(Value, StrBuff[StrBuffLen], SizeOf(Char));
  Inc(StrBuffLen, LV);
end;

procedure TXmlStreamWriter.Write(const Value: TCharArray);
begin
  raise Exception.Create('Not implemented.');
end;

procedure TXmlStreamWriter.Write(Value: UInt64);
begin
  Write(UIntToStr(Value));
end;

procedure TXmlStreamWriter.Write(const Format: string; Args: array of const);
begin
  raise Exception.Create('Not implemented.');
end;

procedure TXmlStreamWriter.Write(const Value: TCharArray; Index,
  Count: Integer);
begin
  raise Exception.Create('Not implemented.');
end;

procedure TXmlStreamWriter.Write(Value: TObject);
begin
  raise Exception.Create('Not implemented.');
end;

procedure TXmlStreamWriter.Write(Value: Single);
begin
  raise Exception.Create('Not implemented.');
end;

procedure TXmlStreamWriter.Write(Value: Cardinal);
begin
  Write(UIntToStr(Value));
end;

procedure TXmlStreamWriter.WriteLine(Value: Double);
begin
  raise Exception.Create('Not implemented.');
end;

procedure TXmlStreamWriter.WriteLine(Value: Integer);
begin
  WriteLine(IntToStr(Value));
end;

procedure TXmlStreamWriter.WriteLine(Value: Int64);
begin
  WriteLine(IntToStr(Value));
end;

procedure TXmlStreamWriter.WriteLine(const Value: TCharArray);
begin
  raise Exception.Create('Not implemented.');
end;

procedure TXmlStreamWriter.WriteLine;
begin
  Write(sLineBreak);
end;

procedure TXmlStreamWriter.WriteLine(Value: Boolean);
begin
  WriteLine(BoolToStr(Value));
end;

procedure TXmlStreamWriter.WriteLine(Value: Char);
begin
  WriteLine(string(Value));
end;

procedure TXmlStreamWriter.WriteLine(Value: UInt64);
begin
  WriteLine(UIntToStr(Value));
end;

procedure TXmlStreamWriter.WriteLine(const Format: string;
  Args: array of const);
begin
  raise Exception.Create('Not implemented.');
end;

procedure TXmlStreamWriter.WriteLine(const Value: TCharArray; Index,
  Count: Integer);
begin
  raise Exception.Create('Not implemented.');
end;

procedure TXmlStreamWriter.WriteLine(Value: Cardinal);
begin
  WriteLine(UIntToStr(Value));
end;

procedure TXmlStreamWriter.WriteLine(Value: TObject);
begin
  raise Exception.Create('Not implemented.');
end;

procedure TXmlStreamWriter.WriteLine(Value: Single);
begin
  raise Exception.Create('Not implemented.');
end;

procedure TXmlStreamWriter.WriteLine(const Value: string);
begin
  Write(Value);
  Write(sLineBreak);
end;

{ TFlexCelWriter }

procedure TFlexCelWriter.CloseWriter;
begin
{$ifndef AUTOREFCOUNT}
  Writer.Free;
{$endif}
  FWriter := nil;
end;

procedure TFlexCelWriter.Flush;
begin
  Writer.Flush;
end;

{$IFNDEF FPC}
class operator TFlexCelWriter.Implicit(
  const StreamWriter: TStreamWriter): TFlexCelWriter;
begin
  Result.FEncoding := StreamWriter.Encoding;
  Result.FWriter := StreamWriter;
end;
{$ENDIF}

class operator TFlexCelWriter.Implicit(
  const StreamWriter: TFlexCelStreamWriter): TFlexCelWriter;
begin
  Result.FEncoding := StreamWriter.Encoding;
  Result.FWriter := StreamWriter;
end;

class function TFlexCelWriter.Null: TFlexCelWriter;
begin
  Result.FEncoding := nil;
  Result.FWriter := nil;
end;

procedure TFlexCelWriter.OwnStream;
begin
  {$IFNDEF FPC}
  if (Writer is TStreamWriter) then TStreamWriter(Writer).OwnStream;
  {$ENDIF}
  if (Writer is TFlexCelStreamWriter) then TFlexCelStreamWriter(Writer).OwnStream;
end;

function TFlexCelWriter.Position: Integer;
begin
  {$IFNDEF FPC}
  if (Writer is TStreamWriter) then exit(TStreamWriter(Writer).BaseStream.Position);
  {$ENDIF}
  if (Writer is TFlexCelStreamWriter) then exit(TFlexCelStreamWriter(Writer).Position);
  raise Exception.Create('Writer must be a TStreamWriter or a TFlexCelWriter');
end;

procedure TFlexCelWriter.Write(const s: string);
begin
  Writer.Write(s);
end;

procedure TFlexCelWriter.WriteLine(const s: string);
begin
  Writer.WriteLine(s);
end;

end.
