unit AWS.SES.Transform.SendCustomVerificationEmailResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.SendCustomVerificationEmailResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Transform.ConfigurationSetDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Transform.CustomVerificationEmailTemplateDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Transform.FromEmailAddressNotVerifiedExceptionUnmarshaller, 
  AWS.SES.Transform.MessageRejectedExceptionUnmarshaller, 
  AWS.SES.Transform.ProductionAccessNotGrantedExceptionUnmarshaller, 
  AWS.SES.Exception;

type
  ISendCustomVerificationEmailResponseUnmarshaller = IResponseUnmarshaller;
  
  TSendCustomVerificationEmailResponseUnmarshaller = class(TXmlResponseUnmarshaller, ISendCustomVerificationEmailResponseUnmarshaller)
  strict private
    class var FInstance: ISendCustomVerificationEmailResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TSendCustomVerificationEmailResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ISendCustomVerificationEmailResponseUnmarshaller; static;
  end;
  
implementation

{ TSendCustomVerificationEmailResponseUnmarshaller }

function TSendCustomVerificationEmailResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TSendCustomVerificationEmailResponse;
  TargetDepth: Integer;
begin
  Response := TSendCustomVerificationEmailResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('SendCustomVerificationEmailResult', 2) then
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

class procedure TSendCustomVerificationEmailResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TSendCustomVerificationEmailResponse);
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
      if AContext.TestExpression('MessageId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.MessageId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
end;

function TSendCustomVerificationEmailResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'ConfigurationSetDoesNotExist' then
          Exit(TConfigurationSetDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'CustomVerificationEmailTemplateDoesNotExist' then
          Exit(TCustomVerificationEmailTemplateDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'FromEmailAddressNotVerified' then
          Exit(TFromEmailAddressNotVerifiedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'MessageRejected' then
          Exit(TMessageRejectedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ProductionAccessNotGranted' then
          Exit(TProductionAccessNotGrantedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TSendCustomVerificationEmailResponseUnmarshaller.Create;
begin
  FInstance := TSendCustomVerificationEmailResponseUnmarshaller.Create;
end;

class function TSendCustomVerificationEmailResponseUnmarshaller.Instance: ISendCustomVerificationEmailResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
