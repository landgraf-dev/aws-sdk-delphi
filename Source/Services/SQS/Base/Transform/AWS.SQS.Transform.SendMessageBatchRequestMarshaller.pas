unit AWS.SQS.Transform.SendMessageBatchRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.SendMessageBatchRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.SQS.Model.MessageAttributeValue, 
  AWS.SQS.Model.MessageSystemAttributeValue;

type
  ISendMessageBatchRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSendMessageBatchRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSendMessageBatchRequest>, ISendMessageBatchRequestMarshaller)
  strict private
    class var FInstance: ISendMessageBatchRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSendMessageBatchRequest): IRequest; overload;
    class function Instance: ISendMessageBatchRequestMarshaller; static;
  end;
  
implementation

{ TSendMessageBatchRequestMarshaller }

function TSendMessageBatchRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSendMessageBatchRequest(AInput));
end;

function TSendMessageBatchRequestMarshaller.Marshall(PublicRequest: TSendMessageBatchRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SQS');
  Request.Parameters.Add('Action', 'SendMessageBatch');
  Request.Parameters.Add('Version', '2012-11-05');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetEntries then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.Entries do
      begin
        if PublicRequestlistValue.IsSetDelaySeconds then
          Request.Parameters.Add('SendMessageBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'DelaySeconds', TStringUtils.FromInteger(PublicRequestlistValue.DelaySeconds));
        if PublicRequestlistValue.IsSetId then
          Request.Parameters.Add('SendMessageBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Id', TStringUtils.Fromstring(PublicRequestlistValue.Id));
        if PublicRequestlistValue.IsSetMessageAttributes then
        begin
          var mapIndex: Integer := 1;
          for var key in PublicRequestlistValue.MessageAttributes.Keys do
          begin
            var value: TMessageAttributeValue;
            var hasValue: Boolean;
            hasValue := PublicRequestlistValue.MessageAttributes.TryGetValue(key, value);
            Request.Parameters.Add('SendMessageBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Name', TStringUtils.Fromstring(key));
            if hasValue then
            begin
              if value.IsSetBinaryListValues then
              begin
                var valuelistValueIndex: Integer := 1;
                for var valuelistValue in value.BinaryListValues do
                begin
                  Request.Parameters.Add('SendMessageBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'BinaryListValue' + '.' + 'member' + '.' + IntToStr(valuelistValueIndex), TStringUtils.FromTBytesStream(valuelistValue));
                  Inc(valuelistValueIndex);
                end;
              end;
              if value.IsSetBinaryValue then
                Request.Parameters.Add('SendMessageBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'BinaryValue', TStringUtils.FromTBytesStream(value.BinaryValue));
              if value.IsSetDataType then
                Request.Parameters.Add('SendMessageBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'DataType', TStringUtils.Fromstring(value.DataType));
              if value.IsSetStringListValues then
              begin
                var valuelistValueIndex: Integer := 1;
                for var valuelistValue in value.StringListValues do
                begin
                  Request.Parameters.Add('SendMessageBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'StringListValue' + '.' + 'member' + '.' + IntToStr(valuelistValueIndex), TStringUtils.Fromstring(valuelistValue));
                  Inc(valuelistValueIndex);
                end;
              end;
              if value.IsSetStringValue then
                Request.Parameters.Add('SendMessageBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'StringValue', TStringUtils.Fromstring(value.StringValue));
            end;
            Inc(mapIndex);
          end;
        end;
        if PublicRequestlistValue.IsSetMessageBody then
          Request.Parameters.Add('SendMessageBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageBody', TStringUtils.Fromstring(PublicRequestlistValue.MessageBody));
        if PublicRequestlistValue.IsSetMessageDeduplicationId then
          Request.Parameters.Add('SendMessageBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageDeduplicationId', TStringUtils.Fromstring(PublicRequestlistValue.MessageDeduplicationId));
        if PublicRequestlistValue.IsSetMessageGroupId then
          Request.Parameters.Add('SendMessageBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageGroupId', TStringUtils.Fromstring(PublicRequestlistValue.MessageGroupId));
        if PublicRequestlistValue.IsSetMessageSystemAttributes then
        begin
          var mapIndex: Integer := 1;
          for var key in PublicRequestlistValue.MessageSystemAttributes.Keys do
          begin
            var value: TMessageSystemAttributeValue;
            var hasValue: Boolean;
            hasValue := PublicRequestlistValue.MessageSystemAttributes.TryGetValue(key, value);
            Request.Parameters.Add('SendMessageBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageSystemAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Name', TStringUtils.Fromstring(key));
            if hasValue then
            begin
              if value.IsSetBinaryListValues then
              begin
                var valuelistValueIndex: Integer := 1;
                for var valuelistValue in value.BinaryListValues do
                begin
                  Request.Parameters.Add('SendMessageBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageSystemAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'BinaryListValue' + '.' + 'member' + '.' + IntToStr(valuelistValueIndex), TStringUtils.FromTBytesStream(valuelistValue));
                  Inc(valuelistValueIndex);
                end;
              end;
              if value.IsSetBinaryValue then
                Request.Parameters.Add('SendMessageBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageSystemAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'BinaryValue', TStringUtils.FromTBytesStream(value.BinaryValue));
              if value.IsSetDataType then
                Request.Parameters.Add('SendMessageBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageSystemAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'DataType', TStringUtils.Fromstring(value.DataType));
              if value.IsSetStringListValues then
              begin
                var valuelistValueIndex: Integer := 1;
                for var valuelistValue in value.StringListValues do
                begin
                  Request.Parameters.Add('SendMessageBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageSystemAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'StringListValue' + '.' + 'member' + '.' + IntToStr(valuelistValueIndex), TStringUtils.Fromstring(valuelistValue));
                  Inc(valuelistValueIndex);
                end;
              end;
              if value.IsSetStringValue then
                Request.Parameters.Add('SendMessageBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'MessageSystemAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'StringValue', TStringUtils.Fromstring(value.StringValue));
            end;
            Inc(mapIndex);
          end;
        end;
        Inc(PublicRequestlistValueIndex);
      end;
    end;
    if PublicRequest.IsSetQueueUrl then
      Request.Parameters.Add('QueueUrl', TStringUtils.Fromstring(PublicRequest.QueueUrl));
  end;
  Result := Request;
end;

class constructor TSendMessageBatchRequestMarshaller.Create;
begin
  FInstance := TSendMessageBatchRequestMarshaller.Create;
end;

class function TSendMessageBatchRequestMarshaller.Instance: ISendMessageBatchRequestMarshaller;
begin
  Result := FInstance;
end;

end.
