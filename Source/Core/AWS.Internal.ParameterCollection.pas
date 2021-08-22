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
    procedure Add(const Key: string; Values: TEnumerable<string>); overload;
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
    constructor Create; overload;
    constructor Create(AValue: TEnumerable<string>); overload;
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

procedure TParameterCollection.Add(const Key: string; Values: TEnumerable<string>);
begin
  inherited Add(Key, TStringListParameterValue.Create(Values));
end;

function TParameterCollection.GetSortedParametersList: TParameterPairArray;
var
  Kvp: TPair<string, TParameterValue>;
  Value: TParameterValue;
  I: Integer;
  ListIndex: Integer;
  SortedList: TList<string>;
begin
  SetLength(Result, Self.Count);

  I := 0;
  for Kvp in Self do
  begin
    Result[I].Key := Kvp.Key;
    Value := Kvp.Value;
    if Value is TStringParameterValue then
    begin
      Result[I].Value := TStringParameterValue(Value).Value;
      Inc(I);
    end
    else
    if Value is TStringListParameterValue then
    begin
      SortedList := TStringListParameterValue(Value).Value;
      SortedList.Sort;
      SetLength(Result, Length(Result) + SortedList.Count);
      for ListIndex := 0 to SortedList.Count - 1 do
      begin
        Result[I].Key := Kvp.Key;
        Result[I].Value := SortedList[ListIndex];
        Inc(I);
      end;
    end
    else
      raise EAmazonClientException.Create('Unsupported parameter value type "' + Value.ClassName + '"');
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

constructor TStringListParameterValue.Create(AValue: TEnumerable<string>);
begin
  inherited Create;
  FValue := TList<string>.Create(AValue);
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
