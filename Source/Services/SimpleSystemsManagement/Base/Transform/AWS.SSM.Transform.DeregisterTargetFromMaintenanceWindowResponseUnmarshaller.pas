unit AWS.SSM.Transform.DeregisterTargetFromMaintenanceWindowResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DeregisterTargetFromMaintenanceWindowResponse, 
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
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.TargetInUseExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDeregisterTargetFromMaintenanceWindowResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeregisterTargetFromMaintenanceWindowResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDeregisterTargetFromMaintenanceWindowResponseUnmarshaller)
  strict private
    class var FInstance: IDeregisterTargetFromMaintenanceWindowResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeregisterTargetFromMaintenanceWindowResponseUnmarshaller; static;
  end;
  
implementation

{ TDeregisterTargetFromMaintenanceWindowResponseUnmarshaller }

function TDeregisterTargetFromMaintenanceWindowResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeregisterTargetFromMaintenanceWindowResponse;
begin
  Response := TDeregisterTargetFromMaintenanceWindowResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('WindowId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.WindowId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('WindowTargetId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.WindowTargetId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDeregisterTargetFromMaintenanceWindowResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TargetInUseException' then
          Exit(TTargetInUseExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDeregisterTargetFromMaintenanceWindowResponseUnmarshaller.Create;
begin
  FInstance := TDeregisterTargetFromMaintenanceWindowResponseUnmarshaller.Create;
end;

class function TDeregisterTargetFromMaintenanceWindowResponseUnmarshaller.Instance: IDeregisterTargetFromMaintenanceWindowResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
