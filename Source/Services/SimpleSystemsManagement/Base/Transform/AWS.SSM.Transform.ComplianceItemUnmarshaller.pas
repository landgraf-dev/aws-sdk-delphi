unit AWS.SSM.Transform.ComplianceItemUnmarshaller;

interface

uses
  AWS.SSM.Model.ComplianceItem, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.ComplianceExecutionSummaryUnmarshaller;

type
  IComplianceItemUnmarshaller = IUnmarshaller<TComplianceItem, TJsonUnmarshallerContext>;
  
  TComplianceItemUnmarshaller = class(TInterfacedObject, IUnmarshaller<TComplianceItem, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IComplianceItemUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TComplianceItem;
    class function JsonInstance: IComplianceItemUnmarshaller; static;
  end;
  
implementation

{ TComplianceItemUnmarshaller }

function TComplianceItemUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TComplianceItem;
var
  TargetDepth: Integer;
  UnmarshalledObject: TComplianceItem;
begin
  UnmarshalledObject := TComplianceItem.Create;
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
      if AContext.TestExpression('Details', TargetDepth) then
      begin
        var Unmarshaller := TJsonDictionaryUnmarshaller<string, string, IJsonStringUnmarshaller, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Details := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ExecutionSummary', TargetDepth) then
      begin
        var Unmarshaller := TComplianceExecutionSummaryUnmarshaller.JsonInstance;
        UnmarshalledObject.ExecutionSummary := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Id', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Id := Unmarshaller.Unmarshall(AContext);
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
      if AContext.TestExpression('Severity', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Severity := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Status', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Title', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Title := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TComplianceItemUnmarshaller.Create;
begin
  FJsonInstance := TComplianceItemUnmarshaller.Create;
end;

class function TComplianceItemUnmarshaller.JsonInstance: IComplianceItemUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
