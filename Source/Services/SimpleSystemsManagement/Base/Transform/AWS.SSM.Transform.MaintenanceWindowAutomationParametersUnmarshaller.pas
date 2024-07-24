unit AWS.SSM.Transform.MaintenanceWindowAutomationParametersUnmarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowAutomationParameters, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  System.Generics.Collections;

type
  IMaintenanceWindowAutomationParametersUnmarshaller = IUnmarshaller<TMaintenanceWindowAutomationParameters, TJsonUnmarshallerContext>;
  
  TMaintenanceWindowAutomationParametersUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMaintenanceWindowAutomationParameters, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMaintenanceWindowAutomationParametersUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowAutomationParameters;
    class function JsonInstance: IMaintenanceWindowAutomationParametersUnmarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowAutomationParametersUnmarshaller }

function TMaintenanceWindowAutomationParametersUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowAutomationParameters;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMaintenanceWindowAutomationParameters;
begin
  UnmarshalledObject := TMaintenanceWindowAutomationParameters.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DocumentVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DocumentVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Parameters', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectDictionaryUnmarshaller<string, TList<string>, IJsonStringUnmarshaller, IUnmarshaller<TList<string>, TJsonUnmarshallerContext>>.JsonNew(TStringUnmarshaller.JsonInstance, TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance));
        UnmarshalledObject.Parameters := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMaintenanceWindowAutomationParametersUnmarshaller.Create;
begin
  FJsonInstance := TMaintenanceWindowAutomationParametersUnmarshaller.Create;
end;

class function TMaintenanceWindowAutomationParametersUnmarshaller.JsonInstance: IMaintenanceWindowAutomationParametersUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
