unit AWS.LexRuntimeV2.Transform.SlotMarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.Slot, 
  AWS.Transform.RequestMarshaller, 
  AWS.LexRuntimeV2.Transform.ValueMarshaller;

type
  ISlotMarshaller = IRequestMarshaller<TSlot, TJsonMarshallerContext>;
  
  TSlotMarshaller = class(TInterfacedObject, IRequestMarshaller<TSlot, TJsonMarshallerContext>)
  strict private
    class var FInstance: ISlotMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TSlot; Context: TJsonMarshallerContext);
    class function Instance: ISlotMarshaller; static;
  end;
  
implementation

{ TSlotMarshaller }

procedure TSlotMarshaller.Marshall(ARequestObject: TSlot; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetShape then
  begin
    Context.Writer.WriteName('shape');
    Context.Writer.WriteString(ARequestObject.Shape.Value);
  end;
  if ARequestObject.IsSetValue then
  begin
    Context.Writer.WriteName('value');
    Context.Writer.WriteBeginObject;
    TValueMarshaller.Instance.Marshall(ARequestObject.Value, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetValues then
  begin
    Context.Writer.WriteName('values');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectValuesListValue in ARequestObject.Values do
    begin
      Context.Writer.WriteBeginObject;
      TSlotMarshaller.Instance.Marshall(ARequestObjectValuesListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TSlotMarshaller.Create;
begin
  FInstance := TSlotMarshaller.Create;
end;

class function TSlotMarshaller.Instance: ISlotMarshaller;
begin
  Result := FInstance;
end;

end.
