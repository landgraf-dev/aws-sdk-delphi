unit AWS.SSM.Transform.PatchRuleUnmarshaller;

interface

uses
  AWS.SSM.Model.PatchRule, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.PatchFilterGroupUnmarshaller;

type
  IPatchRuleUnmarshaller = IUnmarshaller<TPatchRule, TJsonUnmarshallerContext>;
  
  TPatchRuleUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPatchRule, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IPatchRuleUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TPatchRule;
    class function JsonInstance: IPatchRuleUnmarshaller; static;
  end;
  
implementation

{ TPatchRuleUnmarshaller }

function TPatchRuleUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TPatchRule;
var
  TargetDepth: Integer;
  UnmarshalledObject: TPatchRule;
begin
  UnmarshalledObject := TPatchRule.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ApproveAfterDays', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.ApproveAfterDays := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ApproveUntilDate', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ApproveUntilDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ComplianceLevel', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ComplianceLevel := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('EnableNonSecurity', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.EnableNonSecurity := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PatchFilterGroup', TargetDepth) then
      begin
        var Unmarshaller := TPatchFilterGroupUnmarshaller.JsonInstance;
        UnmarshalledObject.PatchFilterGroup := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TPatchRuleUnmarshaller.Create;
begin
  FJsonInstance := TPatchRuleUnmarshaller.Create;
end;

class function TPatchRuleUnmarshaller.JsonInstance: IPatchRuleUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
