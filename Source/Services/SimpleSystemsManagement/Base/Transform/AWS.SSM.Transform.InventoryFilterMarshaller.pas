unit AWS.SSM.Transform.InventoryFilterMarshaller;

interface

uses
  AWS.SSM.Model.InventoryFilter, 
  AWS.Transform.RequestMarshaller;

type
  IInventoryFilterMarshaller = IRequestMarshaller<TInventoryFilter, TJsonMarshallerContext>;
  
  TInventoryFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TInventoryFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IInventoryFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TInventoryFilter; Context: TJsonMarshallerContext);
    class function Instance: IInventoryFilterMarshaller; static;
  end;
  
implementation

{ TInventoryFilterMarshaller }

procedure TInventoryFilterMarshaller.Marshall(ARequestObject: TInventoryFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKey then
  begin
    Context.Writer.WriteName('Key');
    Context.Writer.WriteString(ARequestObject.Key);
  end;
  if ARequestObject.IsSetType then
  begin
    Context.Writer.WriteName('Type');
    Context.Writer.WriteString(ARequestObject.&Type.Value);
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

class constructor TInventoryFilterMarshaller.Create;
begin
  FInstance := TInventoryFilterMarshaller.Create;
end;

class function TInventoryFilterMarshaller.Instance: IInventoryFilterMarshaller;
begin
  Result := FInstance;
end;

end.
