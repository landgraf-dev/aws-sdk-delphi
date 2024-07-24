unit AWS.SSM.Transform.AutomationExecutionMetadataUnmarshaller;

interface

uses
  AWS.SSM.Model.AutomationExecutionMetadata, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  System.Generics.Collections, 
  AWS.SSM.Transform.ResolvedTargetsUnmarshaller, 
  AWS.SSM.Transform.RunbookUnmarshaller, 
  AWS.SSM.Model.Runbook, 
  AWS.SSM.Transform.TargetUnmarshaller, 
  AWS.SSM.Model.Target;

type
  IAutomationExecutionMetadataUnmarshaller = IUnmarshaller<TAutomationExecutionMetadata, TJsonUnmarshallerContext>;
  
  TAutomationExecutionMetadataUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAutomationExecutionMetadata, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IAutomationExecutionMetadataUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAutomationExecutionMetadata;
    class function JsonInstance: IAutomationExecutionMetadataUnmarshaller; static;
  end;
  
implementation

{ TAutomationExecutionMetadataUnmarshaller }

function TAutomationExecutionMetadataUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAutomationExecutionMetadata;
var
  TargetDepth: Integer;
  UnmarshalledObject: TAutomationExecutionMetadata;
begin
  UnmarshalledObject := TAutomationExecutionMetadata.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AssociationId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AssociationId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('AutomationExecutionId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AutomationExecutionId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('AutomationExecutionStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AutomationExecutionStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('AutomationSubtype', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AutomationSubtype := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('AutomationType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AutomationType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ChangeRequestName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ChangeRequestName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CurrentAction', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.CurrentAction := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CurrentStepName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.CurrentStepName := Unmarshaller.Unmarshall(AContext);
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
      if AContext.TestExpression('ExecutedBy', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ExecutedBy := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ExecutionEndTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.ExecutionEndTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ExecutionStartTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.ExecutionStartTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FailureMessage', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.FailureMessage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LogFile', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LogFile := Unmarshaller.Unmarshall(AContext);
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
      if AContext.TestExpression('Mode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Mode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OpsItemId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OpsItemId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Outputs', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectDictionaryUnmarshaller<string, TList<string>, IJsonStringUnmarshaller, IUnmarshaller<TList<string>, TJsonUnmarshallerContext>>.JsonNew(TStringUnmarshaller.JsonInstance, TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance));
        UnmarshalledObject.Outputs := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ParentAutomationExecutionId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ParentAutomationExecutionId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ResolvedTargets', TargetDepth) then
      begin
        var Unmarshaller := TResolvedTargetsUnmarshaller.JsonInstance;
        UnmarshalledObject.ResolvedTargets := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Runbooks', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TRunbook, IRunbookUnmarshaller>.JsonNew(TRunbookUnmarshaller.JsonInstance);
        UnmarshalledObject.Runbooks := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ScheduledTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.ScheduledTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Target', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Target := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TargetMaps', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TObjectDictionary<string, TList<string>>, IUnmarshaller<TObjectDictionary<string, TList<string>>, TJsonUnmarshallerContext>>.JsonNew(TJsonObjectDictionaryUnmarshaller<string, TList<string>, IJsonStringUnmarshaller, IUnmarshaller<TList<string>, TJsonUnmarshallerContext>>.JsonNew(TStringUnmarshaller.JsonInstance, TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance)));
        UnmarshalledObject.TargetMaps := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TargetParameterName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TargetParameterName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Targets', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TTarget, ITargetUnmarshaller>.JsonNew(TTargetUnmarshaller.JsonInstance);
        UnmarshalledObject.Targets := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TAutomationExecutionMetadataUnmarshaller.Create;
begin
  FJsonInstance := TAutomationExecutionMetadataUnmarshaller.Create;
end;

class function TAutomationExecutionMetadataUnmarshaller.JsonInstance: IAutomationExecutionMetadataUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
