unit AWS.SSM.Transform.MaintenanceWindowRunCommandParametersUnmarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowRunCommandParameters, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SSM.Transform.CloudWatchOutputConfigUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.NotificationConfigUnmarshaller, 
  System.Generics.Collections;

type
  IMaintenanceWindowRunCommandParametersUnmarshaller = IUnmarshaller<TMaintenanceWindowRunCommandParameters, TJsonUnmarshallerContext>;
  
  TMaintenanceWindowRunCommandParametersUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMaintenanceWindowRunCommandParameters, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMaintenanceWindowRunCommandParametersUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowRunCommandParameters;
    class function JsonInstance: IMaintenanceWindowRunCommandParametersUnmarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowRunCommandParametersUnmarshaller }

function TMaintenanceWindowRunCommandParametersUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowRunCommandParameters;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMaintenanceWindowRunCommandParameters;
begin
  UnmarshalledObject := TMaintenanceWindowRunCommandParameters.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CloudWatchOutputConfig', TargetDepth) then
      begin
        var Unmarshaller := TCloudWatchOutputConfigUnmarshaller.JsonInstance;
        UnmarshalledObject.CloudWatchOutputConfig := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Comment', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Comment := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DocumentHash', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DocumentHash := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DocumentHashType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DocumentHashType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DocumentVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DocumentVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NotificationConfig', TargetDepth) then
      begin
        var Unmarshaller := TNotificationConfigUnmarshaller.JsonInstance;
        UnmarshalledObject.NotificationConfig := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OutputS3BucketName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OutputS3BucketName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OutputS3KeyPrefix', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OutputS3KeyPrefix := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Parameters', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectDictionaryUnmarshaller<string, TList<string>, IJsonStringUnmarshaller, IUnmarshaller<TList<string>, TJsonUnmarshallerContext>>.JsonNew(TStringUnmarshaller.JsonInstance, TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance));
        UnmarshalledObject.Parameters := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ServiceRoleArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ServiceRoleArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TimeoutSeconds', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.TimeoutSeconds := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMaintenanceWindowRunCommandParametersUnmarshaller.Create;
begin
  FJsonInstance := TMaintenanceWindowRunCommandParametersUnmarshaller.Create;
end;

class function TMaintenanceWindowRunCommandParametersUnmarshaller.JsonInstance: IMaintenanceWindowRunCommandParametersUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
