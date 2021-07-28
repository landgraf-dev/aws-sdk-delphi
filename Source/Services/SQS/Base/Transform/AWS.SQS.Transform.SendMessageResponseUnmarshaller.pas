unit AWS.SQS.Transform.SendMessageResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SQS.Model.SendMessageResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SQS.Transform.InvalidMessageContentsExceptionUnmarshaller, 
  AWS.SQS.Transform.UnsupportedOperationExceptionUnmarshaller, 
  AWS.SQS.Exception;

type
  ISendMessageResponseUnmarshaller = IResponseUnmarshaller;
  
  TSendMessageResponseUnmarshaller = class(TXmlResponseUnmarshaller, ISendMessageResponseUnmarshaller)
  strict private
    class var FInstance: ISendMessageResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TSendMessageResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ISendMessageResponseUnmarshaller; static;
  end;
  
implementation

{ TSendMessageResponseUnmarshaller }

function TSendMessageResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TSendMessageResponse;
  TargetDepth: Integer;
begin
  Response := TSendMessageResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('SendMessageResult', 2) then
        begin
          UnmarshallResult(AContext, Response);
          Continue;
        end;
        if AContext.TestExpression('ResponseMetadata', 2) then
          Response.ResponseMetadata := TResponseMetadataUnmarshaller.Instance.Unmarshall(AContext);
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class procedure TSendMessageResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TSendMessageResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  if AContext.IsStartOfDocument then
    Inc(TargetDepth, 2);
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
      if AContext.TestExpression('MD5OfMessageAttributes', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.MD5OfMessageAttributes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MD5OfMessageBody', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.MD5OfMessageBody := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MD5OfMessageSystemAttributes', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.MD5OfMessageSystemAttributes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MessageId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.MessageId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SequenceNumber', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.SequenceNumber := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
end;

function TSendMessageResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
var
  ErrorResponse: TErrorResponse;
  StreamCopy: TStream;
  ContextCopy: TXmlUnmarshallerContext;
begin
  ErrorResponse := TErrorResponseUnmarshaller.Instance.Unmarshall(AContext);
  try
    ErrorResponse.InnerException := AInnerException;
    ErrorResponse.StatusCode := AStatusCode;
    StreamCopy := TBytesStream.Create(AContext.GetResponseBodyBytes);
    try
      ContextCopy := TXmlUnmarshallerContext.Create(StreamCopy, False, nil);
      try
        if ErrorResponse.Code = 'InvalidMessageContentsException' then
          Exit(TInvalidMessageContentsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'AWS.SimpleQueueService.UnsupportedOperation' then
          Exit(TUnsupportedOperationExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonSQSException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TSendMessageResponseUnmarshaller.Create;
begin
  FInstance := TSendMessageResponseUnmarshaller.Create;
end;

class function TSendMessageResponseUnmarshaller.Instance: ISendMessageResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
