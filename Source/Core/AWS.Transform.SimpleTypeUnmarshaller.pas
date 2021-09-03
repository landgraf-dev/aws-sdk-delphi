unit AWS.Transform.SimpleTypeUnmarshaller;

interface

uses
  System.SysUtils, System.Generics.Collections, System.Classes, System.DateUtils,
  AWS.Transform.ResponseUnmarshaller,
  AWS.Transform.UnmarshallerContext,
  AWS.Runtime.Model,
  Bcl.Types.Nullable,
  AWS.Transform.JsonUnmarshallerContext;

type
  IStringUnmarshaller = IUnmarshaller<string, TXmlUnmarshallerContext>;
  IJsonStringUnmarshaller = IUnmarshaller<string, TJsonUnmarshallerContext>;
  TStringUnmarshaller = class(TInterfacedObject, IUnmarshaller<string, TXmlUnmarshallerContext>, IJsonStringUnmarshaller)
  strict private
    class var FInstance: IStringUnmarshaller;
    class var FJsonInstance: IJsonStringUnmarshaller;
    class constructor Create;
  public
    class function Instance: IStringUnmarshaller;
    class function JsonInstance: IJsonStringUnmarshaller;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): string; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext): string; overload;
  end;

  IBooleanUnmarshaller = IUnmarshaller<Boolean, TXmlUnmarshallerContext>;
  IJsonBooleanUnmarshaller = IUnmarshaller<Boolean, TJsonUnmarshallerContext>;
  TBooleanUnmarshaller = class(TInterfacedObject, IUnmarshaller<Boolean, TXmlUnmarshallerContext>, IJsonBooleanUnmarshaller)
  strict private
    class var FInstance: IBooleanUnmarshaller;
    class var FJsonInstance: IJsonBooleanUnmarshaller;
    class constructor Create;
  public
    class function Instance: IBooleanUnmarshaller;
    class function JsonInstance: IJsonBooleanUnmarshaller;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): Boolean; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext): Boolean; overload;
  end;

  IIntegerUnmarshaller = IUnmarshaller<Integer, TXmlUnmarshallerContext>;
  IJsonIntegerUnmarshaller = IUnmarshaller<Integer, TJsonUnmarshallerContext>;
  TIntegerUnmarshaller = class(TInterfacedObject, IUnmarshaller<Integer, TXmlUnmarshallerContext>, IJsonIntegerUnmarshaller)
  strict private
    class var FInstance: IIntegerUnmarshaller;
    class var FJsonInstance: IJsonIntegerUnmarshaller;
    class constructor Create;
  public
    class function Instance: IIntegerUnmarshaller;
    class function JsonInstance: IJsonIntegerUnmarshaller;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): Integer; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext): Integer; overload;
  end;

  IInt64Unmarshaller = IUnmarshaller<Int64, TXmlUnmarshallerContext>;
  IJsonInt64Unmarshaller = IUnmarshaller<Int64, TJsonUnmarshallerContext>;
  TInt64Unmarshaller = class(TInterfacedObject, IUnmarshaller<Int64, TXmlUnmarshallerContext>, IJsonInt64Unmarshaller)
  strict private
    class var FInstance: IInt64Unmarshaller;
    class var FJsonInstance: IJsonInt64Unmarshaller;
    class constructor Create;
  public
    class function Instance: IInt64Unmarshaller;
    class function JsonInstance: IJsonInt64Unmarshaller;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): Int64; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext): Int64; overload;
  end;

  IDoubleUnmarshaller = IUnmarshaller<Double, TXmlUnmarshallerContext>;
  IJsonDoubleUnmarshaller = IUnmarshaller<Double, TJsonUnmarshallerContext>;
  TDoubleUnmarshaller = class(TInterfacedObject, IUnmarshaller<Double, TXmlUnmarshallerContext>, IJsonDoubleUnmarshaller)
  strict private
    class var FInstance: IDoubleUnmarshaller;
    class var FJsonInstance: IJsonDoubleUnmarshaller;
    class var FFormatSettings: TFormatSettings;
    class constructor Create;
  public
    class function Instance: IDoubleUnmarshaller;
    class function JsonInstance: IJsonDoubleUnmarshaller;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): Double; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext): Double; overload;
  end;

  IFloatUnmarshaller = IDoubleUnmarshaller;
  IJsonFloatUnmarshalle = IJsonDoubleUnmarshaller;
  TFloatUnmarshaller = TDoubleUnmarshaller;

  IDateTimeUnmarshaller = IUnmarshaller<TDateTime, TXmlUnmarshallerContext>;
  IJsonDateTimeUnmarshaller = IUnmarshaller<TDateTime, TJsonUnmarshallerContext>;
  TDateTimeUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDateTime, TXmlUnmarshallerContext>, IJsonDateTimeUnmarshaller)
  strict private
    class var FInstance: IDateTimeUnmarshaller;
    class var FJsonInstance: IJsonDateTimeUnmarshaller;
    class var FFormatSettings: TFormatSettings;
    class constructor Create;
  protected
    class function UnmarshallInternal(const Text: string; TreatAsNullable: Boolean): Nullable<TDateTime>;
  public
    class function Instance: IDateTimeUnmarshaller;
    class function JsonInstance: IJsonDateTimeUnmarshaller;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TDateTime; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDateTime; overload;
  end;

  TKeyValueUnmarshaller<K, V;
    KUnmarshaller: IUnmarshaller<K, TXmlUnmarshallerContext>;
    VUnmarshaller: IUnmarshaller<V, TXmlUnmarshallerContext>> = class(TInterfacedObject,
      IUnmarshaller<TPair<K, V>, TXmlUnmarshallerContext>)
  strict private
    FKeyUnmarshaller: KUnmarshaller;
    FValueUnmarshaller: VUnmarshaller;
  public
    class function New(AKeyUnmarshaller: KUnmarshaller;
      AValueUnmarshaller: VUnmarshaller): IUnmarshaller<TPair<K, V>, TXmlUnmarshallerContext>;
  public
    constructor Create(AKeyUnmarshaller: KUnmarshaller;
      AValueUnmarshaller: VUnmarshaller);
    function Unmarshall(AContext: TXmlUnmarshallerContext): TPair<K, V>;
  end;

  TJsonKeyValueUnmarshaller<K, V;
    KUnmarshaller: IUnmarshaller<K, TJsonUnmarshallerContext>;
    VUnmarshaller: IUnmarshaller<V, TJsonUnmarshallerContext>> = class(TInterfacedObject,
      IUnmarshaller<TPair<K, V>, TJsonUnmarshallerContext>)
  strict private
    FKeyUnmarshaller: KUnmarshaller;
    FValueUnmarshaller: VUnmarshaller;
  public
    class function New(AKeyUnmarshaller: KUnmarshaller;
      AValueUnmarshaller: VUnmarshaller): IUnmarshaller<TPair<K, V>, TJsonUnmarshallerContext>;
  public
    constructor Create(AKeyUnmarshaller: KUnmarshaller;
      AValueUnmarshaller: VUnmarshaller);
    function Unmarshall(AContext: TJsonUnmarshallerContext): TPair<K, V>;
  end;

  TJsonListUnmarshaller<I; IUnmarshaller: IUnmarshaller<I, TJsonUnmarshallerContext>> =
    class(TInterfacedObject, IUnmarshaller<TList<I>, TJsonUnmarshallerContext>)
  strict private
    FUnmarshaller: IUnmarshaller;
  public
    class function JsonNew(AUnmarshaller: IUnmarshaller): IUnmarshaller<TList<I>, TJsonUnmarshallerContext>;
  public
    constructor Create(AUnmarshaller: IUnmarshaller);
    function Unmarshall(AContext: TJsonUnmarshallerContext): TList<I>;
  end;

  TJsonObjectListUnmarshaller<I: class; IUnmarshaller: IUnmarshaller<I, TJsonUnmarshallerContext>> =
    class(TInterfacedObject, IUnmarshaller<TObjectList<I>, TJsonUnmarshallerContext>)
  strict private
    FUnmarshaller: IUnmarshaller;
  public
    class function JsonNew(AUnmarshaller: IUnmarshaller): IUnmarshaller<TObjectList<I>, TJsonUnmarshallerContext>;
  public
    constructor Create(AUnmarshaller: IUnmarshaller);
    function Unmarshall(AContext: TJsonUnmarshallerContext): TObjectList<I>;
  end;

  TJsonDictionaryUnmarshaller<TKey, TValue;
    TKeyUnmarshaller: IUnmarshaller<TKey, TJsonUnmarshallerContext>;
    TValueUnmarshaller: IUnmarshaller<TValue, TJsonUnmarshallerContext>>
    = class(TInterfacedObject, IUnmarshaller<TDictionary<TKey, TValue>, TJsonUnmarshallerContext>)
  strict private
    FKVUnmarshaller: TJsonKeyValueUnmarshaller<TKey, TValue, TKeyUnmarshaller, TValueUnmarshaller>;
  public
    class function JsonNew(AKeyUnmarshaller: TKeyUnmarshaller;
      AValueUnmarshaller: TValueUnmarshaller): IUnmarshaller<TDictionary<TKey, TValue>, TJsonUnmarshallerContext>;
  public
    constructor Create(AKeyUnmarshaller: TKeyUnmarshaller; AValueUnmarshaller: TValueUnmarshaller);
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDictionary<TKey, TValue>;
  end;

  TJsonObjectDictionaryUnmarshaller<TKey; TValue: class;
    TKeyUnmarshaller: IUnmarshaller<TKey, TJsonUnmarshallerContext>;
    TValueUnmarshaller: IUnmarshaller<TValue, TJsonUnmarshallerContext>>
    = class(TInterfacedObject, IUnmarshaller<TObjectDictionary<TKey, TValue>, TJsonUnmarshallerContext>)
  strict private
    FKVUnmarshaller: TJsonKeyValueUnmarshaller<TKey, TValue, TKeyUnmarshaller, TValueUnmarshaller>;
  public
    class function JsonNew(AKeyUnmarshaller: TKeyUnmarshaller;
      AValueUnmarshaller: TValueUnmarshaller): IUnmarshaller<TObjectDictionary<TKey, TValue>, TJsonUnmarshallerContext>;
  public
    constructor Create(AKeyUnmarshaller: TKeyUnmarshaller; AValueUnmarshaller: TValueUnmarshaller);
    function Unmarshall(AContext: TJsonUnmarshallerContext): TObjectDictionary<TKey, TValue>;
  end;

  IMemoryStreamUnmarshaller = IUnmarshaller<TMemoryStream, TXmlUnmarshallerContext>;
  TMemoryStreamUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMemoryStream, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IMemoryStreamUnmarshaller;
  public
    class function Instance: IMemoryStreamUnmarshaller;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TMemoryStream;
  end;

  IBytesStreamUnmarshaller = IUnmarshaller<TBytesStream, TXmlUnmarshallerContext>;
  TBytesStreamUnmarshaller = class(TInterfacedObject, IUnmarshaller<TBytesStream, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IBytesStreamUnmarshaller;
  public
    class function Instance: IBytesStreamUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TBytesStream;
  end;

  TResponseMetadataUnmarshaller = class(TInterfacedObject, IUnmarshaller<TResponseMetadata, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: TResponseMetadataUnmarshaller;
    class destructor Destroy;
  public
    class function Instance: TResponseMetadataUnmarshaller;
    class function GetInstance: TResponseMetadataUnmarshaller;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TResponseMetadata;
  end;

implementation

uses
  Bcl.Utils,
  AWS.SDKUtils,
  AWS.Util.Collections;

{ TStringUnmarshaller }

class constructor TStringUnmarshaller.Create;
begin
  FInstance := TStringUnmarshaller.Create;
  FJsonInstance := TStringUnmarshaller.Create;
end;

class function TStringUnmarshaller.Instance: IStringUnmarshaller;
begin
  Result := FInstance;
end;

class function TStringUnmarshaller.JsonInstance: IJsonStringUnmarshaller;
begin
  Result := FJsonInstance;
end;

function TStringUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): string;
begin
  AContext.Read;
  Result := AContext.ReadText;
end;

function TStringUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): string;
begin
  Result := AContext.ReadText;
