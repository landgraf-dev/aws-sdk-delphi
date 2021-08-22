unit AWS.LexRuntimeV2.Transform.DialogActionMarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.DialogAction, 
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
  if ARequestObject.IsSetSlotToElicit then
  begin
    Context.Writer.WriteName('slotToElicit');
    Context.Writer.WriteString(ARequestObject.SlotToElicit);
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
