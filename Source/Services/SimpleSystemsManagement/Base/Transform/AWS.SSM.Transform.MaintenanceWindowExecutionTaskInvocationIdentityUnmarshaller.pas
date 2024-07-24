unit AWS.SSM.Transform.MaintenanceWindowExecutionTaskInvocationIdentityUnmarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowExecutionTaskInvocationIdentity, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IMaintenanceWindowExecutionTaskInvocationIdentityUnmarshaller = IUnmarshaller<TMaintenanceWindowExecutionTaskInvocationIdentity, TJsonUnmarshallerContext>;
  
  TMaintenanceWindowExecutionTaskInvocationIdentityUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMaintenanceWindowExecutionTaskInvocationIdentity, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMaintenanceWindowExecutionTaskInvocationIdentityUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowExecutionTaskInvocationIdentity;
    class function JsonInstance: IMaintenanceWindowExecutionTaskInvocationIdentityUnmarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowExecutionTaskInvocationIdentityUnmarshaller }

function TMaintenanceWindowExecutionTaskInvocationIdentityUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowExecutionTaskInvocationIdentity;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMaintenanceWindowExecutionTaskInvocationIdentity;
begin
  UnmarshalledObject := TMaintenanceWindowExecutionTaskInvocationIdentity.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('EndTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.EndTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ExecutionId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ExecutionId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InvocationId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.InvocationId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OwnerInformation', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OwnerInformation := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Parameters', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Parameters := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StartTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.StartTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Status', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StatusDetails', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.StatusDetails := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TaskExecutionId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TaskExecutionId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TaskType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TaskType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('WindowExecutionId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.WindowExecutionId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('WindowTargetId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.WindowTargetId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMaintenanceWindowExecutionTaskInvocationIdentityUnmarshaller.Create;
begin
  FJsonInstance := TMaintenanceWindowExecutionTaskInvocationIdentityUnmarshaller.Create;
end;

class function TMaintenanceWindowExecutionTaskInvocationIdentityUnmarshaller.JsonInstance: IMaintenanceWindowExecutionTaskInvocationIdentityUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
