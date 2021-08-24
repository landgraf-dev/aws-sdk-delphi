unit AWS.SESv2.Transform.TopicFilterMarshaller;

interface

uses
  AWS.SESv2.Model.TopicFilter, 
  AWS.Transform.RequestMarshaller;

type
  ITopicFilterMarshaller = IRequestMarshaller<TTopicFilter, TJsonMarshallerContext>;
  
  TTopicFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TTopicFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: ITopicFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TTopicFilter; Context: TJsonMarshallerContext);
    class function Instance: ITopicFilterMarshaller; static;
  end;
  
implementation

{ TTopicFilterMarshaller }

procedure TTopicFilterMarshaller.Marshall(ARequestObject: TTopicFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetTopicName then
  begin
    Context.Writer.WriteName('TopicName');
    Context.Writer.WriteString(ARequestObject.TopicName);
  end;
  if ARequestObject.IsSetUseDefaultIfPreferenceUnavailable then
  begin
    Context.Writer.WriteName('UseDefaultIfPreferenceUnavailable');
    Context.Writer.WriteBoolean(ARequestObject.UseDefaultIfPreferenceUnavailable);
  end;
end;

class constructor TTopicFilterMarshaller.Create;
begin
  FInstance := TTopicFilterMarshaller.Create;
end;

class function TTopicFilterMarshaller.Instance: ITopicFilterMarshaller;
begin
  Result := FInstance;
end;

end.
