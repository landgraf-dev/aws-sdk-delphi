unit AWS.SSM.Transform.ComplianceSummaryItemUnmarshaller;

interface

uses
  AWS.SSM.Model.ComplianceSummaryItem, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.CompliantSummaryUnmarshaller, 
  AWS.SSM.Transform.NonCompliantSummaryUnmarshaller;

type
  IComplianceSummaryItemUnmarshaller = IUnmarshaller<TComplianceSummaryItem, TJsonUnmarshallerContext>;
  
  TComplianceSummaryItemUnmarshaller = class(TInterfacedObject, IUnmarshaller<TComplianceSummaryItem, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IComplianceSummaryItemUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TComplianceSummaryItem;
    class function JsonInstance: IComplianceSummaryItemUnmarshaller; static;
  end;
  
implementation

{ TComplianceSummaryItemUnmarshaller }

function TComplianceSummaryItemUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TComplianceSummaryItem;
var
  TargetDepth: Integer;
  UnmarshalledObject: TComplianceSummaryItem;
begin
  UnmarshalledObject := TComplianceSummaryItem.Create;
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
      if AContext.TestExpression('NonCompliantSummary', TargetDepth) then
      begin
        var Unmarshaller := TNonCompliantSummaryUnmarshaller.JsonInstance;
        UnmarshalledObject.NonCompliantSummary := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TComplianceSummaryItemUnmarshaller.Create;
begin
  FJsonInstance := TComplianceSummaryItemUnmarshaller.Create;
end;

class function TComplianceSummaryItemUnmarshaller.JsonInstance: IComplianceSummaryItemUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
