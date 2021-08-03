unit AWS.Internal.ParameterCollection;

interface

uses
  System.Generics.Collections,
  Bcl.Collections;

type
  TParameterValue = class abstract
  end;

  TParameterPair = TPair<string, string>;
  TParameterPairArray = TArray<TParameterPair>;

  TParameterCollection = class(TOrderedObjectDictionary<string, TParameterValue>)
  public
    procedure Add(const Key, Value: string); overload;
    function GetSortedParametersList: TParameterPairArray;
  end;

  TStringParameterValue = class(TParameterValue)
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    property Value: string read FValue write FValue;
  end;

  TStringListParameterValue = class(TParameterValue)
  strict private
    FValue: TList<string>;
  private
    procedure SetValue(const Value: TList<string>);
  public
    constructor Create;
    destructor Destroy; override;
    property Value: TList<string> read FValue write SetValue;
  end;

implementation

uses
  AWS.Runtime.Exceptions;

{ TParameterCollection }

procedure TParameterCollection.Add(const Key, Value: string);
begin
  inherited Add(Key, TStringParameterValue.Create(Value));
end;

function TParameterCollection.GetSortedParametersList: TParameterPairArray;
var
  Kvp: TPair<string, TParameterValue>;
  Value: TParameterValue;
  I: Integer;
begin
  SetLength(Result, Self.Count);

  I := 0;
  for Kvp in Self do
  begin
    Result[I].Key := Kvp.Key;
    Value := Kvp.Value;
    if Value is TStringParameterValue then
      Result[I].Value := TStringParameterValue(Value).Value
    else
      raise EAmazonClientException.Create('Unsupported parameter value type "' + Value.ClassName + '"');
    Inc(I);
  end;
end;

{ TStringParameterValue }

constructor TStringParameterValue.Create(const AValue: string);
begin
  inherited Create;
  FValue := AValue;
end;

{ TStringListParameterValue }

constructor TStringListParameterValue.Create;
begin
  inherited Create;
  FValue := TList<string>.Create;
end;

destructor TStringListParameterValue.Destroy;
begin
  FValue.Free;
  inherited;
end;

procedure TStringListParameterValue.SetValue(const Value: TList<string>);
begin
  if FValue <> Value then
  begin
    FValue.Free;
    FValue := Value;
  end;
end;

end.
