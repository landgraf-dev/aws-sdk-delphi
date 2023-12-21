unit AWS.Lib.Uri;

{$I AWS.inc}

interface

uses
  System.SysUtils, System.Character,
  AWS.Lib.Utils;

type
  UriBadFormatException = class(Exception)
  end;

  IUri = interface
  ['{0994F31A-723A-4A60-A7F7-6EEC1D7ACF33}']
    function GetAbsoluteUri: string;
    function GetScheme: string;
    function GetHost: string;
    function GetAuthority: string;
    function GetAbsolutePath: string;
    function GetQuery: string;
    function GetFragment: string;
    function GetPort: Integer;
    function IsDefaultPort: Boolean;

    property Scheme: string read GetScheme;
    property Host: string read GetHost;
    property AbsoluteUri: string read GetAbsoluteUri;
    property Authority: string read GetAuthority;
    property AbsolutePath: string read GetAbsolutePath;
    property Query: string read GetQuery;
    property Fragment: string read GetFragment;
    property Port: Integer read GetPort;
  end;

  TUri = class(TInterfacedObject, IUri)
  {
  scheme ":"
    authority [userinfo "@"] host [":" port]   termina com /, ? ou #
  }
  strict private
    FScheme: string;
    FFragment: string;
    FOriginalFragment: string;
    FQuery: string;
    FOriginalQuery: string;
    FHost: string;
    FPath: string;
    FOriginalPath: string;
    FUserInfo: string;
    FPort: integer;
    FUri: string;
    FSegments: TArray<string>;
//    function GetPathEncoded: string;
    const ReservedChars = ':/?#[]@';
    const SubDelimChars = '!$&''()*+,;=';
    procedure ParseUri(Uri: string);
    function IsDefaultPort: boolean;
    function GetOriginalSegments: TArray<string>;
    class function ExtractStr(var S: string; Delims: array of Char;
      RemoveDelim: boolean; IncludeDelim: Boolean = False): string;
    class function CharInArray(C: Char; Chars: array of Char): boolean;
    class function ExtractScheme(var S: string): string;
  strict private
    function GetHost: string;
    function GetScheme: string;
    function GetAuthority: string;
    function GetAbsoluteUri: string;
    function GetAbsolutePath: string;
    function GetQuery: string;
    function GetFragment: string;
    function GetPort: Integer;
  public
    class function PercentEncode(const S: string): string; deprecated 'Use TSparkleUtils.PercentEncode instead';
    class function PercentDecode(const S: string): string; deprecated 'Use TSparkleUtils.PercentDecode instead';
    class function HasScheme(S: string): Boolean;
    class procedure ParseHost(const S: string; var Host, Port: string); overload;
    class procedure ParseHost(const S: string; var Host: string; var Port: Integer); overload;
  public
    constructor Create(const AUri: string);
    function Clone: TUri;
    property Scheme: string read GetScheme;
    property Host: string read GetHost;
    property Query: string read FQuery;
    property OriginalQuery: string read FOriginalQuery;
    property Fragment: string read FFragment;
    property OriginalFragment: string read FOriginalFragment;
    property Path: string read FPath;
    property OriginalPath: string read FOriginalPath;
    property UserInfo: string read FUserInfo;
    property Port: integer read GetPort;
    property Segments: TArray<string> read FSegments;
    property OriginalSegments: TArray<string> read GetOriginalSegments;
    property OriginalUri: string read FUri;
    property Authority: string read GetAuthority;
    property AbsoluteUri: string read GetAbsoluteUri;
    property AbsolutePath: string read GetAbsolutePath;
  end;

  TUriSegmentStack = class
  strict private
    FSegments: TArray<string>;
    FLength: integer;
    FCurrent: integer;
  public
    constructor Create(const ASegments: TArray<string>);
    function ToString: string; override;
    function Count: integer;
    function Peek(Offset: Integer = 0): string;
    function Pop: string;
    procedure Push;
  end;

implementation

{ TUri }

class function TUri.CharInArray(C: Char; Chars: array of Char): boolean;
var
  C1: Char;
begin
  for C1 in Chars do
    if C = C1 then
      Exit(true);
  Result := false;
end;

function TUri.Clone: TUri;
begin
  Result := TUri.Create(FUri);
end;

constructor TUri.Create(const AUri: string);
begin
  inherited Create;
  ParseUri(AUri);
  FUri := AUri;
end;

class function TUri.ExtractScheme(var S: string): string;
var
  I: integer;
