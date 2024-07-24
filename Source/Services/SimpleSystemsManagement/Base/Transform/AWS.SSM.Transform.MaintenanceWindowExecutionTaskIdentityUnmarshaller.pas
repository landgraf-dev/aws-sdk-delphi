unit AWS.SSM.Transform.MaintenanceWindowExecutionTaskIdentityUnmarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowExecutionTaskIdentity, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IMaintenanceWindowExecutionTaskIdentityUnmarshaller = IUnmarshaller<TMaintenanceWindowExecutionTaskIdentity, TJsonUnmarshallerContext>;
  
  TMaintenanceWindowExecutionTaskIdentityUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMaintenanceWindowExecutionTaskIdentity, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMaintenanceWindowExecutionTaskIdentityUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowExecutionTaskIdentity;
    class function JsonInstance: IMaintenanceWindowExecutionTaskIdentityUnmarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowExecutionTaskIdentityUnmarshaller }

function TMaintenanceWindowExecutionTaskIdentityUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowExecutionTaskIdentity;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMaintenanceWindowExecutionTaskIdentity;
begin
  UnmarshalledObject := TMaintenanceWindowExecutionTaskIdentity.Create;
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
      if AContext.TestExpression('TaskArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TaskArn := Unmarshaller.Unmarshall(AContext);
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
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMaintenanceWindowExecutionTaskIdentityUnmarshaller.Create;
begin
  FJsonInstance := TMaintenanceWindowExecutionTaskIdentityUnmarshaller.Create;
end;

class function TMaintenanceWindowExecutionTaskIdentityUnmarshaller.JsonInstance: IMaintenanceWindowExecutionTaskIdentityUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
