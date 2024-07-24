unit AWS.SSM.Transform.AssociationDescriptionUnmarshaller;

interface

uses
  AWS.SSM.Model.AssociationDescription, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.InstanceAssociationOutputLocationUnmarshaller, 
  AWS.SSM.Transform.AssociationOverviewUnmarshaller, 
  System.Generics.Collections, 
  AWS.SSM.Transform.AssociationStatusUnmarshaller, 
  AWS.SSM.Transform.TargetLocationUnmarshaller, 
  AWS.SSM.Model.TargetLocation, 
  AWS.SSM.Transform.TargetUnmarshaller, 
  AWS.SSM.Model.Target;

type
  IAssociationDescriptionUnmarshaller = IUnmarshaller<TAssociationDescription, TJsonUnmarshallerContext>;
  
  TAssociationDescriptionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAssociationDescription, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IAssociationDescriptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAssociationDescription;
    class function JsonInstance: IAssociationDescriptionUnmarshaller; static;
  end;
  
implementation

{ TAssociationDescriptionUnmarshaller }

function TAssociationDescriptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAssociationDescription;
var
  TargetDepth: Integer;
  UnmarshalledObject: TAssociationDescription;
begin
  UnmarshalledObject := TAssociationDescription.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ApplyOnlyAtCronInterval', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.ApplyOnlyAtCronInterval := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('AssociationId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AssociationId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('AssociationName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AssociationName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('AssociationVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AssociationVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('AutomationTargetParameterName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AutomationTargetParameterName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CalendarNames', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.CalendarNames := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ComplianceSeverity', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ComplianceSeverity := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Date', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.Date := Unmarshaller.Unmarshall(AContext);
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
      if AContext.TestExpression('LastExecutionDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastExecutionDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastSuccessfulExecutionDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastSuccessfulExecutionDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastUpdateAssociationDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastUpdateAssociationDate := Unmarshaller.Unmarshall(AContext);
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
      if AContext.TestExpression('OutputLocation', TargetDepth) then
      begin
        var Unmarshaller := TInstanceAssociationOutputLocationUnmarshaller.JsonInstance;
        UnmarshalledObject.OutputLocation := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Overview', TargetDepth) then
      begin
        var Unmarshaller := TAssociationOverviewUnmarshaller.JsonInstance;
        UnmarshalledObject.Overview := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Parameters', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectDictionaryUnmarshaller<string, TList<string>, IJsonStringUnmarshaller, IUnmarshaller<TList<string>, TJsonUnmarshallerContext>>.JsonNew(TStringUnmarshaller.JsonInstance, TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance));
        UnmarshalledObject.Parameters := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ScheduleExpression', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ScheduleExpression := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ScheduleOffset', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.ScheduleOffset := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Status', TargetDepth) then
      begin
        var Unmarshaller := TAssociationStatusUnmarshaller.JsonInstance;
        UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SyncCompliance', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SyncCompliance := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TargetLocations', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TTargetLocation, ITargetLocationUnmarshaller>.JsonNew(TTargetLocationUnmarshaller.JsonInstance);
        UnmarshalledObject.TargetLocations := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TargetMaps', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TObjectDictionary<string, TList<string>>, IUnmarshaller<TObjectDictionary<string, TList<string>>, TJsonUnmarshallerContext>>.JsonNew(TJsonObjectDictionaryUnmarshaller<string, TList<string>, IJsonStringUnmarshaller, IUnmarshaller<TList<string>, TJsonUnmarshallerContext>>.JsonNew(TStringUnmarshaller.JsonInstance, TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance)));
        UnmarshalledObject.TargetMaps := Unmarshaller.Unmarshall(AContext);
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

class constructor TAssociationDescriptionUnmarshaller.Create;
begin
  FJsonInstance := TAssociationDescriptionUnmarshaller.Create;
end;

class function TAssociationDescriptionUnmarshaller.JsonInstance: IAssociationDescriptionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
