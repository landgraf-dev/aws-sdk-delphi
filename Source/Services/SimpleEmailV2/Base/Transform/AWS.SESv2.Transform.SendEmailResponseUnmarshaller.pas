unit AWS.SESv2.Transform.SendEmailResponseUnmarshaller;

interface

uses
  AWS.SESv2.Model.SendEmailResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SESv2.Transform.AccountSuspendedExceptionUnmarshaller, 
  AWS.SESv2.Transform.BadRequestExceptionUnmarshaller, 
  AWS.SESv2.Transform.LimitExceededExceptionUnmarshaller, 
  AWS.SESv2.Transform.MailFromDomainNotVerifiedExceptionUnmarshaller, 
  AWS.SESv2.Transform.MessageRejectedExceptionUnmarshaller, 
  AWS.SESv2.Transform.NotFoundExceptionUnmarshaller, 
  AWS.SESv2.Transform.SendingPausedExceptionUnmarshaller, 
  AWS.SESv2.Transform.TooManyRequestsExceptionUnmarshaller, 
  AWS.SESv2.Exception;

type
  ISendEmailResponseUnmarshaller = IResponseUnmarshaller;
  
  TSendEmailResponseUnmarshaller = class(TJsonResponseUnmarshaller, ISendEmailResponseUnmarshaller)
  strict private
    class var FInstance: ISendEmailResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ISendEmailResponseUnmarshaller; static;
  end;
  
implementation

{ TSendEmailResponseUnmarshaller }

function TSendEmailResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TSendEmailResponse;
begin
  Response := TSendEmailResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('MessageId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.MessageId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TSendEmailResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
var
  ErrorResponse: TErrorResponse;
  StreamCopy: TStream;
  ContextCopy: TJsonUnmarshallerContext;
begin
  ErrorResponse := TJsonErrorResponseUnmarshaller.Instance.Unmarshall(AContext);
  try
    ErrorResponse.InnerException := AInnerException;
    ErrorResponse.StatusCode := AStatusCode;
    StreamCopy := TBytesStream.Create(AContext.GetResponseBodyBytes);
    try
      ContextCopy := TJsonUnmarshallerContext.Create(StreamCopy, False, nil);
      try
        if ErrorResponse.Code = 'AccountSuspendedException' then
          Exit(TAccountSuspendedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'BadRequestException' then
          Exit(TBadRequestExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'LimitExceededException' then
          Exit(TLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'MailFromDomainNotVerifiedException' then
          Exit(TMailFromDomainNotVerifiedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'MessageRejectedException' then
          Exit(TMessageRejectedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'NotFoundException' then
          Exit(TNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'SendingPausedException' then
          Exit(TSendingPausedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TooManyRequestsException' then
          Exit(TTooManyRequestsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonSimpleEmailServiceV2Exception.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TSendEmailResponseUnmarshaller.Create;
begin
  FInstance := TSendEmailResponseUnmarshaller.Create;
end;

class function TSendEmailResponseUnmarshaller.Instance: ISendEmailResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