end;

{ TResponseMetadataUnmarshaller }

class destructor TResponseMetadataUnmarshaller.Destroy;
begin
  FInstance.Free;
end;

class function TResponseMetadataUnmarshaller.GetInstance: TResponseMetadataUnmarshaller;
begin
  if FInstance = nil then
    FInstance := TResponseMetadataUnmarshaller.Create;
  Result := FInstance;
end;

class function TResponseMetadataUnmarshaller.Instance: TResponseMetadataUnmarshaller;
begin
  Result := GetInstance;
end;

function TResponseMetadataUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TResponseMetadata;
var
  Metadata: TResponseMetadata;
  Depth: Integer;
begin
  Metadata := TResponseMetadata.Create;
  try
    Depth := AContext.CurrentDepth;
    while Depth <= AContext.CurrentDepth do
    begin
      AContext.Read;
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('ResponseMetadata/RequestId') then
          Metadata.RequestId := TStringUnmarshaller.Instance.Unmarshall(AContext)
        else
          Metadata.Metadata.Add(
            AContext.CurrentPath.Substring(AContext.CurrentPath.LastIndexOf('/') + 1),
            TStringUnmarshaller.Instance.Unmarshall(AContext));
      end;
    end;
    Result := Metadata;
    Metadata := nil;
  finally
    Metadata.Free;
  end;
