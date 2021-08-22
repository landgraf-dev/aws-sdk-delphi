unit AWS.LexRuntimeService.Transform.IntentSummaryMarshaller;

interface

uses
  AWS.LexRuntimeService.Model.IntentSummary, 
  AWS.Transform.RequestMarshaller;

type
  IIntentSummaryMarshaller = IRequestMarshaller<TIntentSummary, TJsonMarshallerContext>;
  
  TIntentSummaryMarshaller = class(TInterfacedObject, IRequestMarshaller<TIntentSummary, TJsonMarshallerContext>)
  strict private
    class var FInstance: IIntentSummaryMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TIntentSummary; Context: TJsonMarshallerContext);
    class function Instance: IIntentSummaryMarshaller; static;
  end;
  
implementation

{ TIntentSummaryMarshaller }

procedure TIntentSummaryMarshaller.Marshall(ARequestObject: TIntentSummary; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetCheckpointLabel then
  begin
    Context.Writer.WriteName('checkpointLabel');
    Context.Writer.WriteString(ARequestObject.CheckpointLabel);
  end;
  if ARequestObject.IsSetConfirmationStatus then
  begin
    Context.Writer.WriteName('confirmationStatus');
    Context.Writer.WriteString(ARequestObject.ConfirmationStatus.Value);
  end;
  if ARequestObject.IsSetDialogActionType then
  begin
    Context.Writer.WriteName('dialogActionType');
    Context.Writer.WriteString(ARequestObject.DialogActionType.Value);
  end;
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
end;

class constructor TIntentSummaryMarshaller.Create;
begin
  FInstance := TIntentSummaryMarshaller.Create;
end;

class function TIntentSummaryMarshaller.Instance: IIntentSummaryMarshaller;
begin
  Result := FInstance;
end;

end.
