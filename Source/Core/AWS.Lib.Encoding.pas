unit AWS.Lib.Encoding;

{$I AWS.inc}

interface

uses
  SysUtils;

type
  TAWSEncoding = record
    public
    class function WebName(const Encoding: TEncoding): string; static;
    class function HeaderName(const Encoding: TEncoding): string; static;
    class function GetCharsX(const Encoding: TEncoding; const Bytes: PByte; const ByteCount: Integer; const Chars: PChar; const CharCount: Integer): Integer; overload; static;
    class function GetCharCountX(const Encoding: TEncoding; const Bytes: PByte; const ByteCount: Integer): Integer; overload; static;
    class function GetBytesX(const Encoding: TEncoding; const Chars: PChar; const CharCount: Integer; const Bytes: PByte; const ByteCount: Integer): Integer; overload; static;
    class function GetByteCountX(const Encoding: TEncoding; const Chars: PChar; const CharCount: Integer): Integer; overload; static;
  end;

implementation

{ TAWSEncoding }
type
  TEncodingAccessor = class(TEncoding)
  public
    function GetByteCountX(Chars: PChar; CharCount: Integer): Integer;
    function GetBytesX(Chars: PChar; CharCount: Integer; Bytes: PByte; ByteCount: Integer): Integer;
    function GetCharCountX(Bytes: PByte; ByteCount: Integer): Integer;
    function GetCharsX(Bytes: PByte; ByteCount: Integer; Chars: PChar; CharCount: Integer): Integer;
  end;

class function TAWSEncoding.GetCharsX(const Encoding: TEncoding; const Bytes: PByte; const ByteCount: Integer;
  const Chars: PChar; const CharCount: Integer): Integer;
begin
  Result := TEncodingAccessor(Encoding).GetCharsX(Bytes, ByteCount, Chars, CharCount);
end;

class function TAWSEncoding.GetByteCountX(const Encoding: TEncoding; const Chars: PWideChar;
  const CharCount: Integer): Integer;
begin
  Result := TEncodingAccessor(Encoding).GetByteCountX(Chars, CharCount)
end;

class function TAWSEncoding.GetBytesX(const Encoding: TEncoding; const Chars: PChar; const CharCount: Integer;
  const Bytes: PByte; const ByteCount: Integer): Integer;
begin
  Result := TEncodingAccessor(Encoding).GetBytesX(Chars, CharCount, Bytes, ByteCount);
end;

class function TAWSEncoding.GetCharCountX(const Encoding: TEncoding; const Bytes: PByte; const ByteCount: Integer): Integer;
begin
  Result := TEncodingAccessor(Encoding).GetCharCountX(Bytes, ByteCount);
end;

class function TAWSEncoding.HeaderName(const Encoding: TEncoding): string;
// created with foreach (EncodingInfo ei in Encoding.GetEncodings())
begin
  case Encoding.CodePage of
    932       : exit('iso-2022-jp');
    50221     : exit('iso-2022-jp');
    50225     : exit('euc-kr');
  end;
  Result := WebName(Encoding);
end;

