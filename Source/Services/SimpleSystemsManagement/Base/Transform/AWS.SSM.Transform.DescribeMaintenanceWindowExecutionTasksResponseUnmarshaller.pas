unit AWS.SSM.Transform.DescribeMaintenanceWindowExecutionTasksResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionTasksResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.MaintenanceWindowExecutionTaskIdentityUnmarshaller, 
  AWS.SSM.Model.MaintenanceWindowExecutionTaskIdentity, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.DoesNotExistExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDescribeMaintenanceWindowExecutionTasksResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeMaintenanceWindowExecutionTasksResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeMaintenanceWindowExecutionTasksResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeMaintenanceWindowExecutionTasksResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeMaintenanceWindowExecutionTasksResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeMaintenanceWindowExecutionTasksResponseUnmarshaller }

function TDescribeMaintenanceWindowExecutionTasksResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeMaintenanceWindowExecutionTasksResponse;
begin
  Response := TDescribeMaintenanceWindowExecutionTasksResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('WindowExecutionTaskIdentities', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TMaintenanceWindowExecutionTaskIdentity, IMaintenanceWindowExecutionTaskIdentityUnmarshaller>.JsonNew(TMaintenanceWindowExecutionTaskIdentityUnmarshaller.JsonInstance);
        Response.WindowExecutionTaskIdentities := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDescribeMaintenanceWindowExecutionTasksResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDescribeMaintenanceWindowExecutionTasksResponseUnmarshaller.Create;
begin
  FInstance := TDescribeMaintenanceWindowExecutionTasksResponseUnmarshaller.Create;
end;

class function TDescribeMaintenanceWindowExecutionTasksResponseUnmarshaller.Instance: IDescribeMaintenanceWindowExecutionTasksResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
