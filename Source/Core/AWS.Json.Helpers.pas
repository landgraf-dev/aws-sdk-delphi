{
Delphi REST JSON Helpers
Copyright(c) 2020 Uwe Raabe
All rights reserved
}
unit AWS.Json.Helpers;

interface

uses
  System.SysUtils, System.JSON, System.Classes,
  REST.JsonReflect;

const
  cNoDate = -DateDelta;

type
  JsonStringsAttribute = class(JsonReflectAttribute)
  public
    constructor Create;
  end;

type
  JsonUTCDateAttribute = class(JsonReflectAttribute)
  public
    constructor Create;
  end;

type
  TObjectListInterceptor<T: class> = class(TJSONInterceptor)
  public
    procedure AfterConstruction; override;
    procedure ObjectsReverter(Data: TObject; Field: string; Args: TListOfObjects); override;
    function TypeObjectsConverter(Data: TObject): TListOfObjects; override;
  end;

type
  JsonObjectListAttribute<T: class> = class(JsonReflectAttribute)
  public
    constructor Create;
  end;

type
  TConvert = class
  protected
    class procedure ProcessJSON(AJsonObject: TJSONObject);
  public
    class function FromJSON<T: class, constructor>(const AJsonString: string): T; overload; static;
    class function FromJSON<T: class, constructor>(AJsonValue: TJSONValue): T; overload; static;
    class function FromJSON<T: class, constructor>(AJsonObject: TJSONObject): T; overload; static;
    class function FromJSONArray<T: class, constructor>(const AJsonString: string): TArray<T>; overload; static;
    class function FromJSONArray<T: class, constructor>(AJsonValue: TJSONValue): TArray<T>; overload; static;
    class function FromJSONArray<T: class, constructor>(AJsonArray: TJSONArray): TArray<T>; overload; static;
    class function ToJSON(Source: TObject): TJSONObject; static;
    class function ToJSONString(Source: TObject): string;
  end;

type
  TPersistentInterceptor<T: TPersistent, constructor> = class(TJSONInterceptor)
  private
    FProxy: T;
    function GetProxy: T;
  strict protected
    property Proxy: T read GetProxy;
  public
    destructor Destroy; override;
    function TypeObjectConverter(Data: TObject): TObject; override;
  end;

function IsNoDate(ADate: TDateTime): Boolean;

implementation

uses
  System.Rtti, System.DateUtils, System.Generics.Collections,
  REST.Json;

function IsNoDate(ADate: TDateTime): Boolean;
begin
  Result := Round(ADate) = cNoDate;
end;

type
  TStringsInterceptor = class(TJSONInterceptor)
  public
    function StringsConverter(Data: TObject; Field: string): TListOfStrings; override;
    procedure StringsReverter(Data: TObject; Field: string; Args: TListOfStrings); override;
  end;

type
  TUTCDateTimeInterceptor = class(TJSONInterceptor)
  private type
    TStringProxyInterceptor = class(TJSONInterceptor)
    public
      function TypeStringConverter(Data: TObject): string; override;
    end;
    [JsonReflect(ctTypeString, rtTypeString, TStringProxyInterceptor)]
    TStringProxy = class
    private
      FValue: string;
    public
      property Value: string read FValue write FValue;
    end;
  var
    FStringProxy: TStringProxy;
    function GetStringProxy: TStringProxy;
  strict protected
    function ToLocalTime(const ADateTime: TDateTime): TDateTime;
    function ToUniversalTime(const ADateTime: TDateTime; const ForceDaylight: Boolean = False): TDateTime;
    property StringProxy: TStringProxy read GetStringProxy;
  public
    destructor Destroy; override;
    procedure StringReverter(Data: TObject; Field: string; Arg: string); override;
    function ObjectConverter(Data: TObject; Field: string): TObject; override;
  end;

function TStringsInterceptor.StringsConverter(Data: TObject; Field: string): TListOfStrings;
var
  ctx: TRTTIContext;
  I: Integer;
  list: TStrings;
