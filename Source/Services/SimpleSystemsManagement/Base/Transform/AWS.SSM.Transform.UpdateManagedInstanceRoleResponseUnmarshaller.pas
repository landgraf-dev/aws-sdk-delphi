unit AWS.SSM.Transform.UpdateManagedInstanceRoleResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.UpdateManagedInstanceRoleResponse, 
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
  IUpdateManagedInstanceRoleResponseUnmarshaller = IResponseUnmarshaller;
  
  TUpdateManagedInstanceRoleResponseUnmarshaller = class(TJsonResponseUnmarshaller, IUpdateManagedInstanceRoleResponseUnmarshaller)
  strict private
    class var FInstance: IUpdateManagedInstanceRoleResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IUpdateManagedInstanceRoleResponseUnmarshaller; static;
  end;
  
implementation

{ TUpdateManagedInstanceRoleResponseUnmarshaller }

function TUpdateManagedInstanceRoleResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TUpdateManagedInstanceRoleResponse;
begin
  Response := TUpdateManagedInstanceRoleResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TUpdateManagedInstanceRoleResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TUpdateManagedInstanceRoleResponseUnmarshaller.Create;
begin
  FInstance := TUpdateManagedInstanceRoleResponseUnmarshaller.Create;
end;

class function TUpdateManagedInstanceRoleResponseUnmarshaller.Instance: IUpdateManagedInstanceRoleResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
