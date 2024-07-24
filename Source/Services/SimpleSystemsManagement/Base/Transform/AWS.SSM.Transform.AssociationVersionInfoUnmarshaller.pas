unit AWS.SSM.Transform.AssociationVersionInfoUnmarshaller;

interface

uses
  AWS.SSM.Model.AssociationVersionInfo, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.InstanceAssociationOutputLocationUnmarshaller, 
  System.Generics.Collections, 
  AWS.SSM.Transform.TargetLocationUnmarshaller, 
  AWS.SSM.Model.TargetLocation, 
  AWS.SSM.Transform.TargetUnmarshaller, 
  AWS.SSM.Model.Target;

type
  IAssociationVersionInfoUnmarshaller = IUnmarshaller<TAssociationVersionInfo, TJsonUnmarshallerContext>;
  
  TAssociationVersionInfoUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAssociationVersionInfo, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IAssociationVersionInfoUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAssociationVersionInfo;
    class function JsonInstance: IAssociationVersionInfoUnmarshaller; static;
  end;
  
implementation

{ TAssociationVersionInfoUnmarshaller }

function TAssociationVersionInfoUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAssociationVersionInfo;
var
  TargetDepth: Integer;
  UnmarshalledObject: TAssociationVersionInfo;
begin
  UnmarshalledObject := TAssociationVersionInfo.Create;
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
      if AContext.TestExpression('CreatedDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreatedDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DocumentVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DocumentVersion := Unmarshaller.Unmarshall(AContext);
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

class constructor TAssociationVersionInfoUnmarshaller.Create;
begin
  FJsonInstance := TAssociationVersionInfoUnmarshaller.Create;
end;

class function TAssociationVersionInfoUnmarshaller.JsonInstance: IAssociationVersionInfoUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
