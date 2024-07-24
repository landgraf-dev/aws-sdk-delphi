unit AWS.SSM.Transform.ComplianceExecutionSummaryUnmarshaller;

interface

uses
  AWS.SSM.Model.ComplianceExecutionSummary, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IComplianceExecutionSummaryUnmarshaller = IUnmarshaller<TComplianceExecutionSummary, TJsonUnmarshallerContext>;
  
  TComplianceExecutionSummaryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TComplianceExecutionSummary, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IComplianceExecutionSummaryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TComplianceExecutionSummary;
    class function JsonInstance: IComplianceExecutionSummaryUnmarshaller; static;
  end;
  
implementation

{ TComplianceExecutionSummaryUnmarshaller }

function TComplianceExecutionSummaryUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TComplianceExecutionSummary;
var
  TargetDepth: Integer;
  UnmarshalledObject: TComplianceExecutionSummary;
begin
  UnmarshalledObject := TComplianceExecutionSummary.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ExecutionId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ExecutionId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ExecutionTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.ExecutionTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ExecutionType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ExecutionType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TComplianceExecutionSummaryUnmarshaller.Create;
begin
  FJsonInstance := TComplianceExecutionSummaryUnmarshaller.Create;
end;

class function TComplianceExecutionSummaryUnmarshaller.JsonInstance: IComplianceExecutionSummaryUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
