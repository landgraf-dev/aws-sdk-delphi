unit AWS.SSM.Transform.OpsAggregatorMarshaller;

interface

uses
  AWS.SSM.Model.OpsAggregator, 
  AWS.Transform.RequestMarshaller, 
  AWS.SSM.Transform.OpsFilterMarshaller;

type
  IOpsAggregatorMarshaller = IRequestMarshaller<TOpsAggregator, TJsonMarshallerContext>;
  
  TOpsAggregatorMarshaller = class(TInterfacedObject, IRequestMarshaller<TOpsAggregator, TJsonMarshallerContext>)
  strict private
    class var FInstance: IOpsAggregatorMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TOpsAggregator; Context: TJsonMarshallerContext);
    class function Instance: IOpsAggregatorMarshaller; static;
  end;
  
implementation

{ TOpsAggregatorMarshaller }

procedure TOpsAggregatorMarshaller.Marshall(ARequestObject: TOpsAggregator; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetAggregatorType then
  begin
    Context.Writer.WriteName('AggregatorType');
    Context.Writer.WriteString(ARequestObject.AggregatorType);
  end;
  if ARequestObject.IsSetAggregators then
  begin
    Context.Writer.WriteName('Aggregators');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectAggregatorsListValue in ARequestObject.Aggregators do
    begin
      Context.Writer.WriteBeginObject;
      TOpsAggregatorMarshaller.Instance.Marshall(ARequestObjectAggregatorsListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetAttributeName then
  begin
    Context.Writer.WriteName('AttributeName');
    Context.Writer.WriteString(ARequestObject.AttributeName);
  end;
  if ARequestObject.IsSetFilters then
  begin
    Context.Writer.WriteName('Filters');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectFiltersListValue in ARequestObject.Filters do
    begin
      Context.Writer.WriteBeginObject;
      TOpsFilterMarshaller.Instance.Marshall(ARequestObjectFiltersListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetTypeName then
  begin
    Context.Writer.WriteName('TypeName');
    Context.Writer.WriteString(ARequestObject.TypeName);
  end;
  if ARequestObject.IsSetValues then
  begin
    Context.Writer.WriteName('Values');
    Context.Writer.WriteBeginObject;
    for var ARequestObjectValuesKvp in ARequestObject.Values do
    begin
      Context.Writer.WriteName(ARequestObjectValuesKvp.Key);
      var ARequestObjectValuesValue := ARequestObjectValuesKvp.Value;
      Context.Writer.WriteString(ARequestObjectValuesValue);
    end;
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TOpsAggregatorMarshaller.Create;
begin
  FInstance := TOpsAggregatorMarshaller.Create;
end;

class function TOpsAggregatorMarshaller.Instance: IOpsAggregatorMarshaller;
begin
  Result := FInstance;
end;

end.