end;

{ TKeyValueUnmarshaller<K, V, KUnmarshaller, VUnmarshaller> }

constructor TKeyValueUnmarshaller<K, V, KUnmarshaller, VUnmarshaller>.Create(AKeyUnmarshaller: KUnmarshaller;
  AValueUnmarshaller: VUnmarshaller);
begin
  inherited Create;
  FKeyUnmarshaller := AKeyUnmarshaller;
  FValueUnmarshaller := AValueUnmarshaller;
end;

class function TKeyValueUnmarshaller<K, V, KUnmarshaller, VUnmarshaller>.New(AKeyUnmarshaller: KUnmarshaller;
  AValueUnmarshaller: VUnmarshaller): IUnmarshaller<TPair<K, V>, TXmlUnmarshallerContext>;
begin
  Result := TKeyValueUnmarshaller<K, V, KUnmarshaller, VUnmarshaller>.Create(AKeyUnmarshaller, AValueUnmarshaller);
end;

function TKeyValueUnmarshaller<K, V, KUnmarshaller, VUnmarshaller>.Unmarshall(
  AContext: TXmlUnmarshallerContext): TPair<K, V>;
var
  Key: K;
  Value: V;
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  Key := Default(K);
  Value := Default(V);
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  while AContext.Read do
  begin
    if AContext.TestExpression('key', TargetDepth) then
      Key := FKeyUnmarshaller.Unmarshall(AContext)
    else
    if AContext.TestExpression('name', TargetDepth) then
      Key := FKeyUnmarshaller.Unmarshall(AContext)
    else
    if AContext.TestExpression('value', TargetDepth) then
      Value := FValueUnmarshaller.Unmarshall(AContext)
    else
    if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
      Break;
  end;
  Result.Key := Key;
  Result.Value := Value;
