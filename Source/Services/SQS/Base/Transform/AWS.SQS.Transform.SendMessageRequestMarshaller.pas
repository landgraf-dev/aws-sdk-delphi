unit AWS.SQS.Transform.SendMessageRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.SendMessageRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.SQS.Model.MessageAttributeValue, 
  AWS.SQS.Model.MessageSystemAttributeValue;

type
  ISendMessageRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSendMessageRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSendMessageRequest>, ISendMessageRequestMarshaller)
  strict private
    class var FInstance: ISendMessageRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSendMessageRequest): IRequest; overload;
    class function Instance: ISendMessageRequestMarshaller; static;
  end;
  
implementation

{ TSendMessageRequestMarshaller }

function TSendMessageRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSendMessageRequest(AInput));
end;

function TSendMessageRequestMarshaller.Marshall(PublicRequest: TSendMessageRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SQS');
  Request.Parameters.Add('Action', 'SendMessage');
  Request.Parameters.Add('Version', '2012-11-05');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetDelaySeconds then
      Request.Parameters.Add('DelaySeconds', TStringUtils.FromInteger(PublicRequest.DelaySeconds));
    if PublicRequest.IsSetMessageAttributes then
    begin
      var mapIndex: Integer := 1;
      for var key in PublicRequest.MessageAttributes.Keys do
      begin
        var value: TMessageAttributeValue;
        var hasValue: Boolean;
        hasValue := PublicRequest.MessageAttributes.TryGetValue(key, value);
        Request.Parameters.Add('MessageAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Name', TStringUtils.Fromstring(key));
        if hasValue then
        begin
          if value.IsSetBinaryListValues then
          begin
            var valuelistValueIndex: Integer := 1;
            for var valuelistValue in value.BinaryListValues do
            begin
              Request.Parameters.Add('MessageAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'BinaryListValue' + '.' + 'member' + '.' + IntToStr(valuelistValueIndex), TStringUtils.FromTBytesStream(valuelistValue));
              Inc(valuelistValueIndex);
            end;
          end;
          if value.IsSetBinaryValue then
            Request.Parameters.Add('MessageAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'BinaryValue', TStringUtils.FromTBytesStream(value.BinaryValue));
          if value.IsSetDataType then
            Request.Parameters.Add('MessageAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'DataType', TStringUtils.Fromstring(value.DataType));
          if value.IsSetStringListValues then
          begin
            var valuelistValueIndex: Integer := 1;
            for var valuelistValue in value.StringListValues do
            begin
              Request.Parameters.Add('MessageAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'StringListValue' + '.' + 'member' + '.' + IntToStr(valuelistValueIndex), TStringUtils.Fromstring(valuelistValue));
              Inc(valuelistValueIndex);
            end;
          end;
          if value.IsSetStringValue then
            Request.Parameters.Add('MessageAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'StringValue', TStringUtils.Fromstring(value.StringValue));
        end;
        Inc(mapIndex);
      end;
    end;
    if PublicRequest.IsSetMessageBody then
      Request.Parameters.Add('MessageBody', TStringUtils.Fromstring(PublicRequest.MessageBody));
    if PublicRequest.IsSetMessageDeduplicationId then
      Request.Parameters.Add('MessageDeduplicationId', TStringUtils.Fromstring(PublicRequest.MessageDeduplicationId));
    if PublicRequest.IsSetMessageGroupId then
      Request.Parameters.Add('MessageGroupId', TStringUtils.Fromstring(PublicRequest.MessageGroupId));
    if PublicRequest.IsSetMessageSystemAttributes then
    begin
      var mapIndex: Integer := 1;
      for var key in PublicRequest.MessageSystemAttributes.Keys do
      begin
        var value: TMessageSystemAttributeValue;
        var hasValue: Boolean;
        hasValue := PublicRequest.MessageSystemAttributes.TryGetValue(key, value);
        Request.Parameters.Add('MessageSystemAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Name', TStringUtils.Fromstring(key));
        if hasValue then
        begin
          if value.IsSetBinaryListValues then
          begin
            var valuelistValueIndex: Integer := 1;
            for var valuelistValue in value.BinaryListValues do
            begin
              Request.Parameters.Add('MessageSystemAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'BinaryListValue' + '.' + 'member' + '.' + IntToStr(valuelistValueIndex), TStringUtils.FromTBytesStream(valuelistValue));
              Inc(valuelistValueIndex);
            end;
          end;
          if value.IsSetBinaryValue then
            Request.Parameters.Add('MessageSystemAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'BinaryValue', TStringUtils.FromTBytesStream(value.BinaryValue));
          if value.IsSetDataType then
            Request.Parameters.Add('MessageSystemAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'DataType', TStringUtils.Fromstring(value.DataType));
          if value.IsSetStringListValues then
          begin
            var valuelistValueIndex: Integer := 1;
            for var valuelistValue in value.StringListValues do
            begin
              Request.Parameters.Add('MessageSystemAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'StringListValue' + '.' + 'member' + '.' + IntToStr(valuelistValueIndex), TStringUtils.Fromstring(valuelistValue));
              Inc(valuelistValueIndex);
            end;
          end;
          if value.IsSetStringValue then
            Request.Parameters.Add('MessageSystemAttribute' + '.' + IntToStr(mapIndex) + '.' + 'Value' + '.' + 'StringValue', TStringUtils.Fromstring(value.StringValue));
        end;
        Inc(mapIndex);
      end;
    end;
    if PublicRequest.IsSetQueueUrl then
      Request.Parameters.Add('QueueUrl', TStringUtils.Fromstring(PublicRequest.QueueUrl));
  end;
  Result := Request;
end;

class constructor TSendMessageRequestMarshaller.Create;
begin
  FInstance := TSendMessageRequestMarshaller.Create;
end;

class function TSendMessageRequestMarshaller.Instance: ISendMessageRequestMarshaller;
begin
  Result := FInstance;
end;

end.
