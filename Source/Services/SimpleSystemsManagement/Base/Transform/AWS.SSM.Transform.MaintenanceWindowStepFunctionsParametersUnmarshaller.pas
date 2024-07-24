unit AWS.SSM.Transform.MaintenanceWindowStepFunctionsParametersUnmarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowStepFunctionsParameters, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IMaintenanceWindowStepFunctionsParametersUnmarshaller = IUnmarshaller<TMaintenanceWindowStepFunctionsParameters, TJsonUnmarshallerContext>;
  
  TMaintenanceWindowStepFunctionsParametersUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMaintenanceWindowStepFunctionsParameters, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMaintenanceWindowStepFunctionsParametersUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowStepFunctionsParameters;
    class function JsonInstance: IMaintenanceWindowStepFunctionsParametersUnmarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowStepFunctionsParametersUnmarshaller }

function TMaintenanceWindowStepFunctionsParametersUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowStepFunctionsParameters;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMaintenanceWindowStepFunctionsParameters;
begin
  UnmarshalledObject := TMaintenanceWindowStepFunctionsParameters.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Input', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Input := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMaintenanceWindowStepFunctionsParametersUnmarshaller.Create;
begin
  FJsonInstance := TMaintenanceWindowStepFunctionsParametersUnmarshaller.Create;
end;

class function TMaintenanceWindowStepFunctionsParametersUnmarshaller.JsonInstance: IMaintenanceWindowStepFunctionsParametersUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
