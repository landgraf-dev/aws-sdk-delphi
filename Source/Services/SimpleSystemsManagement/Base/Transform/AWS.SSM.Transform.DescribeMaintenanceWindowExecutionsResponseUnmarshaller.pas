unit AWS.SSM.Transform.DescribeMaintenanceWindowExecutionsResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.MaintenanceWindowExecutionUnmarshaller, 
  AWS.SSM.Model.MaintenanceWindowExecution, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDescribeMaintenanceWindowExecutionsResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeMaintenanceWindowExecutionsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeMaintenanceWindowExecutionsResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeMaintenanceWindowExecutionsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeMaintenanceWindowExecutionsResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeMaintenanceWindowExecutionsResponseUnmarshaller }

function TDescribeMaintenanceWindowExecutionsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeMaintenanceWindowExecutionsResponse;
begin
  Response := TDescribeMaintenanceWindowExecutionsResponse.Create;
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
      if AContext.TestExpression('WindowExecutions', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TMaintenanceWindowExecution, IMaintenanceWindowExecutionUnmarshaller>.JsonNew(TMaintenanceWindowExecutionUnmarshaller.JsonInstance);
        Response.WindowExecutions := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDescribeMaintenanceWindowExecutionsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDescribeMaintenanceWindowExecutionsResponseUnmarshaller.Create;
begin
  FInstance := TDescribeMaintenanceWindowExecutionsResponseUnmarshaller.Create;
end;

class function TDescribeMaintenanceWindowExecutionsResponseUnmarshaller.Instance: IDescribeMaintenanceWindowExecutionsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
