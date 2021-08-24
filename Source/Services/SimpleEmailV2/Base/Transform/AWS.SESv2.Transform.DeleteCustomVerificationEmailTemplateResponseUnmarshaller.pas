unit AWS.SESv2.Transform.DeleteCustomVerificationEmailTemplateResponseUnmarshaller;

interface

uses
  AWS.SESv2.Model.DeleteCustomVerificationEmailTemplateResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
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
  IDeleteCustomVerificationEmailTemplateResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteCustomVerificationEmailTemplateResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDeleteCustomVerificationEmailTemplateResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteCustomVerificationEmailTemplateResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteCustomVerificationEmailTemplateResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteCustomVerificationEmailTemplateResponseUnmarshaller }

function TDeleteCustomVerificationEmailTemplateResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteCustomVerificationEmailTemplateResponse;
begin
  Response := TDeleteCustomVerificationEmailTemplateResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDeleteCustomVerificationEmailTemplateResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteCustomVerificationEmailTemplateResponseUnmarshaller.Create;
begin
  FInstance := TDeleteCustomVerificationEmailTemplateResponseUnmarshaller.Create;
end;

class function TDeleteCustomVerificationEmailTemplateResponseUnmarshaller.Instance: IDeleteCustomVerificationEmailTemplateResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