end;

{ TMemoryStreamUnmarshaller }

class function TMemoryStreamUnmarshaller.Instance: IMemoryStreamUnmarshaller;
begin
  if FInstance = nil then
    FInstance := TMemoryStreamUnmarshaller.Create;
  Result := FInstance;
end;

function TMemoryStreamUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TMemoryStream;
var
  Bytes: TArray<Byte>;
begin
  Bytes := TBclUtils.DecodeBase64(AContext.ReadText);
  Result := TMemoryStream.Create;
  try
    Result.Write(Bytes[0], Length(Bytes));
    Result.Position := 0;
  except
    Result.Free;
    raise;
  end;
end;

{ TBooleanUnmarshaller }

class constructor TBooleanUnmarshaller.Create;
begin
  FInstance := TBooleanUnmarshaller.Create;
  FJsonInstance := TBooleanUnmarshaller.Create;
end;

class function TBooleanUnmarshaller.Instance: IBooleanUnmarshaller;
begin
  Result := FInstance;
end;

class function TBooleanUnmarshaller.JsonInstance: IJsonBooleanUnmarshaller;
begin
  Result := FJsonInstance;
end;

function TBooleanUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): Boolean;
begin
  AContext.Read;
  if AContext.CurrentTokenType = TJsonToken.Null then
    Result := Default(Boolean)
  else
    Result := StrToBool(AContext.ReadText);
end;

function TBooleanUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): Boolean;
begin
  Result := StrToBool(AContext.ReadText);
end;

{ TDoubleUnmarshaller }

class constructor TDoubleUnmarshaller.Create;
begin
  FInstance := TDoubleUnmarshaller.Create;
  FJsonInstance := TDoubleUnmarshaller.Create;
  FFormatSettings := TFormatSettings.Create;
  FFormatSettings.DecimalSeparator := '.';
