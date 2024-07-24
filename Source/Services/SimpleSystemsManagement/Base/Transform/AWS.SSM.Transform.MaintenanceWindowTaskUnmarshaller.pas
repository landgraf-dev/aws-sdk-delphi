unit AWS.SSM.Transform.MaintenanceWindowTaskUnmarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowTask, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.LoggingInfoUnmarshaller, 
  AWS.SSM.Transform.TargetUnmarshaller, 
  AWS.SSM.Model.Target, 
  AWS.SSM.Transform.MaintenanceWindowTaskParameterValueExpressionUnmarshaller, 
  AWS.SSM.Model.MaintenanceWindowTaskParameterValueExpression;

type
  IMaintenanceWindowTaskUnmarshaller = IUnmarshaller<TMaintenanceWindowTask, TJsonUnmarshallerContext>;
  
  TMaintenanceWindowTaskUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMaintenanceWindowTask, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMaintenanceWindowTaskUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowTask;
    class function JsonInstance: IMaintenanceWindowTaskUnmarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowTaskUnmarshaller }

function TMaintenanceWindowTaskUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowTask;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMaintenanceWindowTask;
begin
  UnmarshalledObject := TMaintenanceWindowTask.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CutoffBehavior', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.CutoffBehavior := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Description', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Description := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LoggingInfo', TargetDepth) then
      begin
        var Unmarshaller := TLoggingInfoUnmarshaller.JsonInstance;
        UnmarshalledObject.LoggingInfo := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MaxConcurrency', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.MaxConcurrency := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MaxErrors', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.MaxErrors := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Priority', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.Priority := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ServiceRoleArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ServiceRoleArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Targets', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TTarget, ITargetUnmarshaller>.JsonNew(TTargetUnmarshaller.JsonInstance);
        UnmarshalledObject.Targets := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TaskArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TaskArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TaskParameters', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectDictionaryUnmarshaller<string, TMaintenanceWindowTaskParameterValueExpression, IJsonStringUnmarshaller, IMaintenanceWindowTaskParameterValueExpressionUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TMaintenanceWindowTaskParameterValueExpressionUnmarshaller.JsonInstance);
        UnmarshalledObject.TaskParameters := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Type', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.&Type := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('WindowId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.WindowId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('WindowTaskId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.WindowTaskId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMaintenanceWindowTaskUnmarshaller.Create;
begin
  FJsonInstance := TMaintenanceWindowTaskUnmarshaller.Create;
end;

class function TMaintenanceWindowTaskUnmarshaller.JsonInstance: IMaintenanceWindowTaskUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
