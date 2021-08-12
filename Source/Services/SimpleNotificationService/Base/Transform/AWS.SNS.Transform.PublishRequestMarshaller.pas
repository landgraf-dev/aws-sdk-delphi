unit AWS.SNS.Transform.PublishRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.PublishRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.SNS.Model.MessageAttributeValue;

type
  IPublishRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPublishRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPublishRequest>, IPublishRequestMarshaller)
  strict private
    class var FInstance: IPublishRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPublishRequest): IRequest; overload;
    class function Instance: IPublishRequestMarshaller; static;
  end;
  
implementation

{ TPublishRequestMarshaller }

function TPublishRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPublishRequest(AInput));
end;

function TPublishRequestMarshaller.Marshall(PublicRequest: TPublishRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'Publish');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetMessage then
      Request.Parameters.Add('Message', TStringUtils.Fromstring(PublicRequest.Message));
    if PublicRequest.IsSetMessageAttributes then
    begin
      var mapIndex: Integer := 1;
      for var key in PublicRequest.MessageAttributes.Keys do
      begin
        var value: TMessageAttributeValue;
        var hasValue: Boolean;
        hasValue := PublicRequest.MessageAttributes.TryGetValue(key, value);
        Request.Parameters.Add('MessageAttributes' + '.' + 'entry' + '.' + IntToStr(mapIndex) + '.' + 'Name', TStringUtils.Fromstring(key));
        if hasValue then
        begin
          if value.IsSetBinaryValue then
            Request.Parameters.Add('MessageAttributes' + '.' + 'entry' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'BinaryValue', TStringUtils.FromTBytesStream(value.BinaryValue));
          if value.IsSetDataType then
            Request.Parameters.Add('MessageAttributes' + '.' + 'entry' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'DataType', TStringUtils.Fromstring(value.DataType));
          if value.IsSetStringValue then
            Request.Parameters.Add('MessageAttributes' + '.' + 'entry' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'StringValue', TStringUtils.Fromstring(value.StringValue));
        end;
        Inc(mapIndex);
      end;
    end;
    if PublicRequest.IsSetMessageDeduplicationId then
      Request.Parameters.Add('MessageDeduplicationId', TStringUtils.Fromstring(PublicRequest.MessageDeduplicationId));
    if PublicRequest.IsSetMessageGroupId then
      Request.Parameters.Add('MessageGroupId', TStringUtils.Fromstring(PublicRequest.MessageGroupId));
    if PublicRequest.IsSetMessageStructure then
      Request.Parameters.Add('MessageStructure', TStringUtils.Fromstring(PublicRequest.MessageStructure));
    if PublicRequest.IsSetPhoneNumber then
      Request.Parameters.Add('PhoneNumber', TStringUtils.Fromstring(PublicRequest.PhoneNumber));
    if PublicRequest.IsSetSubject then
      Request.Parameters.Add('Subject', TStringUtils.Fromstring(PublicRequest.Subject));
    if PublicRequest.IsSetTargetArn then
      Request.Parameters.Add('TargetArn', TStringUtils.Fromstring(PublicRequest.TargetArn));
    if PublicRequest.IsSetTopicArn then
      Request.Parameters.Add('TopicArn', TStringUtils.Fromstring(PublicRequest.TopicArn));
  end;
  Result := Request;
end;

class constructor TPublishRequestMarshaller.Create;
begin
  FInstance := TPublishRequestMarshaller.Create;
end;

class function TPublishRequestMarshaller.Instance: IPublishRequestMarshaller;
begin
  Result := FInstance;
end;

end.
