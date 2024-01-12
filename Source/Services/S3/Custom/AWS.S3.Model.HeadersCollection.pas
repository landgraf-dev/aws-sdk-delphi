unit AWS.S3.Model.HeadersCollection;

interface

uses
  System.Generics.Collections, System.Generics.Defaults, System.SysUtils;

type
  THeadersCollection = class
  strict private
    FValues: TDictionary<string, string>;
  private
    function GetItem(const Name: string): string;
    procedure SetItem(const Name, Value: string);
    function GetCacheControl: string;
    procedure SetCacheControl(const Value: string);
    function GetContentLength: Int64;
    procedure SetContentLength(const Value: Int64);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetContentDisposition: string;
    function GetContentEncoding: string;
    procedure SetContentDisposition(const Value: string);
    procedure SetContentEncoding(const Value: string);
  public
    constructor Create;
    destructor Destroy; override;
    function Count: Integer;
    function Keys: TEnumerable<string>;
    function IsSetContentType: Boolean;

    property Items[const Name: string]: string read GetItem write SetItem; default;

    property CacheControl: string read GetCacheControl write SetCacheControl;
    property ContentLength: Int64 read GetContentLength write SetContentLength;
    property ContentType: string read GetContentType write SetContentType;
    property ContentEncoding: string read GetContentEncoding write SetContentEncoding;
    property ContentDisposition: string read GetContentDisposition write SetContentDisposition;
  end;

implementation

{ THeadersCollection }

function THeadersCollection.Count: Integer;
begin
  Result := FValues.Count;
end;

constructor THeadersCollection.Create;
begin
  FValues := TDictionary<string, string>.Create(TIStringComparer.Ordinal);
end;

destructor THeadersCollection.Destroy;
begin
  FValues.Free;
  inherited;
end;

function THeadersCollection.GetCacheControl: string;
begin
  Result := Items['Cache-Control'];
end;

function THeadersCollection.GetContentDisposition: string;
begin
  Result := Items['Content-Disposition'];
end;

function THeadersCollection.GetContentEncoding: string;
begin
  Result := Items['Content-Encoding'];
end;

function THeadersCollection.GetContentLength: Int64;
begin
  var str := Items['Content-Length'];
  if str = '' then
    Result := -1
  else
    Result := StrToInt64(Str);
end;

function THeadersCollection.GetContentType: string;
begin
  Result := Items['Content-Type'];
end;

function THeadersCollection.GetItem(const Name: string): string;
begin
  if not FValues.TryGetValue(Name, Result) then
    Result := '';
end;

function THeadersCollection.IsSetContentType: Boolean;
begin
  Result := ContentType <> '';
end;

function THeadersCollection.Keys: TEnumerable<string>;
begin
  Result := FValues.Keys;
end;

procedure THeadersCollection.SetCacheControl(const Value: string);
begin
  Items['Cache-Control'] := Value;
end;

procedure THeadersCollection.SetContentDisposition(const Value: string);
begin
  Items['Content-Disposition'] := Value;
end;

procedure THeadersCollection.SetContentEncoding(const Value: string);
begin
  Items['Content-Encoding'] := Value;
end;

procedure THeadersCollection.SetContentLength(const Value: Int64);
begin
  Items['Content-Length'] := IntToStr(Value);
end;

procedure THeadersCollection.SetContentType(const Value: string);
begin
  Items['Content-Type'] := Value;
end;

procedure THeadersCollection.SetItem(const Name, Value: string);
begin
  if Value <> '' then
    FValues.AddOrSetValue(Name, Value)
  else
  if FValues.ContainsKey(Name) then
    FValues.Remove(Name);
end;

end.
