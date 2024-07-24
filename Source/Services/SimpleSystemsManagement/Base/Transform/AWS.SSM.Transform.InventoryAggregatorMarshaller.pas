unit AWS.SSM.Transform.InventoryAggregatorMarshaller;

interface

uses
  AWS.SSM.Model.InventoryAggregator, 
  AWS.Transform.RequestMarshaller, 
  AWS.SSM.Transform.InventoryGroupMarshaller;

type
  IInventoryAggregatorMarshaller = IRequestMarshaller<TInventoryAggregator, TJsonMarshallerContext>;
  
  TInventoryAggregatorMarshaller = class(TInterfacedObject, IRequestMarshaller<TInventoryAggregator, TJsonMarshallerContext>)
  strict private
    class var FInstance: IInventoryAggregatorMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TInventoryAggregator; Context: TJsonMarshallerContext);
    class function Instance: IInventoryAggregatorMarshaller; static;
  end;
  
implementation

{ TInventoryAggregatorMarshaller }

procedure TInventoryAggregatorMarshaller.Marshall(ARequestObject: TInventoryAggregator; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetAggregators then
  begin
    Context.Writer.WriteName('Aggregators');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectAggregatorsListValue in ARequestObject.Aggregators do
    begin
      Context.Writer.WriteBeginObject;
      TInventoryAggregatorMarshaller.Instance.Marshall(ARequestObjectAggregatorsListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetExpression then
  begin
    Context.Writer.WriteName('Expression');
    Context.Writer.WriteString(ARequestObject.Expression);
  end;
  if ARequestObject.IsSetGroups then
  begin
    Context.Writer.WriteName('Groups');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectGroupsListValue in ARequestObject.Groups do
    begin
      Context.Writer.WriteBeginObject;
      TInventoryGroupMarshaller.Instance.Marshall(ARequestObjectGroupsListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TInventoryAggregatorMarshaller.Create;
begin
  FInstance := TInventoryAggregatorMarshaller.Create;
end;

class function TInventoryAggregatorMarshaller.Instance: IInventoryAggregatorMarshaller;
begin
  Result := FInstance;
end;

end.
