unit AWS.LexRuntimeV2.Transform.ButtonMarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.Button, 
  AWS.Transform.RequestMarshaller;

type
  IButtonMarshaller = IRequestMarshaller<TButton, TJsonMarshallerContext>;
  
  TButtonMarshaller = class(TInterfacedObject, IRequestMarshaller<TButton, TJsonMarshallerContext>)
  strict private
    class var FInstance: IButtonMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TButton; Context: TJsonMarshallerContext);
    class function Instance: IButtonMarshaller; static;
  end;
  
implementation

{ TButtonMarshaller }

procedure TButtonMarshaller.Marshall(ARequestObject: TButton; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetText then
  begin
    Context.Writer.WriteName('text');
    Context.Writer.WriteString(ARequestObject.Text);
  end;
  if ARequestObject.IsSetValue then
  begin
    Context.Writer.WriteName('value');
    Context.Writer.WriteString(ARequestObject.Value);
  end;
end;

class constructor TButtonMarshaller.Create;
begin
  FInstance := TButtonMarshaller.Create;
end;

class function TButtonMarshaller.Instance: IButtonMarshaller;
begin
  Result := FInstance;
end;

end.
