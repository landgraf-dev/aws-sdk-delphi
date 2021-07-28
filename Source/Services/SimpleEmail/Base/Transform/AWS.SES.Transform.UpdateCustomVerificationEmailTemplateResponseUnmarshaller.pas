unit AWS.SES.Transform.UpdateCustomVerificationEmailTemplateResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.UpdateCustomVerificationEmailTemplateResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Transform.CustomVerificationEmailInvalidContentExceptionUnmarshaller, 
  AWS.SES.Transform.CustomVerificationEmailTemplateDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Transform.FromEmailAddressNotVerifiedExceptionUnmarshaller, 
  AWS.SES.Exception;

type
  IUpdateCustomVerificationEmailTemplateResponseUnmarshaller = IResponseUnmarshaller;
  
  TUpdateCustomVerificationEmailTemplateResponseUnmarshaller = class(TXmlResponseUnmarshaller, IUpdateCustomVerificationEmailTemplateResponseUnmarshaller)
  strict private
    class var FInstance: IUpdateCustomVerificationEmailTemplateResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TUpdateCustomVerificationEmailTemplateResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IUpdateCustomVerificationEmailTemplateResponseUnmarshaller; static;
  end;
  
implementation

{ TUpdateCustomVerificationEmailTemplateResponseUnmarshaller }

function TUpdateCustomVerificationEmailTemplateResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TUpdateCustomVerificationEmailTemplateResponse;
  TargetDepth: Integer;
begin
  Response := TUpdateCustomVerificationEmailTemplateResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('UpdateCustomVerificationEmailTemplateResult', 2) then
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

class procedure TUpdateCustomVerificationEmailTemplateResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TUpdateCustomVerificationEmailTemplateResponse);
var
  OriginalDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
    end;
end;

function TUpdateCustomVerificationEmailTemplateResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'CustomVerificationEmailTemplateDoesNotExist' then
          Exit(TCustomVerificationEmailTemplateDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'FromEmailAddressNotVerified' then
          Exit(TFromEmailAddressNotVerifiedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TUpdateCustomVerificationEmailTemplateResponseUnmarshaller.Create;
begin
  FInstance := TUpdateCustomVerificationEmailTemplateResponseUnmarshaller.Create;
end;

class function TUpdateCustomVerificationEmailTemplateResponseUnmarshaller.Instance: IUpdateCustomVerificationEmailTemplateResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