begin
  I := 1;
  Result := '';
  while (I <= Length(S)) and S[I].IsLetter do
    Inc(I);

  if (I + 2) <= Length(S) then
    if (S[I] = ':') and (S[I + 1] = '/') and (S[I + 2] = '/') then
    begin
      Result := Copy(S, 1, I - 1);
      Delete(S, 1, I + 2);
    end;
end;

class function TUri.ExtractStr(var S: string; Delims: array of Char; RemoveDelim: boolean;
  IncludeDelim: Boolean): string;
var
  I: integer;
begin
  I := 1;
  Result := '';
  while (I <= Length(S)) and not CharInArray(S[I], Delims) do
    Inc(I);
  if IncludeDelim then
    Result := Copy(S, 1, I)
  else
    Result := Copy(S, 1, I - 1);
  if RemoveDelim then
    Delete(S, 1, I)
  else
    Delete(S, 1, I - 1);
end;

function TUri.GetAbsolutePath: string;
begin
  Result := FOriginalPath;
end;

function TUri.GetAbsoluteUri: string;
begin
  if Scheme = '' then
    Result := 'http'
  else
    Result := Scheme;
  Result := Result + '://' + Authority + OriginalPath + OriginalQuery + OriginalFragment;
end;

function TUri.GetAuthority: string;
var
  LocalHost: string;
begin
  LocalHost := Host;
  if UserInfo <> '' then
    Result := UserInfo + '@' + LocalHost
  else
    Result := LocalHost;
  if not IsDefaultPort then
    Result := Result + ':' + IntToStr(Port);
end;

function TUri.GetFragment: string;
begin
  Result := FOriginalFragment;
end;

function TUri.GetHost: string;
begin
  Result := FHost;
end;

function TUri.GetOriginalSegments: TArray<string>;
var
  LocalPath: string;
  LocalSegment: string;
begin
  LocalPath := OriginalPath;
  if (Length(LocalPath) = 0) or (LocalPath[1] <> '/') then
    LocalPath := '/' + LocalPath;
  SetLength(Result, 0);
  while LocalPath > '' do
  begin
    LocalSegment := ExtractStr(LocalPath, ['/'], True, True);
    SetLength(Result, Length(Result) + 1);
    Result[Length(Result) - 1] := LocalSegment;
  end;
end;

function TUri.GetPort: Integer;
begin
  Result := FPort;
end;

function TUri.GetQuery: string;
begin
  Result := FOriginalQuery;
end;

function TUri.GetScheme: string;
begin
  Result := FScheme;
end;

class function TUri.HasScheme(S: string): Boolean;
begin
  Result := ExtractScheme(S) <> ''
end;

//function TUri.GetPathEncoded: string;
//var
//  I: integer;
//begin
//  Result := '';
//  for I := 0 to Length(Segments) - 1 do
//    Result := Result + '/' + TSparkleUtils.PercentEncode(Segments[I]);
//  if Path[Length(Path)] = '/' then
//    Result := Result + '/';
//end;

function TUri.IsDefaultPort: boolean;
begin
  Result := (Port = 0)
    or ((Port = 80) and ((Scheme = 'http') or (Scheme = '')))
    or ((Port = 443) and (Scheme = 'https'));
end;

class procedure TUri.ParseHost(const S: string; var Host, Port: string);
var
  P: Integer;
begin
  Host := '';
  Port := '';
  if S = '' then Exit;

  P := Pos(']', S);
  if P > 0 then
  begin
    Host := Copy(S, 1, P);
    if (P < Length(S)) and (S[P + 1] = ':') then
      Port := Copy(S, P + 2);
  end
  else
  begin
    P := Pos(':', S);
    if (P > 0) then
    begin
      Host := Copy(S, 1, P - 1);
      Port := Copy(S, P + 1);
    end
    else
      Host := S;
  end;
end;

class procedure TUri.ParseHost(const S: string; var Host: string; var Port: Integer);
var
  e: Integer;
  PortStr: string;
begin
  ParseHost(S, Host, PortStr);
  Val(PortStr, Port, e);
end;

procedure TUri.ParseUri(Uri: string);
var
  RequiresScheme: boolean;
  LocalScheme: string;
  LocalPath: string;
  LocalQuery: string;
  LocalPort: integer;
  LocalHost: string;
  LocalFragment: string;
  LocalUserInfo: string;
  LocalSegments: string;
  LocalSegment: string;
  LocalAuthority: string;
