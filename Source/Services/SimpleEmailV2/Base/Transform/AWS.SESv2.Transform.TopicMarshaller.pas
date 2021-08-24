unit AWS.SESv2.Transform.TopicMarshaller;

interface

uses
  AWS.SESv2.Model.Topic, 
  AWS.Transform.RequestMarshaller;

type
  ITopicMarshaller = IRequestMarshaller<TTopic, TJsonMarshallerContext>;
  
  TTopicMarshaller = class(TInterfacedObject, IRequestMarshaller<TTopic, TJsonMarshallerContext>)
  strict private
    class var FInstance: ITopicMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TTopic; Context: TJsonMarshallerContext);
    class function Instance: ITopicMarshaller; static;
  end;
  
implementation

{ TTopicMarshaller }

procedure TTopicMarshaller.Marshall(ARequestObject: TTopic; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetDefaultSubscriptionStatus then
  begin
    Context.Writer.WriteName('DefaultSubscriptionStatus');
    Context.Writer.WriteString(ARequestObject.DefaultSubscriptionStatus.Value);
  end;
  if ARequestObject.IsSetDescription then
  begin
    Context.Writer.WriteName('Description');
    Context.Writer.WriteString(ARequestObject.Description);
  end;
  if ARequestObject.IsSetDisplayName then
  begin
    Context.Writer.WriteName('DisplayName');
    Context.Writer.WriteString(ARequestObject.DisplayName);
  end;
  if ARequestObject.IsSetTopicName then
  begin
    Context.Writer.WriteName('TopicName');
    Context.Writer.WriteString(ARequestObject.TopicName);
  end;
end;

class constructor TTopicMarshaller.Create;
begin
  FInstance := TTopicMarshaller.Create;
end;

class function TTopicMarshaller.Instance: ITopicMarshaller;
begin
  Result := FInstance;
end;

end.