end;

class function TDoubleUnmarshaller.Instance: IDoubleUnmarshaller;
begin
  Result := FInstance;
end;

class function TDoubleUnmarshaller.JsonInstance: IJsonDoubleUnmarshaller;
begin
  Result := FJsonInstance;
end;

function TDoubleUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): Double;
begin
  AContext.Read;
  if AContext.CurrentTokenType = TJsonToken.Null then
    Result := Default(Double)
  else
    Result := StrToFloat(AContext.ReadText, FFormatSettings);
end;

function TDoubleUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): Double;
begin
  Result := StrToFloat(AContext.ReadText, FFormatSettings);
end;

{ TBytesStreamUnmarshaller }

class constructor TBytesStreamUnmarshaller.Create;
begin
  FInstance := TBytesStreamUnmarshaller.Create;
end;

class function TBytesStreamUnmarshaller.Instance: IBytesStreamUnmarshaller;
begin
  Result := FInstance;
end;

function TBytesStreamUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TBytesStream;
begin
  Result := TBytesStream.Create(TBclUtils.DecodeBase64(AContext.ReadText));
end;

{ TDateTimeUnmarshaller }

class constructor TDateTimeUnmarshaller.Create;
begin
  FInstance := TDateTimeUnmarshaller.Create;
  FJsonInstance := TDateTimeUnmarshaller.Create;
  FFormatSettings := TFormatSettings.Invariant;
end;

class function TDateTimeUnmarshaller.Instance: IDateTimeUnmarshaller;
begin
  Result := FInstance;
end;

class function TDateTimeUnmarshaller.JsonInstance: IJsonDateTimeUnmarshaller;
begin
  Result := FJsonInstance;
end;

function TDateTimeUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TDateTime;
begin
  Result := UnmarshallInternal(AContext.ReadText, False).Value;
end;

function TDateTimeUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDateTime;
begin
  AContext.Read;
  Result := UnmarshallInternal(AContext.ReadText, False).Value;
end;

class function TDateTimeUnmarshaller.UnmarshallInternal(const Text: string;
  TreatAsNullable: Boolean): Nullable<TDateTime>;
var
  Seconds: Double;
  IntSeconds: Int64;
  ParsedDate: TDateTime;
begin
  if TryStrToInt64(Text, IntSeconds) then
    Result := UnixToDateTime(IntSeconds, False)
  else
  if TryStrToFloat(Text, Seconds) then
    Result := TTimeZone.Local.ToLocalTime(IncMilliSecond(UnixDateDelta, Trunc(Seconds * 1000)))
  else
    if Text = '' then
    begin
      if TreatAsNullable then
        Result := SNull
      else
        Result := Default(TDateTime);
    end
    else
    begin
      if not TryStrToDateTime(Text, ParsedDate, FFormatSettings) then
        ParsedDate := TBclUtils.ISOToDateTime(Text, TTimeZoneMode.AsLocal);
    end;
end;

{ TInt64Unmarshaller }

class constructor TInt64Unmarshaller.Create;
begin
  FInstance := TInt64Unmarshaller.Create;
  FJsonInstance := TInt64Unmarshaller.Create;
end;

class function TInt64Unmarshaller.Instance: IInt64Unmarshaller;
begin
  Result := FInstance;
end;

class function TInt64Unmarshaller.JsonInstance: IJsonInt64Unmarshaller;
begin
  Result := FJsonInstance;
end;

function TInt64Unmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): Int64;
begin
  AContext.Read;
  if AContext.CurrentTokenType = TJsonToken.Null then
    Result := Default(Int64)
  else
    Result := StrToInt64(AContext.ReadText);
end;

function TInt64Unmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): Int64;
begin
  Result := StrToInt64(AContext.ReadText);
end;

{ TIntegerUnmarshaller }

class constructor TIntegerUnmarshaller.Create;
begin
  FInstance := TIntegerUnmarshaller.Create;
  FJsonInstance := TIntegerUnmarshaller.Create;
end;

class function TIntegerUnmarshaller.Instance: IIntegerUnmarshaller;
begin
  Result := FInstance;
end;

class function TIntegerUnmarshaller.JsonInstance: IJsonIntegerUnmarshaller;
begin
  Result := FJsonInstance;
end;

function TIntegerUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): Integer;
begin
  AContext.Read;
  if AContext.CurrentTokenType = TJsonToken.Null then
    Result := Default(Integer)
  else
    Result := StrToInt(AContext.ReadText);
end;

function TIntegerUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): Integer;
begin
  Result := StrToInt(AContext.ReadText);
end;

{ TJsonListUnmarshaller<I, IUnmarshaller> }

constructor TJsonListUnmarshaller<I, IUnmarshaller>.Create(AUnmarshaller: IUnmarshaller);
begin
  inherited Create;
  FUnmarshaller := AUnmarshaller;
end;

class function TJsonListUnmarshaller<I, IUnmarshaller>.JsonNew(
  AUnmarshaller: IUnmarshaller): IUnmarshaller<TList<I>, TJsonUnmarshallerContext>;
begin
  Result := TJsonListUnmarshaller<I, IUnmarshaller>.Create(AUnmarshaller);
end;

function TJsonListUnmarshaller<I, IUnmarshaller>.Unmarshall(AContext: TJsonUnmarshallerContext): TList<I>;
begin
  AContext.Read;
  if AContext.CurrentTokenType = TJsonToken.Null then
    Exit(TList<I>.Create);

  Result := TAlwaysSendList<I>.Create;
  try
    while not AContext.Peek(TJsonToken.EndArray) do
      Result.Add(FUnmarshaller.Unmarshall(AContext));
    AContext.Read;
  except
    Result.Free;
    raise;
  end;
end;

{ TJsonObjectListUnmarshaller<I, IUnmarshaller> }

constructor TJsonObjectListUnmarshaller<I, IUnmarshaller>.Create(AUnmarshaller: IUnmarshaller);
begin
  inherited Create;
  FUnmarshaller := AUnmarshaller;
end;

class function TJsonObjectListUnmarshaller<I, IUnmarshaller>.JsonNew(
  AUnmarshaller: IUnmarshaller): IUnmarshaller<TObjectList<I>, TJsonUnmarshallerContext>;
begin
  Result := TJsonObjectListUnmarshaller<I, IUnmarshaller>.Create(AUnmarshaller);
end;

function TJsonObjectListUnmarshaller<I, IUnmarshaller>.Unmarshall(AContext: TJsonUnmarshallerContext): TObjectList<I>;
begin
  AContext.Read;
  if AContext.CurrentTokenType = TJsonToken.Null then
    Exit(TObjectList<I>.Create);

  Result := TAlwaysSendObjectList<I>.Create;
  try
    while not AContext.Peek(TJsonToken.EndArray) do
      Result.Add(FUnmarshaller.Unmarshall(AContext));
    AContext.Read;
  except
    Result.Free;
    raise;
  end;
end;

{ TJsonKeyValueUnmarshaller<K, V, KUnmarshaller, VUnmarshaller> }

constructor TJsonKeyValueUnmarshaller<K, V, KUnmarshaller, VUnmarshaller>.Create(AKeyUnmarshaller: KUnmarshaller;
  AValueUnmarshaller: VUnmarshaller);
begin
  inherited Create;
  FKeyUnmarshaller := AKeyUnmarshaller;
  FValueUnmarshaller := AValueUnmarshaller;
end;

class function TJsonKeyValueUnmarshaller<K, V, KUnmarshaller, VUnmarshaller>.New(AKeyUnmarshaller: KUnmarshaller;
  AValueUnmarshaller: VUnmarshaller): IUnmarshaller<TPair<K, V>, TJsonUnmarshallerContext>;
begin
  Result := TJsonKeyValueUnmarshaller<K, V, KUnmarshaller, VUnmarshaller>.Create(AKeyUnmarshaller, AValueUnmarshaller);
end;

function TJsonKeyValueUnmarshaller<K, V, KUnmarshaller, VUnmarshaller>.Unmarshall(
  AContext: TJsonUnmarshallerContext): TPair<K, V>;
begin
  Result.Key := FKeyUnmarshaller.Unmarshall(AContext);
  Result.Value := FValueUnmarshaller.Unmarshall(AContext);
end;

{ TJsonDictionaryUnmarshaller<TKey, TValue, TKeyUnmarshaller, TValueUnmarshaller> }

