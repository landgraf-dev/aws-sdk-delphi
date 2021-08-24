unit AWS.SESv2.Transform.TopicPreferenceMarshaller;

interface

uses
  AWS.SESv2.Model.TopicPreference, 
  AWS.Transform.RequestMarshaller;

type
  ITopicPreferenceMarshaller = IRequestMarshaller<TTopicPreference, TJsonMarshallerContext>;
  
  TTopicPreferenceMarshaller = class(TInterfacedObject, IRequestMarshaller<TTopicPreference, TJsonMarshallerContext>)
  strict private
    class var FInstance: ITopicPreferenceMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TTopicPreference; Context: TJsonMarshallerContext);
    class function Instance: ITopicPreferenceMarshaller; static;
  end;
  
implementation

{ TTopicPreferenceMarshaller }

procedure TTopicPreferenceMarshaller.Marshall(ARequestObject: TTopicPreference; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetSubscriptionStatus then
  begin
    Context.Writer.WriteName('SubscriptionStatus');
    Context.Writer.WriteString(ARequestObject.SubscriptionStatus.Value);
  end;
  if ARequestObject.IsSetTopicName then
  begin
    Context.Writer.WriteName('TopicName');
    Context.Writer.WriteString(ARequestObject.TopicName);
  end;
end;

class constructor TTopicPreferenceMarshaller.Create;
begin
  FInstance := TTopicPreferenceMarshaller.Create;
end;

class function TTopicPreferenceMarshaller.Instance: ITopicPreferenceMarshaller;
begin
  Result := FInstance;
end;

end.
