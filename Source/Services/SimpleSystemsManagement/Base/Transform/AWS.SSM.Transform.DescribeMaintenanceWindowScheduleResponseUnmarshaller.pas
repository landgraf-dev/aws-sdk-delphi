unit AWS.SSM.Transform.DescribeMaintenanceWindowScheduleResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribeMaintenanceWindowScheduleResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.ScheduledWindowExecutionUnmarshaller, 
  AWS.SSM.Model.ScheduledWindowExecution, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.DoesNotExistExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDescribeMaintenanceWindowScheduleResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeMaintenanceWindowScheduleResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeMaintenanceWindowScheduleResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeMaintenanceWindowScheduleResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeMaintenanceWindowScheduleResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeMaintenanceWindowScheduleResponseUnmarshaller }

function TDescribeMaintenanceWindowScheduleResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeMaintenanceWindowScheduleResponse;
begin
  Response := TDescribeMaintenanceWindowScheduleResponse.Create;
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
      if AContext.TestExpression('ScheduledWindowExecutions', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TScheduledWindowExecution, IScheduledWindowExecutionUnmarshaller>.JsonNew(TScheduledWindowExecutionUnmarshaller.JsonInstance);
        Response.ScheduledWindowExecutions := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDescribeMaintenanceWindowScheduleResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDescribeMaintenanceWindowScheduleResponseUnmarshaller.Create;
begin
  FInstance := TDescribeMaintenanceWindowScheduleResponseUnmarshaller.Create;
end;

class function TDescribeMaintenanceWindowScheduleResponseUnmarshaller.Instance: IDescribeMaintenanceWindowScheduleResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
