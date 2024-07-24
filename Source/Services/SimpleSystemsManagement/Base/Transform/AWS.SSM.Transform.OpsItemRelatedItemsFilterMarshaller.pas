unit AWS.SSM.Transform.OpsItemRelatedItemsFilterMarshaller;

interface

uses
  AWS.SSM.Model.OpsItemRelatedItemsFilter, 
  AWS.Transform.RequestMarshaller;

type
  IOpsItemRelatedItemsFilterMarshaller = IRequestMarshaller<TOpsItemRelatedItemsFilter, TJsonMarshallerContext>;
  
  TOpsItemRelatedItemsFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TOpsItemRelatedItemsFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IOpsItemRelatedItemsFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TOpsItemRelatedItemsFilter; Context: TJsonMarshallerContext);
    class function Instance: IOpsItemRelatedItemsFilterMarshaller; static;
  end;
  
implementation

{ TOpsItemRelatedItemsFilterMarshaller }

procedure TOpsItemRelatedItemsFilterMarshaller.Marshall(ARequestObject: TOpsItemRelatedItemsFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKey then
  begin
    Context.Writer.WriteName('Key');
    Context.Writer.WriteString(ARequestObject.Key.Value);
  end;
  if ARequestObject.IsSetOperator then
  begin
    Context.Writer.WriteName('Operator');
    Context.Writer.WriteString(ARequestObject.Operator.Value);
  end;
  if ARequestObject.IsSetValues then
  begin
    Context.Writer.WriteName('Values');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectValuesListValue in ARequestObject.Values do
      Context.Writer.WriteString(ARequestObjectValuesListValue);
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TOpsItemRelatedItemsFilterMarshaller.Create;
begin
  FInstance := TOpsItemRelatedItemsFilterMarshaller.Create;
end;

class function TOpsItemRelatedItemsFilterMarshaller.Instance: IOpsItemRelatedItemsFilterMarshaller;
begin
  Result := FInstance;
end;

end.