constructor TJsonDictionaryUnmarshaller<TKey, TValue, TKeyUnmarshaller, TValueUnmarshaller>.Create(
  AKeyUnmarshaller: TKeyUnmarshaller; AValueUnmarshaller: TValueUnmarshaller);
begin
  inherited Create;
  FKVUnmarshaller := TJsonKeyValueUnmarshaller<TKey, TValue, TKeyUnmarshaller, TValueUnmarshaller>
    .Create(AKeyUnmarshaller, AValueUnmarshaller);
end;

class function TJsonDictionaryUnmarshaller<TKey, TValue, TKeyUnmarshaller, TValueUnmarshaller>.JsonNew(
  AKeyUnmarshaller: TKeyUnmarshaller;
  AValueUnmarshaller: TValueUnmarshaller): IUnmarshaller<TDictionary<TKey, TValue>, TJsonUnmarshallerContext>;
begin
  Result := TJsonDictionaryUnmarshaller<TKey, TValue, TKeyUnmarshaller, TValueUnmarshaller>
    .Create(AKeyUnmarshaller, AValueUnmarshaller);
end;

function TJsonDictionaryUnmarshaller<TKey, TValue, TKeyUnmarshaller, TValueUnmarshaller>.Unmarshall(
  AContext: TJsonUnmarshallerContext): TDictionary<TKey, TValue>;
var
  Item: TPair<TKey, TValue>;
begin
  AContext.Read; // Read { or null
  if AContext.CurrentTokenType = TJsonToken.Null then
    Exit(TDictionary<TKey, TValue>.Create);

  // If a dictionary is present in the response, use AlwaysSendDictionary,
  // so if the response was empty, reusing the object in the request we will
  // end up sending the same empty collection back.
  Result := TAlwaysSendDictionary<TKey, TValue>.Create;
  try
    while not AContext.Peek(TJsonToken.EndObject) do
    begin
      Item := FKVUnmarshaller.Unmarshall(AContext);
      Result.Add(Item.Key, Item.Value);
    end;
    AContext.Read;
  except
    Result.Free;
    raise;
  end;
end;

{ TJsonObjectDictionaryUnmarshaller<TKey, TValue, TKeyUnmarshaller, TValueUnmarshaller> }

constructor TJsonObjectDictionaryUnmarshaller<TKey, TValue, TKeyUnmarshaller, TValueUnmarshaller>.Create(
  AKeyUnmarshaller: TKeyUnmarshaller; AValueUnmarshaller: TValueUnmarshaller);
begin
  inherited Create;
  FKVUnmarshaller := TJsonKeyValueUnmarshaller<TKey, TValue, TKeyUnmarshaller, TValueUnmarshaller>
    .Create(AKeyUnmarshaller, AValueUnmarshaller);
end;

class function TJsonObjectDictionaryUnmarshaller<TKey, TValue, TKeyUnmarshaller, TValueUnmarshaller>.JsonNew(
  AKeyUnmarshaller: TKeyUnmarshaller;
  AValueUnmarshaller: TValueUnmarshaller): IUnmarshaller<TObjectDictionary<TKey, TValue>, TJsonUnmarshallerContext>;
begin
  Result := TJsonObjectDictionaryUnmarshaller<TKey, TValue, TKeyUnmarshaller, TValueUnmarshaller>
    .Create(AKeyUnmarshaller, AValueUnmarshaller);
end;

function TJsonObjectDictionaryUnmarshaller<TKey, TValue, TKeyUnmarshaller, TValueUnmarshaller>.Unmarshall(
  AContext: TJsonUnmarshallerContext): TObjectDictionary<TKey, TValue>;
var
  Item: TPair<TKey, TValue>;
begin
  AContext.Read; // Read { or null
  if AContext.CurrentTokenType = TJsonToken.Null then
    Exit(TObjectDictionary<TKey, TValue>.Create([doOwnsValues]));

  // If a dictionary is present in the response, use AlwaysSendDictionary,
  // so if the response was empty, reusing the object in the request we will
  // end up sending the same empty collection back.
  Result := TAlwaysSendObjectDictionary<TKey, TValue>.Create([doOwnsValues]);
  try
    while not AContext.Peek(TJsonToken.EndObject) do
    begin
      Item := FKVUnmarshaller.Unmarshall(AContext);
      Result.Add(Item.Key, Item.Value);
    end;
    AContext.Read;
  except
    Result.Free;
    raise;
  end;
end;

end.
