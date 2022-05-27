unit AWS.SNS.Transform.PublishBatchRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.PublishBatchRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.SNS.Model.MessageAttributeValue;

type
  IPublishBatchRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPublishBatchRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPublishBatchRequest>, IPublishBatchRequestMarshaller)
  strict private
    class var FInstance: IPublishBatchRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPublishBatchRequest): IRequest; overload;
    class function Instance: IPublishBatchRequestMarshaller; static;
  end;
  
implementation

{ TPublishBatchRequestMarshaller }

function TPublishBatchRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPublishBatchRequest(AInput));
end;

function TPublishBatchRequestMarshaller.Marshall(PublicRequest: TPublishBatchRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'PublishBatch');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetPublishBatchRequestEntries then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.PublishBatchRequestEntries do
      begin
        if PublicRequestlistValue.IsSetId then
          Request.Parameters.Add('PublishBatchRequestEntries' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Id', TStringUtils.Fromstring(PublicRequestlistValue.Id));
        if PublicRequestlistValue.IsSetMessage then
          Request.Parameters.Add('PublishBatchRequestEntries' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Message', TStringUtils.Fromstring(PublicRequestlistValue.Message));
        if PublicRequestlistValue.IsSetMessageAttributes then
        begin
          var mapIndex: Integer := 1;
          for var key in PublicRequestlistValue.MessageAttributes.Keys do
          begin
            var value: TMessageAttributeValue;
            var hasValue: Boolean;
            hasValue := PublicRequestlistValue.MessageAttributes.TryGetValue(key, value);
            Request.Parameters.Add('PublishBatchRequestEntries' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageAttributes' + '.' + 'entry' + '.' + IntToStr(mapIndex) + '.' + 'Name', TStringUtils.Fromstring(key));
            if hasValue then
            begin
              if value.IsSetBinaryValue then
                Request.Parameters.Add('PublishBatchRequestEntries' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageAttributes' + '.' + 'entry' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'BinaryValue', TStringUtils.FromTBytesStream(value.BinaryValue));
              if value.IsSetDataType then
                Request.Parameters.Add('PublishBatchRequestEntries' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageAttributes' + '.' + 'entry' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'DataType', TStringUtils.Fromstring(value.DataType));
              if value.IsSetStringValue then
                Request.Parameters.Add('PublishBatchRequestEntries' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageAttributes' + '.' + 'entry' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'StringValue', TStringUtils.Fromstring(value.StringValue));
            end;
            Inc(mapIndex);
          end;
        end;
        if PublicRequestlistValue.IsSetMessageDeduplicationId then
          Request.Parameters.Add('PublishBatchRequestEntries' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageDeduplicationId', TStringUtils.Fromstring(PublicRequestlistValue.MessageDeduplicationId));
        if PublicRequestlistValue.IsSetMessageGroupId then
          Request.Parameters.Add('PublishBatchRequestEntries' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageGroupId', TStringUtils.Fromstring(PublicRequestlistValue.MessageGroupId));
        if PublicRequestlistValue.IsSetMessageStructure then
          Request.Parameters.Add('PublishBatchRequestEntries' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageStructure', TStringUtils.Fromstring(PublicRequestlistValue.MessageStructure));
        if PublicRequestlistValue.IsSetSubject then
          Request.Parameters.Add('PublishBatchRequestEntries' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Subject', TStringUtils.Fromstring(PublicRequestlistValue.Subject));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
    if PublicRequest.IsSetTopicArn then
      Request.Parameters.Add('TopicArn', TStringUtils.Fromstring(PublicRequest.TopicArn));
  end;
  Result := Request;
end;

class constructor TPublishBatchRequestMarshaller.Create;
begin
  FInstance := TPublishBatchRequestMarshaller.Create;
end;

class function TPublishBatchRequestMarshaller.Instance: IPublishBatchRequestMarshaller;
begin
  Result := FInstance;
end;

end.
