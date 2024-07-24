unit AWS.SSM.Transform.AssociationExecutionTargetUnmarshaller;

interface

uses
  AWS.SSM.Model.AssociationExecutionTarget, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.OutputSourceUnmarshaller;

type
  IAssociationExecutionTargetUnmarshaller = IUnmarshaller<TAssociationExecutionTarget, TJsonUnmarshallerContext>;
  
  TAssociationExecutionTargetUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAssociationExecutionTarget, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IAssociationExecutionTargetUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAssociationExecutionTarget;
    class function JsonInstance: IAssociationExecutionTargetUnmarshaller; static;
  end;
  
implementation

{ TAssociationExecutionTargetUnmarshaller }

function TAssociationExecutionTargetUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAssociationExecutionTarget;
var
  TargetDepth: Integer;
  UnmarshalledObject: TAssociationExecutionTarget;
begin
  UnmarshalledObject := TAssociationExecutionTarget.Create;
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
      if AContext.TestExpression('AssociationVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AssociationVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DetailedStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DetailedStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ExecutionId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ExecutionId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastExecutionDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastExecutionDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OutputSource', TargetDepth) then
      begin
        var Unmarshaller := TOutputSourceUnmarshaller.JsonInstance;
        UnmarshalledObject.OutputSource := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ResourceId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ResourceId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ResourceType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ResourceType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Status', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TAssociationExecutionTargetUnmarshaller.Create;
begin
  FJsonInstance := TAssociationExecutionTargetUnmarshaller.Create;
end;

class function TAssociationExecutionTargetUnmarshaller.JsonInstance: IAssociationExecutionTargetUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
