unit AWS.SSM.Transform.InventoryGroupMarshaller;

interface

uses
  AWS.SSM.Model.InventoryGroup, 
  AWS.Transform.RequestMarshaller, 
  AWS.SSM.Transform.InventoryFilterMarshaller;

type
  IInventoryGroupMarshaller = IRequestMarshaller<TInventoryGroup, TJsonMarshallerContext>;
  
  TInventoryGroupMarshaller = class(TInterfacedObject, IRequestMarshaller<TInventoryGroup, TJsonMarshallerContext>)
  strict private
    class var FInstance: IInventoryGroupMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TInventoryGroup; Context: TJsonMarshallerContext);
    class function Instance: IInventoryGroupMarshaller; static;
  end;
  
implementation

{ TInventoryGroupMarshaller }

procedure TInventoryGroupMarshaller.Marshall(ARequestObject: TInventoryGroup; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetFilters then
  begin
    Context.Writer.WriteName('Filters');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectFiltersListValue in ARequestObject.Filters do
    begin
      Context.Writer.WriteBeginObject;
      TInventoryFilterMarshaller.Instance.Marshall(ARequestObjectFiltersListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetName then
  begin
    Context.Writer.WriteName('Name');
    Context.Writer.WriteString(ARequestObject.Name);
  end;
end;

class constructor TInventoryGroupMarshaller.Create;
begin
  FInstance := TInventoryGroupMarshaller.Create;
end;

class function TInventoryGroupMarshaller.Instance: IInventoryGroupMarshaller;
begin
  Result := FInstance;
end;

end.
