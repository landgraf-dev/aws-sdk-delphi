unit AWS.LexRuntimeService.Transform.DialogActionMarshaller;

interface

uses
  AWS.LexRuntimeService.Model.DialogAction, 
  AWS.Transform.RequestMarshaller;

type
  IDialogActionMarshaller = IRequestMarshaller<TDialogAction, TJsonMarshallerContext>;
  
  TDialogActionMarshaller = class(TInterfacedObject, IRequestMarshaller<TDialogAction, TJsonMarshallerContext>)
  strict private
    class var FInstance: IDialogActionMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TDialogAction; Context: TJsonMarshallerContext);
    class function Instance: IDialogActionMarshaller; static;
  end;
  
implementation

{ TDialogActionMarshaller }

procedure TDialogActionMarshaller.Marshall(ARequestObject: TDialogAction; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetFulfillmentState then
  begin
    Context.Writer.WriteName('fulfillmentState');
    Context.Writer.WriteString(ARequestObject.FulfillmentState.Value);
  end;
  if ARequestObject.IsSetIntentName then
  begin
    Context.Writer.WriteName('intentName');
    Context.Writer.WriteString(ARequestObject.IntentName);
  end;
  if ARequestObject.IsSetMessage then
  begin
    Context.Writer.WriteName('message');
    Context.Writer.WriteString(ARequestObject.Message);
  end;
  if ARequestObject.IsSetMessageFormat then
  begin
    Context.Writer.WriteName('messageFormat');
    Context.Writer.WriteString(ARequestObject.MessageFormat.Value);
  end;
  if ARequestObject.IsSetSlotToElicit then
  begin
    Context.Writer.WriteName('slotToElicit');
    Context.Writer.WriteString(ARequestObject.SlotToElicit);
  end;
  if ARequestObject.IsSetSlots then
  begin
    Context.Writer.WriteName('slots');
    Context.Writer.WriteBeginObject;
    for var ARequestObjectSlotsKvp in ARequestObject.Slots do
    begin
      Context.Writer.WriteName(ARequestObjectSlotsKvp.Key);
      var ARequestObjectSlotsValue := ARequestObjectSlotsKvp.Value;
      Context.Writer.WriteString(ARequestObjectSlotsValue);
    end;
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetType then
  begin
    Context.Writer.WriteName('type');
    Context.Writer.WriteString(ARequestObject.&Type.Value);
  end;
end;

class constructor TDialogActionMarshaller.Create;
begin
  FInstance := TDialogActionMarshaller.Create;
end;

class function TDialogActionMarshaller.Instance: IDialogActionMarshaller;
begin
  Result := FInstance;
end;

end.
