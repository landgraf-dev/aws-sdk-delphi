unit AWS.SES.Transform.CreateCustomVerificationEmailTemplateResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.CreateCustomVerificationEmailTemplateResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Transform.CustomVerificationEmailInvalidContentExceptionUnmarshaller, 
  AWS.SES.Transform.CustomVerificationEmailTemplateAlreadyExistsExceptionUnmarshaller, 
  AWS.SES.Transform.FromEmailAddressNotVerifiedExceptionUnmarshaller, 
  AWS.SES.Transform.LimitExceededExceptionUnmarshaller, 
  AWS.SES.Exception;

type
  ICreateCustomVerificationEmailTemplateResponseUnmarshaller = IResponseUnmarshaller;
  
  TCreateCustomVerificationEmailTemplateResponseUnmarshaller = class(TXmlResponseUnmarshaller, ICreateCustomVerificationEmailTemplateResponseUnmarshaller)
  strict private
    class var FInstance: ICreateCustomVerificationEmailTemplateResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TCreateCustomVerificationEmailTemplateResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ICreateCustomVerificationEmailTemplateResponseUnmarshaller; static;
  end;
  
implementation

{ TCreateCustomVerificationEmailTemplateResponseUnmarshaller }

function TCreateCustomVerificationEmailTemplateResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TCreateCustomVerificationEmailTemplateResponse;
  TargetDepth: Integer;
begin
  Response := TCreateCustomVerificationEmailTemplateResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('CreateCustomVerificationEmailTemplateResult', 2) then
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

class procedure TCreateCustomVerificationEmailTemplateResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TCreateCustomVerificationEmailTemplateResponse);
var
  OriginalDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
    end;
end;

function TCreateCustomVerificationEmailTemplateResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'CustomVerificationEmailInvalidContent' then
          Exit(TCustomVerificationEmailInvalidContentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'CustomVerificationEmailTemplateAlreadyExists' then
          Exit(TCustomVerificationEmailTemplateAlreadyExistsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'FromEmailAddressNotVerified' then
          Exit(TFromEmailAddressNotVerifiedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'LimitExceeded' then
          Exit(TLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TCreateCustomVerificationEmailTemplateResponseUnmarshaller.Create;
begin
  FInstance := TCreateCustomVerificationEmailTemplateResponseUnmarshaller.Create;
end;

class function TCreateCustomVerificationEmailTemplateResponseUnmarshaller.Instance: ICreateCustomVerificationEmailTemplateResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
