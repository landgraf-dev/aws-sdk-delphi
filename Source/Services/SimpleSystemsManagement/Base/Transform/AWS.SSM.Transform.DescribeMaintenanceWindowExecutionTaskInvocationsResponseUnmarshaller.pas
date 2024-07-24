unit AWS.SSM.Transform.DescribeMaintenanceWindowExecutionTaskInvocationsResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionTaskInvocationsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.MaintenanceWindowExecutionTaskInvocationIdentityUnmarshaller, 
  AWS.SSM.Model.MaintenanceWindowExecutionTaskInvocationIdentity, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.DoesNotExistExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDescribeMaintenanceWindowExecutionTaskInvocationsResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeMaintenanceWindowExecutionTaskInvocationsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeMaintenanceWindowExecutionTaskInvocationsResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeMaintenanceWindowExecutionTaskInvocationsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeMaintenanceWindowExecutionTaskInvocationsResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeMaintenanceWindowExecutionTaskInvocationsResponseUnmarshaller }

function TDescribeMaintenanceWindowExecutionTaskInvocationsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeMaintenanceWindowExecutionTaskInvocationsResponse;
begin
  Response := TDescribeMaintenanceWindowExecutionTaskInvocationsResponse.Create;
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
      if AContext.TestExpression('WindowExecutionTaskInvocationIdentities', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TMaintenanceWindowExecutionTaskInvocationIdentity, IMaintenanceWindowExecutionTaskInvocationIdentityUnmarshaller>.JsonNew(TMaintenanceWindowExecutionTaskInvocationIdentityUnmarshaller.JsonInstance);
        Response.WindowExecutionTaskInvocationIdentities := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDescribeMaintenanceWindowExecutionTaskInvocationsResponseUnmarshaller.Create;
begin
  FInstance := TDescribeMaintenanceWindowExecutionTaskInvocationsResponseUnmarshaller.Create;
end;

class function TDescribeMaintenanceWindowExecutionTaskInvocationsResponseUnmarshaller.Instance: IDescribeMaintenanceWindowExecutionTaskInvocationsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
