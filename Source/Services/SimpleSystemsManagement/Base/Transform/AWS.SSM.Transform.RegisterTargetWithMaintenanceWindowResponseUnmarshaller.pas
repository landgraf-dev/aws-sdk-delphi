unit AWS.SSM.Transform.RegisterTargetWithMaintenanceWindowResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.RegisterTargetWithMaintenanceWindowResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.DoesNotExistExceptionUnmarshaller, 
  AWS.SSM.Transform.IdempotentParameterMismatchExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.ResourceLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IRegisterTargetWithMaintenanceWindowResponseUnmarshaller = IResponseUnmarshaller;
  
  TRegisterTargetWithMaintenanceWindowResponseUnmarshaller = class(TJsonResponseUnmarshaller, IRegisterTargetWithMaintenanceWindowResponseUnmarshaller)
  strict private
    class var FInstance: IRegisterTargetWithMaintenanceWindowResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IRegisterTargetWithMaintenanceWindowResponseUnmarshaller; static;
  end;
  
implementation

{ TRegisterTargetWithMaintenanceWindowResponseUnmarshaller }

function TRegisterTargetWithMaintenanceWindowResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TRegisterTargetWithMaintenanceWindowResponse;
begin
  Response := TRegisterTargetWithMaintenanceWindowResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('WindowTargetId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.WindowTargetId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TRegisterTargetWithMaintenanceWindowResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'DoesNotExistException' then
          Exit(TDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'IdempotentParameterMismatchException' then
          Exit(TIdempotentParameterMismatchExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ResourceLimitExceededException' then
          Exit(TResourceLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TRegisterTargetWithMaintenanceWindowResponseUnmarshaller.Create;
begin
  FInstance := TRegisterTargetWithMaintenanceWindowResponseUnmarshaller.Create;
end;

class function TRegisterTargetWithMaintenanceWindowResponseUnmarshaller.Instance: IRegisterTargetWithMaintenanceWindowResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
