unit AWS.SSM.Transform.ResourceComplianceSummaryItemUnmarshaller;

interface

uses
  AWS.SSM.Model.ResourceComplianceSummaryItem, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.CompliantSummaryUnmarshaller, 
  AWS.SSM.Transform.ComplianceExecutionSummaryUnmarshaller, 
  AWS.SSM.Transform.NonCompliantSummaryUnmarshaller;

type
  IResourceComplianceSummaryItemUnmarshaller = IUnmarshaller<TResourceComplianceSummaryItem, TJsonUnmarshallerContext>;
  
  TResourceComplianceSummaryItemUnmarshaller = class(TInterfacedObject, IUnmarshaller<TResourceComplianceSummaryItem, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IResourceComplianceSummaryItemUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TResourceComplianceSummaryItem;
    class function JsonInstance: IResourceComplianceSummaryItemUnmarshaller; static;
  end;
  
implementation

{ TResourceComplianceSummaryItemUnmarshaller }

function TResourceComplianceSummaryItemUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TResourceComplianceSummaryItem;
var
  TargetDepth: Integer;
  UnmarshalledObject: TResourceComplianceSummaryItem;
begin
  UnmarshalledObject := TResourceComplianceSummaryItem.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ComplianceType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ComplianceType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CompliantSummary', TargetDepth) then
      begin
        var Unmarshaller := TCompliantSummaryUnmarshaller.JsonInstance;
        UnmarshalledObject.CompliantSummary := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ExecutionSummary', TargetDepth) then
      begin
        var Unmarshaller := TComplianceExecutionSummaryUnmarshaller.JsonInstance;
        UnmarshalledObject.ExecutionSummary := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NonCompliantSummary', TargetDepth) then
      begin
        var Unmarshaller := TNonCompliantSummaryUnmarshaller.JsonInstance;
        UnmarshalledObject.NonCompliantSummary := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OverallSeverity', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OverallSeverity := Unmarshaller.Unmarshall(AContext);
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

class constructor TResourceComplianceSummaryItemUnmarshaller.Create;
begin
  FJsonInstance := TResourceComplianceSummaryItemUnmarshaller.Create;
end;

class function TResourceComplianceSummaryItemUnmarshaller.JsonInstance: IResourceComplianceSummaryItemUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
