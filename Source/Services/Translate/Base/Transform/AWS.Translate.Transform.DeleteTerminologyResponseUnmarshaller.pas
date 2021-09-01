unit AWS.Translate.Transform.DeleteTerminologyResponseUnmarshaller;

interface

uses
  AWS.Translate.Model.DeleteTerminologyResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Translate.Transform.InternalServerExceptionUnmarshaller, 
  AWS.Translate.Transform.InvalidParameterValueExceptionUnmarshaller, 
  AWS.Translate.Transform.ResourceNotFoundExceptionUnmarshaller, 
  AWS.Translate.Transform.TooManyRequestsExceptionUnmarshaller, 
  AWS.Translate.Exception;

type
  IDeleteTerminologyResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteTerminologyResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDeleteTerminologyResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteTerminologyResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteTerminologyResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteTerminologyResponseUnmarshaller }

function TDeleteTerminologyResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteTerminologyResponse;
begin
  Response := TDeleteTerminologyResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDeleteTerminologyResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InternalServerException' then
          Exit(TInternalServerExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidParameterValueException' then
          Exit(TInvalidParameterValueExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ResourceNotFoundException' then
          Exit(TResourceNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TooManyRequestsException' then
          Exit(TTooManyRequestsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonTranslateException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TDeleteTerminologyResponseUnmarshaller.Create;
begin
  FInstance := TDeleteTerminologyResponseUnmarshaller.Create;
end;

class function TDeleteTerminologyResponseUnmarshaller.Instance: IDeleteTerminologyResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
