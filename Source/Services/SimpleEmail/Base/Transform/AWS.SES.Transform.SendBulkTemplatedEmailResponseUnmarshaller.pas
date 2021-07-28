unit AWS.SES.Transform.SendBulkTemplatedEmailResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.SendBulkTemplatedEmailResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SES.Transform.BulkEmailDestinationStatusUnmarshaller, 
  AWS.SES.Model.BulkEmailDestinationStatus, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Transform.AccountSendingPausedExceptionUnmarshaller, 
  AWS.SES.Transform.ConfigurationSetDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Transform.ConfigurationSetSendingPausedExceptionUnmarshaller, 
  AWS.SES.Transform.MailFromDomainNotVerifiedExceptionUnmarshaller, 
  AWS.SES.Transform.MessageRejectedExceptionUnmarshaller, 
  AWS.SES.Transform.TemplateDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Exception;

type
  ISendBulkTemplatedEmailResponseUnmarshaller = IResponseUnmarshaller;
  
  TSendBulkTemplatedEmailResponseUnmarshaller = class(TXmlResponseUnmarshaller, ISendBulkTemplatedEmailResponseUnmarshaller)
  strict private
    class var FInstance: ISendBulkTemplatedEmailResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TSendBulkTemplatedEmailResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ISendBulkTemplatedEmailResponseUnmarshaller; static;
  end;
  
implementation

{ TSendBulkTemplatedEmailResponseUnmarshaller }

function TSendBulkTemplatedEmailResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TSendBulkTemplatedEmailResponse;
  TargetDepth: Integer;
begin
  Response := TSendBulkTemplatedEmailResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('SendBulkTemplatedEmailResult', 2) then
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

class procedure TSendBulkTemplatedEmailResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TSendBulkTemplatedEmailResponse);
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
      if AContext.TestExpression('Status/member', TargetDepth) then
      begin
        var Unmarshaller := TBulkEmailDestinationStatusUnmarshaller.Instance;
        AResponse.Status.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
end;

function TSendBulkTemplatedEmailResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'AccountSendingPausedException' then
          Exit(TAccountSendingPausedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ConfigurationSetDoesNotExist' then
          Exit(TConfigurationSetDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ConfigurationSetSendingPausedException' then
          Exit(TConfigurationSetSendingPausedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'MailFromDomainNotVerifiedException' then
          Exit(TMailFromDomainNotVerifiedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'MessageRejected' then
          Exit(TMessageRejectedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TemplateDoesNotExist' then
          Exit(TTemplateDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonSimpleEmailServiceException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TSendBulkTemplatedEmailResponseUnmarshaller.Create;
begin
  FInstance := TSendBulkTemplatedEmailResponseUnmarshaller.Create;
end;

class function TSendBulkTemplatedEmailResponseUnmarshaller.Instance: ISendBulkTemplatedEmailResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