begin
  list := ctx.GetType(Data.ClassType).GetField(Field).GetValue(Data).AsObject as TStrings;
  SetLength(Result, list.Count);
  for I := 0 to list.Count - 1 do
    Result[I] := list[I];
end;

procedure TStringsInterceptor.StringsReverter(Data: TObject; Field: string; Args: TListOfStrings);
var
  ctx: TRTTIContext;
  list: TStrings;
  S: string;
begin
  list := ctx.GetType(Data.ClassType).GetField(Field).GetValue(Data).AsObject as TStrings;
  if list <> nil then
  begin
    list.Clear;
    for S in Args do
      list.Add(S);
  end;
end;

constructor JsonStringsAttribute.Create;
begin
  inherited Create(ctStrings, rtStrings, TStringsInterceptor);
end;

procedure TObjectListInterceptor<T>.AfterConstruction;
begin
  inherited;
  ObjectType := T;
end;

procedure TObjectListInterceptor<T>.ObjectsReverter(Data: TObject; Field: string; Args: TListOfObjects);
var
  ctx: TRTTIContext;
  list: TObjectList<T>;
  obj: TObject;
begin
  list := TObjectList<T>(ctx.GetType(Data.ClassType).GetField(Field).GetValue(Data).AsObject);
  list.Clear;
  for obj in Args do
    list.Add(T(obj));
end;

function TObjectListInterceptor<T>.TypeObjectsConverter(Data: TObject): TListOfObjects;
var
  I: Integer;
  list: TObjectList<T>;
begin
  list := TObjectList<T>(Data);
  SetLength(Result, list.Count);
  for I := 0 to list.Count - 1 do
    Result[I] := list.Items[I];
end;

destructor TUTCDateTimeInterceptor.Destroy;
begin
  FStringProxy.Free;
  inherited Destroy;
end;

function TUTCDateTimeInterceptor.GetStringProxy: TStringProxy;
begin
  if FStringProxy = nil then begin
    FStringProxy := TStringProxy.Create;
  end;
  Result := FStringProxy;
end;

function TUTCDateTimeInterceptor.ObjectConverter(Data: TObject; Field: string): TObject;
var
  ctx: TRTTIContext;
  date: TDateTime;
begin
  Result := nil;
  date := ctx.GetType(Data.ClassType).GetField(Field).GetValue(Data).AsType<TDateTime>;
  if IsNoDate(date) then Exit;
  StringProxy.Value := DateToISO8601(ToUniversalTime(date));
  result := StringProxy;
end;

procedure TUTCDateTimeInterceptor.StringReverter(Data: TObject; Field, Arg: string);
var
  ctx: TRTTIContext;
  datetime: TDateTime;
begin
  datetime := ToLocalTime(ISO8601ToDate(Arg));
  ctx.GetType(Data.ClassType).GetField(Field).SetValue(Data, datetime);
end;

function TUTCDateTimeInterceptor.ToLocalTime(const ADateTime: TDateTime): TDateTime;
begin
  Result := ADateTime;
  if Round(Result) <> cNoDate then
    Result := TTimeZone.Local.ToLocalTime(Result);
end;

function TUTCDateTimeInterceptor.ToUniversalTime(const ADateTime: TDateTime; const ForceDaylight: Boolean): TDateTime;
begin
  Result := ADateTime;
  if Round(Result) <> cNoDate then
    Result := TTimeZone.Local.ToUniversalTime(Result, ForceDaylight);
end;

constructor JsonUTCDateAttribute.Create;
begin
  inherited Create(ctObject, rtString, TUTCDateTimeInterceptor);
end;

constructor JsonObjectListAttribute<T>.Create;
begin
  inherited Create(ctTypeObjects, rtObjects, TObjectListInterceptor<T>);
end;

class function TConvert.FromJSON<T>(const AJsonString: string): T;
var
  jsonValue: TJSONValue;
