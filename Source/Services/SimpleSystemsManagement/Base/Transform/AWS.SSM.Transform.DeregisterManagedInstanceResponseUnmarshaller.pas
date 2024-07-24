unit AWS.SSM.Transform.DeregisterManagedInstanceResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DeregisterManagedInstanceResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidInstanceIdExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDeregisterManagedInstanceResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeregisterManagedInstanceResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDeregisterManagedInstanceResponseUnmarshaller)
  strict private
    class var FInstance: IDeregisterManagedInstanceResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeregisterManagedInstanceResponseUnmarshaller; static;
  end;
  
implementation

{ TDeregisterManagedInstanceResponseUnmarshaller }

function TDeregisterManagedInstanceResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeregisterManagedInstanceResponse;
begin
  Response := TDeregisterManagedInstanceResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDeregisterManagedInstanceResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidInstanceIdException' then
          Exit(TInvalidInstanceIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDeregisterManagedInstanceResponseUnmarshaller.Create;
begin
  FInstance := TDeregisterManagedInstanceResponseUnmarshaller.Create;
end;

class function TDeregisterManagedInstanceResponseUnmarshaller.Instance: IDeregisterManagedInstanceResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
