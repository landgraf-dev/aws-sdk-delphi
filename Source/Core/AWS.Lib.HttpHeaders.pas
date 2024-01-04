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
  public
    constructor Create(AName, AValue: string);
    property Name: string read FName;
    property Value: string read FValue;
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

procedure THttpHeaders.Remove(const HeaderName: string);
begin
  if FHeaders.ContainsKey(LowerCase(HeaderName)) then
    FHeaders.Remove(LowerCase(HeaderName));
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
end;

end.

