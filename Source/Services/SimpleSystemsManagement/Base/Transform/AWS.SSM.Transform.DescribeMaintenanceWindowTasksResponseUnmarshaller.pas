unit AWS.SSM.Transform.DescribeMaintenanceWindowTasksResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribeMaintenanceWindowTasksResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.MaintenanceWindowTaskUnmarshaller, 
  AWS.SSM.Model.MaintenanceWindowTask, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.DoesNotExistExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDescribeMaintenanceWindowTasksResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeMaintenanceWindowTasksResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeMaintenanceWindowTasksResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeMaintenanceWindowTasksResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeMaintenanceWindowTasksResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeMaintenanceWindowTasksResponseUnmarshaller }

function TDescribeMaintenanceWindowTasksResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeMaintenanceWindowTasksResponse;
begin
  Response := TDescribeMaintenanceWindowTasksResponse.Create;
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
      if AContext.TestExpression('Tasks', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TMaintenanceWindowTask, IMaintenanceWindowTaskUnmarshaller>.JsonNew(TMaintenanceWindowTaskUnmarshaller.JsonInstance);
        Response.Tasks := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDescribeMaintenanceWindowTasksResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDescribeMaintenanceWindowTasksResponseUnmarshaller.Create;
begin
  FInstance := TDescribeMaintenanceWindowTasksResponseUnmarshaller.Create;
end;

class function TDescribeMaintenanceWindowTasksResponseUnmarshaller.Instance: IDescribeMaintenanceWindowTasksResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
