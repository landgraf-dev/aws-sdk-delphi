unit AWS.SSM.Transform.UpdateMaintenanceWindowResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.UpdateMaintenanceWindowResponse, 
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
  AWS.SSM.Exception;

type
  IUpdateMaintenanceWindowResponseUnmarshaller = IResponseUnmarshaller;
  
  TUpdateMaintenanceWindowResponseUnmarshaller = class(TJsonResponseUnmarshaller, IUpdateMaintenanceWindowResponseUnmarshaller)
  strict private
    class var FInstance: IUpdateMaintenanceWindowResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IUpdateMaintenanceWindowResponseUnmarshaller; static;
  end;
  
implementation

{ TUpdateMaintenanceWindowResponseUnmarshaller }

function TUpdateMaintenanceWindowResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TUpdateMaintenanceWindowResponse;
begin
  Response := TUpdateMaintenanceWindowResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AllowUnassociatedTargets', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        Response.AllowUnassociatedTargets := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Cutoff', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        Response.Cutoff := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Description', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.Description := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Duration', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        Response.Duration := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Enabled', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        Response.Enabled := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('EndDate', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.EndDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Schedule', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.Schedule := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ScheduleOffset', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        Response.ScheduleOffset := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ScheduleTimezone', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.ScheduleTimezone := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StartDate', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.StartDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('WindowId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.WindowId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TUpdateMaintenanceWindowResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TUpdateMaintenanceWindowResponseUnmarshaller.Create;
begin
  FInstance := TUpdateMaintenanceWindowResponseUnmarshaller.Create;
end;

class function TUpdateMaintenanceWindowResponseUnmarshaller.Instance: IUpdateMaintenanceWindowResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
