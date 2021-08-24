unit AWS.SESv2.Transform.MessageTagMarshaller;

interface

uses
  AWS.SESv2.Model.MessageTag, 
  AWS.Transform.RequestMarshaller;

type
  IMessageTagMarshaller = IRequestMarshaller<TMessageTag, TJsonMarshallerContext>;
  
  TMessageTagMarshaller = class(TInterfacedObject, IRequestMarshaller<TMessageTag, TJsonMarshallerContext>)
  strict private
    class var FInstance: IMessageTagMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TMessageTag; Context: TJsonMarshallerContext);
    class function Instance: IMessageTagMarshaller; static;
  end;
  
implementation

{ TMessageTagMarshaller }

procedure TMessageTagMarshaller.Marshall(ARequestObject: TMessageTag; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetName then
  begin
    Context.Writer.WriteName('Name');
    Context.Writer.WriteString(ARequestObject.Name);
  end;
  if ARequestObject.IsSetValue then
  begin
    Context.Writer.WriteName('Value');
    Context.Writer.WriteString(ARequestObject.Value);
  end;
end;

class constructor TMessageTagMarshaller.Create;
begin
  FInstance := TMessageTagMarshaller.Create;
end;

class function TMessageTagMarshaller.Instance: IMessageTagMarshaller;
begin
  Result := FInstance;
end;

end.