begin
  RequiresScheme := false;
  // Quick parse. This can be later optimized/improved, but right now
  // we don't need a too complex just to parse 98% of existing Uri's
  // Also this just parses Uri, not general URN/URI syntax

  // get scheme
  LocalScheme := ExtractScheme(Uri);
  if (LocalScheme = '') and RequiresScheme then
    raise UriBadFormatException.Create('Scheme not specified');

  // get and parse authority
  LocalAuthority := ExtractStr(Uri, ['/', '?', '#'], false);
  if Pos('@', LocalAuthority) > 0 then
    LocalUserInfo := ExtractStr(LocalAuthority, ['@'], true)
  else
    LocalUserInfo := '';

  // handle IPv6 addresses
  ParseHost(LocalAuthority, LocalHost, LocalPort);

  // get remaining Uri
  // check path
  if (Length(Uri) > 0) and (Uri[1] = '/') then
    LocalPath := ExtractStr(Uri, ['?', '#'], false)
  else
    LocalPath := '/';

  // check query
  if (Length(Uri) > 0) and (Uri[1] = '?') then
    LocalQuery := ExtractStr(Uri, ['#'], false)
  else
    LocalQuery := '';

  // remaing Uri is fragment
  LocalFragment := Uri;

  // Extract segments
  if (Length(LocalPath) > 0) and (LocalPath[1] = '/') then
    LocalSegments := Copy(LocalPath, 2, MaxInt)
  else
    LocalSegments := LocalPath;
  SetLength(FSegments, 0);
  while LocalSegments > '' do
  begin
    LocalSegment := ExtractStr(LocalSegments, ['/'], true);
    if LocalSegment <> '' then
    begin
      SetLength(FSegments, Length(FSegments) + 1);
      FSegments[Length(FSegments) - 1] := AWS.Lib.Utils.PercentDecode(LocalSegment);
    end;
  end;

  // Final processing
//  LocalScheme := TSparkleUtils.PercentDecode(LocalScheme);
//  LocalUserInfo := TSparkleUtils.PercentDecode(LocalUserInfo);
//  LocalHost := TSparkleUtils.PercentDecode(LocalHost);
//  Val(LocalPortStr, LocalPort, e);
//  LocalPath := TSparkleUtils.PercentDecode(LocalPath);
//  LocalQuery := TSparkleUtils.PercentDecode(LocalQuery);
//  LocalFragment := TSparkleUtils.PercentDecode(LocalFragment);

  // Default port
  if LocalPort = 0 then
  begin
    if (LocalScheme = '') or SameText(LocalScheme, 'http') then
      LocalPort := 80
    else
    if SameText(LocalScheme, 'https') then
      LocalPort := 443;
  end;

  // Copy to class. We could make this deferred later to improve performance, if needed
  FScheme := Lowercase(LocalScheme);
  FUserInfo := LocalUserInfo;
  FHost := LocalHost;
  FPort := LocalPort;
  FOriginalPath := LocalPath;
  FPath := AWS.Lib.Utils.PercentDecode(LocalPath);
  FOriginalQuery := LocalQuery;
  FQuery := AWS.Lib.Utils.PercentDecode(LocalQuery);
  FOriginalFragment := LocalFragment;
  FFragment := AWS.Lib.Utils.PercentDecode(LocalFragment);
end;

class function TUri.PercentDecode(const S: string): string;
begin
  Result := AWS.Lib.Utils.PercentDecode(S);
end;

class function TUri.PercentEncode(const S: string): string;
begin
  Result := AWS.Lib.Utils.PercentEncode(S);
end;

{ TUriSegmentStack }

function TUriSegmentStack.Count: integer;
begin
  Result := FLength - FCurrent;
end;

constructor TUriSegmentStack.Create(const ASegments: TArray<string>);
begin
  FSegments := ASegments;
  FCurrent := 0;
  FLength := Length(FSegments);
end;

function TUriSegmentStack.Peek(Offset: Integer = 0): string;
begin
  if FCurrent + Offset < FLength then
    Result := FSegments[FCurrent + Offset]
  else
    Result := '';
end;

function TUriSegmentStack.Pop: string;
begin
  Result := Peek;
  Inc(FCurrent);
end;

procedure TUriSegmentStack.Push;
begin
  Dec(FCurrent);
  if FCurrent < 0 then
    FCurrent := 0;
end;

function TUriSegmentStack.ToString: string;
var
  I: Integer;
begin
  Result := '';
  for I := 0 to Length(FSegments) - 1 do
  begin
    Result := Result + FSegments[I];
    if I < Length(FSegments) - 1 then
      Result := Result + '/';
  end;
end;

end.

