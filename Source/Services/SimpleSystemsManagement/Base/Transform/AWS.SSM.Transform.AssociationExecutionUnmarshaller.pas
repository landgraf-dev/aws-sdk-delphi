unit AWS.SSM.Transform.AssociationExecutionUnmarshaller;

interface

uses
  AWS.SSM.Model.AssociationExecution, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IAssociationExecutionUnmarshaller = IUnmarshaller<TAssociationExecution, TJsonUnmarshallerContext>;
  
  TAssociationExecutionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAssociationExecution, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IAssociationExecutionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAssociationExecution;
    class function JsonInstance: IAssociationExecutionUnmarshaller; static;
  end;
  
implementation

{ TAssociationExecutionUnmarshaller }

function TAssociationExecutionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAssociationExecution;
var
  TargetDepth: Integer;
  UnmarshalledObject: TAssociationExecution;
begin
  UnmarshalledObject := TAssociationExecution.Create;
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
      if AContext.TestExpression('CreatedTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreatedTime := Unmarshaller.Unmarshall(AContext);
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
      if AContext.TestExpression('ResourceCountByStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ResourceCountByStatus := Unmarshaller.Unmarshall(AContext);
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

class constructor TAssociationExecutionUnmarshaller.Create;
begin
  FJsonInstance := TAssociationExecutionUnmarshaller.Create;
end;

class function TAssociationExecutionUnmarshaller.JsonInstance: IAssociationExecutionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
