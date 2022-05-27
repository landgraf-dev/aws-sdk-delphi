unit AWS.LexRuntimeV2.Transform.RuntimeHintsMarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.RuntimeHints, 
  AWS.Transform.RequestMarshaller, 
  AWS.LexRuntimeV2.Transform.RuntimeHintDetailsMarshaller;

type
  IRuntimeHintsMarshaller = IRequestMarshaller<TRuntimeHints, TJsonMarshallerContext>;
  
  TRuntimeHintsMarshaller = class(TInterfacedObject, IRequestMarshaller<TRuntimeHints, TJsonMarshallerContext>)
  strict private
    class var FInstance: IRuntimeHintsMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TRuntimeHints; Context: TJsonMarshallerContext);
    class function Instance: IRuntimeHintsMarshaller; static;
  end;
  
implementation

{ TRuntimeHintsMarshaller }

procedure TRuntimeHintsMarshaller.Marshall(ARequestObject: TRuntimeHints; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetSlotHints then
  begin
    Context.Writer.WriteName('slotHints');
    Context.Writer.WriteBeginObject;
    for var ARequestObjectSlotHintsKvp in ARequestObject.SlotHints do
    begin
      Context.Writer.WriteName(ARequestObjectSlotHintsKvp.Key);
      var ARequestObjectSlotHintsValue := ARequestObjectSlotHintsKvp.Value;
      Context.Writer.WriteBeginObject;
      for var ARequestObjectSlotHintsValueKvp in ARequestObjectSlotHintsValue do
      begin
        Context.Writer.WriteName(ARequestObjectSlotHintsValueKvp.Key);
        var ARequestObjectSlotHintsValueValue := ARequestObjectSlotHintsValueKvp.Value;
        Context.Writer.WriteBeginObject;
        TRuntimeHintDetailsMarshaller.Instance.Marshall(ARequestObjectSlotHintsValueValue, Context);
        Context.Writer.WriteEndObject;
      end;
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TRuntimeHintsMarshaller.Create;
begin
  FInstance := TRuntimeHintsMarshaller.Create;
end;

class function TRuntimeHintsMarshaller.Instance: IRuntimeHintsMarshaller;
begin
  Result := FInstance;
end;

end.
