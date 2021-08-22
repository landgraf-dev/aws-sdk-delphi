unit AWS.LexRuntimeV2.Transform.IntentMarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.Intent, 
  AWS.Transform.RequestMarshaller, 
  AWS.LexRuntimeV2.Transform.SlotMarshaller;

type
  IIntentMarshaller = IRequestMarshaller<TIntent, TJsonMarshallerContext>;
  
  TIntentMarshaller = class(TInterfacedObject, IRequestMarshaller<TIntent, TJsonMarshallerContext>)
  strict private
    class var FInstance: IIntentMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TIntent; Context: TJsonMarshallerContext);
    class function Instance: IIntentMarshaller; static;
  end;
  
implementation

{ TIntentMarshaller }

procedure TIntentMarshaller.Marshall(ARequestObject: TIntent; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetConfirmationState then
  begin
    Context.Writer.WriteName('confirmationState');
    Context.Writer.WriteString(ARequestObject.ConfirmationState.Value);
  end;
  if ARequestObject.IsSetName then
  begin
    Context.Writer.WriteName('name');
    Context.Writer.WriteString(ARequestObject.Name);
  end;
  if ARequestObject.IsSetSlots then
  begin
    Context.Writer.WriteName('slots');
    Context.Writer.WriteBeginObject;
    for var ARequestObjectSlotsKvp in ARequestObject.Slots do
    begin
      Context.Writer.WriteName(ARequestObjectSlotsKvp.Key);
      var ARequestObjectSlotsValue := ARequestObjectSlotsKvp.Value;
      Context.Writer.WriteBeginObject;
      TSlotMarshaller.Instance.Marshall(ARequestObjectSlotsValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetState then
  begin
    Context.Writer.WriteName('state');
    Context.Writer.WriteString(ARequestObject.State.Value);
  end;
end;

class constructor TIntentMarshaller.Create;
begin
  FInstance := TIntentMarshaller.Create;
end;

class function TIntentMarshaller.Instance: IIntentMarshaller;
begin
  Result := FInstance;
end;

end.
