unit AWS.SSM.Transform.AssociationUnmarshaller;

interface

uses
  AWS.SSM.Model.Association, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.AssociationOverviewUnmarshaller, 
  System.Generics.Collections, 
  AWS.SSM.Transform.TargetUnmarshaller, 
  AWS.SSM.Model.Target;

type
  IAssociationUnmarshaller = IUnmarshaller<TAssociation, TJsonUnmarshallerContext>;
  
  TAssociationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAssociation, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IAssociationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAssociation;
    class function JsonInstance: IAssociationUnmarshaller; static;
  end;
  
implementation

{ TAssociationUnmarshaller }

function TAssociationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAssociation;
var
  TargetDepth: Integer;
  UnmarshalledObject: TAssociation;
begin
  UnmarshalledObject := TAssociation.Create;
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
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Overview', TargetDepth) then
      begin
        var Unmarshaller := TAssociationOverviewUnmarshaller.JsonInstance;
        UnmarshalledObject.Overview := Unmarshaller.Unmarshall(AContext);
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

class constructor TAssociationUnmarshaller.Create;
begin
  FJsonInstance := TAssociationUnmarshaller.Create;
end;

class function TAssociationUnmarshaller.JsonInstance: IAssociationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
