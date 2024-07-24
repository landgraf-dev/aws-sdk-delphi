unit AWS.SSM.Transform.MaintenanceWindowTaskInvocationParametersUnmarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowTaskInvocationParameters, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SSM.Transform.MaintenanceWindowAutomationParametersUnmarshaller, 
  AWS.SSM.Transform.MaintenanceWindowLambdaParametersUnmarshaller, 
  AWS.SSM.Transform.MaintenanceWindowRunCommandParametersUnmarshaller, 
  AWS.SSM.Transform.MaintenanceWindowStepFunctionsParametersUnmarshaller;

type
  IMaintenanceWindowTaskInvocationParametersUnmarshaller = IUnmarshaller<TMaintenanceWindowTaskInvocationParameters, TJsonUnmarshallerContext>;
  
  TMaintenanceWindowTaskInvocationParametersUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMaintenanceWindowTaskInvocationParameters, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMaintenanceWindowTaskInvocationParametersUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowTaskInvocationParameters;
    class function JsonInstance: IMaintenanceWindowTaskInvocationParametersUnmarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowTaskInvocationParametersUnmarshaller }

function TMaintenanceWindowTaskInvocationParametersUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowTaskInvocationParameters;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMaintenanceWindowTaskInvocationParameters;
begin
  UnmarshalledObject := TMaintenanceWindowTaskInvocationParameters.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Automation', TargetDepth) then
      begin
        var Unmarshaller := TMaintenanceWindowAutomationParametersUnmarshaller.JsonInstance;
        UnmarshalledObject.Automation := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Lambda', TargetDepth) then
      begin
        var Unmarshaller := TMaintenanceWindowLambdaParametersUnmarshaller.JsonInstance;
        UnmarshalledObject.Lambda := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('RunCommand', TargetDepth) then
      begin
        var Unmarshaller := TMaintenanceWindowRunCommandParametersUnmarshaller.JsonInstance;
        UnmarshalledObject.RunCommand := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StepFunctions', TargetDepth) then
      begin
        var Unmarshaller := TMaintenanceWindowStepFunctionsParametersUnmarshaller.JsonInstance;
        UnmarshalledObject.StepFunctions := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMaintenanceWindowTaskInvocationParametersUnmarshaller.Create;
begin
  FJsonInstance := TMaintenanceWindowTaskInvocationParametersUnmarshaller.Create;
end;

class function TMaintenanceWindowTaskInvocationParametersUnmarshaller.JsonInstance: IMaintenanceWindowTaskInvocationParametersUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
