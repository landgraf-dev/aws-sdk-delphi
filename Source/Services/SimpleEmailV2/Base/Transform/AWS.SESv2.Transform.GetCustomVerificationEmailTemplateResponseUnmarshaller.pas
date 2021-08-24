unit AWS.SESv2.Transform.GetCustomVerificationEmailTemplateResponseUnmarshaller;

interface

uses
  AWS.SESv2.Model.GetCustomVerificationEmailTemplateResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SESv2.Transform.BadRequestExceptionUnmarshaller, 
  AWS.SESv2.Transform.NotFoundExceptionUnmarshaller, 
  AWS.SESv2.Transform.TooManyRequestsExceptionUnmarshaller, 
  AWS.SESv2.Exception;

type
  IGetCustomVerificationEmailTemplateResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetCustomVerificationEmailTemplateResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetCustomVerificationEmailTemplateResponseUnmarshaller)
  strict private
    class var FInstance: IGetCustomVerificationEmailTemplateResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetCustomVerificationEmailTemplateResponseUnmarshaller; static;
  end;
  
implementation

{ TGetCustomVerificationEmailTemplateResponseUnmarshaller }

function TGetCustomVerificationEmailTemplateResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetCustomVerificationEmailTemplateResponse;
begin
  Response := TGetCustomVerificationEmailTemplateResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('FailureRedirectionURL', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.FailureRedirectionURL := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FromEmailAddress', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.FromEmailAddress := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SuccessRedirectionURL', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.SuccessRedirectionURL := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TemplateContent', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.TemplateContent := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TemplateName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.TemplateName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TemplateSubject', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.TemplateSubject := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetCustomVerificationEmailTemplateResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'BadRequestException' then
          Exit(TBadRequestExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'NotFoundException' then
          Exit(TNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TGetCustomVerificationEmailTemplateResponseUnmarshaller.Create;
begin
  FInstance := TGetCustomVerificationEmailTemplateResponseUnmarshaller.Create;
end;

class function TGetCustomVerificationEmailTemplateResponseUnmarshaller.Instance: IGetCustomVerificationEmailTemplateResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
