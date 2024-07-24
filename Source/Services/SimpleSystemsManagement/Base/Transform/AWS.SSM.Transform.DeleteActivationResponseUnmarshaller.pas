unit AWS.SSM.Transform.DeleteActivationResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DeleteActivationResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidActivationExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidActivationIdExceptionUnmarshaller, 
  AWS.SSM.Transform.TooManyUpdatesExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDeleteActivationResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteActivationResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDeleteActivationResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteActivationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteActivationResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteActivationResponseUnmarshaller }

function TDeleteActivationResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteActivationResponse;
begin
  Response := TDeleteActivationResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDeleteActivationResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidActivationException' then
          Exit(TInvalidActivationExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidActivationIdException' then
          Exit(TInvalidActivationIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TooManyUpdatesException' then
          Exit(TTooManyUpdatesExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonSimpleSystemsManagementException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TDeleteActivationResponseUnmarshaller.Create;
begin
  FInstance := TDeleteActivationResponseUnmarshaller.Create;
end;

class function TDeleteActivationResponseUnmarshaller.Instance: IDeleteActivationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