class function TAWSEncoding.WebName(const Encoding: TEncoding): string;
begin
  case Encoding.CodePage of
    37   : exit('IBM037');
    437  : exit('IBM437');
    500  : exit('IBM500');
    708  : exit('ASMO-708');
    720  : exit('DOS-720');
    737  : exit('ibm737');
    775  : exit('ibm775');
    850  : exit('ibm850');
    852  : exit('ibm852');
    855  : exit('IBM855');
    857  : exit('ibm857');
    858  : exit('IBM00858');
    860  : exit('IBM860');
    861  : exit('ibm861');
    862  : exit('DOS-862');
    863  : exit('IBM863');
    864  : exit('IBM864');
    865  : exit('IBM865');
    866  : exit('cp866');
    869  : exit('ibm869');
    870  : exit('IBM870');
    874  : exit('windows-874');
    875  : exit('cp875');
    932  : exit('shift_jis');
    936  : exit('gb2312');
    949  : exit('ks_c_5601-1987');
    950  : exit('big5');
    1026 : exit('IBM1026');
    1047 : exit('IBM01047');
    1140 : exit('IBM01140');
    1141 : exit('IBM01141');
    1142 : exit('IBM01142');
    1143 : exit('IBM01143');
    1144 : exit('IBM01144');
    1145 : exit('IBM01145');
    1146 : exit('IBM01146');
    1147 : exit('IBM01147');
    1148 : exit('IBM01148');
    1149 : exit('IBM01149');
    1200 : exit('utf-16');
    1201 : exit('utf-16BE');
    1250 : exit('windows-1250');
    1251 : exit('windows-1251');
    1252 : exit('Windows-1252');
    1253 : exit('windows-1253');
    1254 : exit('windows-1254');
    1255 : exit('windows-1255');
    1256 : exit('windows-1256');
    1257 : exit('windows-1257');
    1258 : exit('windows-1258');
    1361 : exit('Johab');
    10000 : exit('macintosh');
    10001 : exit('x-mac-japanese');
    10002 : exit('x-mac-chinesetrad');
    10003 : exit('x-mac-korean');
    10004 : exit('x-mac-arabic');
    10005 : exit('x-mac-hebrew');
    10006 : exit('x-mac-greek');
    10007 : exit('x-mac-cyrillic');
    10008 : exit('x-mac-chinesesimp');
    10010 : exit('x-mac-romanian');
    10017 : exit('x-mac-ukrainian');
    10021 : exit('x-mac-thai');
    10029 : exit('x-mac-ce');
    10079 : exit('x-mac-icelandic');
    10081 : exit('x-mac-turkish');
    10082 : exit('x-mac-croatian');
    12000 : exit('utf-32');
    12001 : exit('utf-32BE');
    20000 : exit('x-Chinese-CNS');
    20001 : exit('x-cp20001');
    20002 : exit('x-Chinese-Eten');
    20003 : exit('x-cp20003');
    20004 : exit('x-cp20004');
    20005 : exit('x-cp20005');
    20105 : exit('x-IA5');
    20106 : exit('x-IA5-German');
    20107 : exit('x-IA5-Swedish');
    20108 : exit('x-IA5-Norwegian');
    20127 : exit('us-ascii');
    20261 : exit('x-cp20261');
    20269 : exit('x-cp20269');
    20273 : exit('IBM273');
    20277 : exit('IBM277');
    20278 : exit('IBM278');
    20280 : exit('IBM280');
    20284 : exit('IBM284');
    20285 : exit('IBM285');
    20290 : exit('IBM290');
    20297 : exit('IBM297');
    20420 : exit('IBM420');
    20423 : exit('IBM423');
    20424 : exit('IBM424');
    20833 : exit('x-EBCDIC-KoreanExtended');
    20838 : exit('IBM-Thai');
    20866 : exit('koi8-r');
    20871 : exit('IBM871');
    20880 : exit('IBM880');
    20905 : exit('IBM905');
    20924 : exit('IBM00924');
    20932 : exit('EUC-JP');
    20936 : exit('x-cp20936');
    20949 : exit('x-cp20949');
    21025 : exit('cp1025');
    21866 : exit('koi8-u');
    28591 : exit('iso-8859-1');
    28592 : exit('iso-8859-2');
    28593 : exit('iso-8859-3');
    28594 : exit('iso-8859-4');
    28595 : exit('iso-8859-5');
    28596 : exit('iso-8859-6');
    28597 : exit('iso-8859-7');
    28598 : exit('iso-8859-8');
    28599 : exit('iso-8859-9');
    28603 : exit('iso-8859-13');
    28605 : exit('iso-8859-15');
    29001 : exit('x-Europa');
    38598 : exit('iso-8859-8-i');
    50220 : exit('iso-2022-jp');
    50221 : exit('csISO2022JP');
    50222 : exit('iso-2022-jp');
    50225 : exit('iso-2022-kr');
    50227 : exit('x-cp50227');
    51932 : exit('euc-jp');
    51936 : exit('EUC-CN');
    51949 : exit('euc-kr');
    52936 : exit('hz-gb-2312');
    54936 : exit('GB18030');
    57002 : exit('x-iscii-de');
    57003 : exit('x-iscii-be');
    57004 : exit('x-iscii-ta');
    57005 : exit('x-iscii-te');
    57006 : exit('x-iscii-as');
    57007 : exit('x-iscii-or');
    57008 : exit('x-iscii-ka');
    57009 : exit('x-iscii-ma');
    57010 : exit('x-iscii-gu');
    57011 : exit('x-iscii-pa');
    65000 : exit('utf-7');
    65001 : exit('utf-8');
  end;
  Result := '';
end;

{ TEncodingAccessor }

function TEncodingAccessor.GetByteCountX(Chars: PChar;
  CharCount: Integer): Integer;
begin
  Result := GetByteCount(Chars, CharCount);
end;

function TEncodingAccessor.GetBytesX(Chars: PChar; CharCount: Integer;
  Bytes: PByte; ByteCount: Integer): Integer;
begin
  Result := GetBytes(Chars, CharCount, Bytes, ByteCount);
end;

function TEncodingAccessor.GetCharCountX(Bytes: PByte;
  ByteCount: Integer): Integer;
begin
  Result := GetCharCount(Bytes, ByteCount);
end;

function TEncodingAccessor.GetCharsX(Bytes: PByte; ByteCount: Integer;
  Chars: PChar; CharCount: Integer): Integer;
begin
  Result := GetChars(Bytes, ByteCount, Chars, CharCount);
end;

end.