begin
  jsonValue := TJSONObject.ParseJSONValue(AJsonString);
  try
    Result := FromJSON<T>(jsonValue);
  finally
    jsonValue.Free;
  end;
end;

class function TConvert.FromJSON<T>(AJsonValue: TJSONValue): T;
begin
  if AJsonValue is TJSONObject then
    Result := FromJSON<T>(TJSONObject(AJsonValue))
  else
    raise EJSONException.Create('AJsonValue must be a TJSONObject');
end;

class function TConvert.FromJSON<T>(AJsonObject: TJSONObject): T;
begin
  Result := TJson.JsonToObject<T>(TJSONObject(AJsonObject), [joDateIsUTC, joDateFormatISO8601{$IF RTLVersion >= 34.0},
    joBytesFormatArray, joIndentCaseCamel{$IFEND}]);
end;

class function TConvert.FromJSONArray<T>(const AJsonString: string): TArray<T>;
var
  jsonValue: TJSONValue;
begin
  jsonValue := TJSONObject.ParseJSONValue(AJsonString);
  try
    Result := FromJSONArray<T>(jsonValue);
  finally
    jsonValue.Free;
  end;
end;

class function TConvert.FromJSONArray<T>(AJsonValue: TJSONValue): TArray<T>;
begin
  if AJsonValue is TJSONArray then
    Result := FromJSONArray<T>(TJSONArray(AJsonValue))
  else
    raise EJSONException.Create('AJsonValue must be a TJSONArray');
end;

class function TConvert.FromJSONArray<T>(AJsonArray: TJSONArray): TArray<T>;
var
  I: Integer;
begin
  SetLength(Result, AJsonArray.Count);
  for I := 0 to Length(Result) - 1 do
  begin
    Result[I] := FromJSON<T>(AJsonArray.Items[I]);
  end;
end;

class procedure TConvert.ProcessJSON(AJsonObject: TJSONObject);
var
  i: Integer;
  item: TJSONValue;
  pair: TJSONPair;
  pairName: string;
begin
  if AJsonObject = nil then Exit;

  for i := AJsonObject.Count - 1 downto 0 do
  begin
    pair := AJsonObject.Pairs[i];
    if pair.JsonValue is TJSONObject then
      ProcessJSON(TJSONObject(pair.JsonValue))
    else if pair.JsonValue is TJSONArray then
    begin
      for item in TJSONArray(pair.JsonValue) do
        if item is TJSONObject then
          ProcessJSON(TJSONObject(item))
    end
    else begin
      if pair.JsonValue.Value = '0000-00-00T00:00:00.000Z' then begin
        pairName := pair.JsonString.Value;
        AJsonObject.RemovePair(pairName).DisposeOf;
        AJsonObject.AddPair(pairName, TJSONNull.Create);
      end;
    end;
  end;
end;

class function TConvert.ToJSON(Source: TObject): TJSONObject;
begin
  Result := TJson.ObjectToJsonObject(Source, [joDateIsUTC, joDateFormatISO8601]);
  ProcessJSON(Result);
end;

class function TConvert.ToJSONString(Source: TObject): string;
begin
  Result := TJson.ObjectToJsonString(Source, [joDateIsUTC, joDateFormatISO8601]);
end;

function TUTCDateTimeInterceptor.TStringProxyInterceptor.TypeStringConverter(Data: TObject): string;
begin
  Result := (Data as TStringProxy).Value;
end;

destructor TPersistentInterceptor<T>.Destroy;
begin
  FProxy.Free;
  inherited Destroy;
end;

function TPersistentInterceptor<T>.GetProxy: T;
begin
  if FProxy = nil then begin
    FProxy := T.Create;
  end;
  Result := FProxy;
end;

function TPersistentInterceptor<T>.TypeObjectConverter(Data: TObject): TObject;
begin
  Result := Proxy;
  if Data is TPersistent then
    Proxy.Assign(TPersistent(Data));
end;

end.

