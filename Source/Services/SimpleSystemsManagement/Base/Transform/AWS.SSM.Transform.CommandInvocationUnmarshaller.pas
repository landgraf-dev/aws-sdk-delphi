unit AWS.SSM.Transform.CommandInvocationUnmarshaller;

interface

uses
  AWS.SSM.Model.CommandInvocation, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SSM.Transform.CloudWatchOutputConfigUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.CommandPluginUnmarshaller, 
  AWS.SSM.Model.CommandPlugin, 
  AWS.SSM.Transform.NotificationConfigUnmarshaller;

type
  ICommandInvocationUnmarshaller = IUnmarshaller<TCommandInvocation, TJsonUnmarshallerContext>;
  
  TCommandInvocationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCommandInvocation, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ICommandInvocationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TCommandInvocation;
    class function JsonInstance: ICommandInvocationUnmarshaller; static;
  end;
  
implementation

{ TCommandInvocationUnmarshaller }

function TCommandInvocationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TCommandInvocation;
var
  TargetDepth: Integer;
  UnmarshalledObject: TCommandInvocation;
begin
  UnmarshalledObject := TCommandInvocation.Create;
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
      if AContext.TestExpression('CommandId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.CommandId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CommandPlugins', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TCommandPlugin, ICommandPluginUnmarshaller>.JsonNew(TCommandPluginUnmarshaller.JsonInstance);
        UnmarshalledObject.CommandPlugins := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Comment', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Comment := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DocumentName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DocumentName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DocumentVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DocumentVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InstanceId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.InstanceId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InstanceName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.InstanceName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NotificationConfig', TargetDepth) then
      begin
        var Unmarshaller := TNotificationConfigUnmarshaller.JsonInstance;
        UnmarshalledObject.NotificationConfig := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('RequestedDateTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.RequestedDateTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ServiceRole', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ServiceRole := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StandardErrorUrl', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.StandardErrorUrl := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StandardOutputUrl', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.StandardOutputUrl := Unmarshaller.Unmarshall(AContext);
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
      if AContext.TestExpression('TraceOutput', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TraceOutput := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TCommandInvocationUnmarshaller.Create;
begin
  FJsonInstance := TCommandInvocationUnmarshaller.Create;
end;

class function TCommandInvocationUnmarshaller.JsonInstance: ICommandInvocationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
