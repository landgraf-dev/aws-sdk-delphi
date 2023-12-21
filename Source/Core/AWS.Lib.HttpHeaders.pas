unit AWS.Lib.HttpHeaders;

{$I AWS.inc}

interface

uses
  Generics.Collections, SysUtils;

type
  THttpHeaderInfo = class
  private
    FName: string;
    FValue: string;
    {$IFNDEF NEXTGEN}
    FAnsiName: AnsiString;
    FAnsiValue: AnsiString;
    {$ENDIF}
  public
    constructor Create(AName, AValue: string);
    property Name: string read FName;
    property Value: string read FValue;
    {$IFNDEF NEXTGEN}
    property AnsiName: AnsiString read FAnsiName;
    property AnsiValue: AnsiString read FAnsiValue;
    {$ENDIF}
  end;

  IReadOnlyHttpHeaders = interface
  ['{33809DE8-1D37-4E1F-BE24-B34FE09A0C66}']
    function Get(const HeaderName: string): string;
    function Exists(const HeaderName: string): boolean;
    function GetAllHeaders: TEnumerable<THttpHeaderInfo>;
    property AllHeaders: TEnumerable<THttpHeaderInfo> read GetAllHeaders;
  end;

  THttpHeaders = class(TInterfacedObject, IReadOnlyHttpHeaders)
  strict private
    FHeaders: TDictionary<string, THttpHeaderInfo>;
    function GetRawWideHeaders: string;
    procedure SetRawWideHeaders(const Value: string);
    function GetAllHeaders: TEnumerable<THttpHeaderInfo>;
  public
    constructor Create;
    destructor Destroy; override;
    procedure SetValue(const HeaderName, HeaderValue: string);
    procedure AddValue(const HeaderName, HeaderValue: string);
    function Get(const HeaderName: string): string;
    function Exists(const HeaderName: string): boolean;
    function GetIfExists(const HeaderName: string; var HeaderValue: string): Boolean;
    procedure Remove(const HeaderName: string);
    procedure Clear;
    property AllHeaders: TEnumerable<THttpHeaderInfo> read GetAllHeaders;
    property RawWideHeaders: string read GetRawWideHeaders write SetRawWideHeaders;
  end;

implementation

{ THttpHeaders }

procedure THttpHeaders.AddValue(const HeaderName, HeaderValue: string);
begin
  if Exists(HeaderName) then
    SetValue(HeaderName, Get(HeaderName) + ',' + HeaderValue)
  else
    SetValue(HeaderName, HeaderValue);
end;

procedure THttpHeaders.Clear;
begin
  FHeaders.Clear;
end;

constructor THttpHeaders.Create;
begin
  FHeaders := TObjectDictionary<string, THttpHeaderInfo>.Create([doOwnsValues]);
end;

destructor THttpHeaders.Destroy;
begin
  FHeaders.Free;
  inherited;
end;

function THttpHeaders.Exists(const HeaderName: string): boolean;
begin
  Result := FHeaders.ContainsKey(LowerCase(HeaderName));
end;

function THttpHeaders.Get(const HeaderName: string): string;
var
  Info: THttpHeaderInfo;
begin
  if FHeaders.TryGetValue(Lowercase(HeaderName), Info) then
    Result := Info.Value
  else
    Result := '';
end;

function THttpHeaders.GetAllHeaders: TEnumerable<THttpHeaderInfo>;
begin
  Result := FHeaders.Values;
end;

function THttpHeaders.GetIfExists(const HeaderName: string;
  var HeaderValue: string): Boolean;
begin
  Result := Exists(HeaderName);
  if Result then
    HeaderValue := Get(HeaderName);
end;

function THttpHeaders.GetRawWideHeaders: string;
var
  Header: THttpHeaderInfo;
begin
  Result := '';
  for Header in AllHeaders do
    Result := Result + Header.Name + ':' + Header.Value + #13#10;
  Result := Result + #13#10;
end;

procedure THttpHeaders.Remove(const HeaderName: string);
begin
  if FHeaders.ContainsKey(LowerCase(HeaderName)) then
    FHeaders.Remove(LowerCase(HeaderName));
end;

procedure THttpHeaders.SetRawWideHeaders(const Value: string);
var
  RawHeaders: string;

  function ExtractHeader: string;
  var
    P: integer;
  begin
    P := Pos(#13#10, RawHeaders);
    if P > 0 then
    begin
      Result := Copy(RawHeaders, 1, P - 1);
      Delete(RawHeaders, 1, P + 1);
    end else
    begin
      Result := RawHeaders;
      RawHeaders := '';
    end;
  end;

  procedure GetHeaderParts(const Header: string; var AName, AValue: string);
  var
    P: integer;
  begin
    P := Pos(':', Header);
    if P > 0 then
    begin
      AName := Copy(Header, 1, P - 1);
      AValue := Trim(Copy(Header, P + 1, MaxInt));
    end else
    begin
      AName := '';
      AValue := '';
    end;
  end;

  function RemoveLeadingLWS(const S: string): string;
  var
    P: integer;
  begin
    P := 1;
    while (P <= Length(S)) and ((S[P] = ' ') or (S[P] = #9)) do
      inc(P);
    result := Copy(S, P, MaxInt);
  end;

var
  Header: string;
  HeaderName, HeaderValue: string;
begin
  Clear;
  HeaderName := '';
  RawHeaders := Value;
  repeat
    Header := ExtractHeader;
    if Header <> '' then
    begin
      // Check if it's multi-line header
      if (Header[1] = ' ') or (Header[1] = #9) then
      begin
        HeaderValue := RemoveLeadingLWS(Header);
        if (HeaderName <> '') and (HeaderValue <> '') then
          SetValue(HeaderName, Get(HeaderName) + ' ' + HeaderValue);
      end
      else
      begin
        GetHeaderParts(Header, HeaderName, HeaderValue);
        if HeaderName <> '' then
          AddValue(HeaderName, HeaderValue);
      end;
    end;
  until Header = '';
end;

procedure THttpHeaders.SetValue(const HeaderName, HeaderValue: string);
begin
  if HeaderName <> '' then
    FHeaders.AddOrSetValue(Lowercase(HeaderName),
      THttpHeaderInfo.Create(Lowercase(HeaderName), Trim(HeaderValue)));
end;

{ THttpHeaderInfo }

constructor THttpHeaderInfo.Create(AName, AValue: string);
begin
  FName := AName;
  FValue := AValue;
  {$IFNDEF NEXTGEN}
  FAnsiName := AnsiString(FName);
  FAnsiValue := AnsiString(FValue);
  {$ENDIF}
end;

end.

