unit AWS.Internal.ParameterDictionary;

interface

uses
  System.Generics.Collections,
  AWS.Internal.ParameterCollection;

type
  IParameterDictionary = interface
    function GetItems(const Key: string): string;
    procedure SetItems(const Key: string; const Value: string);
    function GetKeys: TArray<string>;
    function GetValues: TArray<string>;

    function Count: Integer;
    procedure Add(const Key, Value: string);
    function ContainsKey(const Key: string): Boolean;
    procedure Remove(const Key: string);
    property Items[const Key: string]: string read GetItems write SetItems; default;
    property Keys: TArray<string> read GetKeys;
    property Values: TArray<string> read GetValues;
  end;

  TParameterDictionaryFacade = class(TInterfacedObject, IParameterDictionary)
  strict private
    FParameterCollection: TParameterCollection;
    function GetItems(const Key: string): string;
    procedure SetItems(const Key: string; const Value: string);
    function GetKeys: TArray<string>;
    function GetValues: TArray<string>;
    class function ParameterValueToString(PV: TParameterValue): string; static;
    class procedure UpdateParameterValue(PV: TParameterValue; const ANewValue: string); static;
  public
    constructor Create(ACollection: TParameterCollection);
    procedure Add(const Key, Value: string);
    function ContainsKey(const Key: string): Boolean;
    function Count: Integer;
    procedure Remove(const Key: string);
    property Items[const Key: string]: string read GetItems write SetItems; default;
  end;

implementation

uses
  AWS.Runtime.Exceptions,
  Bcl.Json;

{ TParameterDictionaryFacade }

procedure TParameterDictionaryFacade.Add(const Key, Value: string);
begin
  FParameterCollection.Add(Key, Value)
end;

function TParameterDictionaryFacade.ContainsKey(const Key: string): Boolean;
begin
  Result := FParameterCollection.ContainsKey(Key);
end;

function TParameterDictionaryFacade.Count: Integer;
begin
  Result := FParameterCollection.Count;
end;

constructor TParameterDictionaryFacade.Create(ACollection: TParameterCollection);
begin
  inherited Create;
  FParameterCollection := ACollection;
end;

function TParameterDictionaryFacade.GetItems(const Key: string): string;
begin
  Result := ParameterValueToString(FParameterCollection[Key]);
end;

function TParameterDictionaryFacade.GetKeys: TArray<string>;
begin
  SetLength(Result, FParameterCollection.Count);
  for var I := 0 to FParameterCollection.Count - 1 do
    Result[I] := FParameterCollection.Keys[I];
end;

function TParameterDictionaryFacade.GetValues: TArray<string>;
begin
  SetLength(Result, FParameterCollection.Count);
  for var I := 0 to FParameterCollection.Count - 1 do
    Result[I] := ParameterValueToString(FParameterCollection.Values[I]);
end;

class function TParameterDictionaryFacade.ParameterValueToString(PV: TParameterValue): string;
begin
  if PV is TStringParameterValue then
    Result := TStringParameterValue(PV).Value
  else
  if PV is TStringListParameterValue then
    Result := TJson.Serialize(TStringListParameterValue(PV).Value)
  else
    raise EAmazonClientException.Create('Unexpected parameter value type ' + PV.ClassName);
end;

procedure TParameterDictionaryFacade.Remove(const Key: string);
begin
  FParameterCollection.Remove(Key);
end;

procedure TParameterDictionaryFacade.SetItems(const Key, Value: string);
var
  PV: TParameterValue;
begin
  if FParameterCollection.TryGetValue(Key, PV) then
    UpdateParameterValue(PV, Value)
  else
    FParameterCollection.Add(Key, TStringParameterValue.Create(Value));
end;

class procedure TParameterDictionaryFacade.UpdateParameterValue(PV: TParameterValue; const ANewValue: string);
begin
  if PV is TStringParameterValue then
    TStringParameterValue(PV).Value := ANewValue
  else
  if PV is TStringListParameterValue then
    TStringListParameterValue(PV).Value := TJson.Deserialize<TList<string>>(ANewValue)
  else
    raise EAmazonClientException.Create('Unexpected parameter value type ' + PV.ClassName);
end;

end.
