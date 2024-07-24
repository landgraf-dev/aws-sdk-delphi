unit AWS.SSM.Transform.DescribeMaintenanceWindowsForTargetResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribeMaintenanceWindowsForTargetResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.MaintenanceWindowIdentityForTargetUnmarshaller, 
  AWS.SSM.Model.MaintenanceWindowIdentityForTarget, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDescribeMaintenanceWindowsForTargetResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeMaintenanceWindowsForTargetResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeMaintenanceWindowsForTargetResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeMaintenanceWindowsForTargetResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeMaintenanceWindowsForTargetResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeMaintenanceWindowsForTargetResponseUnmarshaller }

function TDescribeMaintenanceWindowsForTargetResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeMaintenanceWindowsForTargetResponse;
begin
  Response := TDescribeMaintenanceWindowsForTargetResponse.Create;
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
      if AContext.TestExpression('WindowIdentities', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TMaintenanceWindowIdentityForTarget, IMaintenanceWindowIdentityForTargetUnmarshaller>.JsonNew(TMaintenanceWindowIdentityForTargetUnmarshaller.JsonInstance);
        Response.WindowIdentities := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDescribeMaintenanceWindowsForTargetResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDescribeMaintenanceWindowsForTargetResponseUnmarshaller.Create;
begin
  FInstance := TDescribeMaintenanceWindowsForTargetResponseUnmarshaller.Create;
end;

class function TDescribeMaintenanceWindowsForTargetResponseUnmarshaller.Instance: IDescribeMaintenanceWindowsForTargetResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
