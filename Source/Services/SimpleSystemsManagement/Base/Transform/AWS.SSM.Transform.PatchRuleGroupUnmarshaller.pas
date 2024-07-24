unit AWS.SSM.Transform.PatchRuleGroupUnmarshaller;

interface

uses
  AWS.SSM.Model.PatchRuleGroup, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SSM.Transform.PatchRuleUnmarshaller, 
  AWS.SSM.Model.PatchRule, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPatchRuleGroupUnmarshaller = IUnmarshaller<TPatchRuleGroup, TJsonUnmarshallerContext>;
  
  TPatchRuleGroupUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPatchRuleGroup, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IPatchRuleGroupUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TPatchRuleGroup;
    class function JsonInstance: IPatchRuleGroupUnmarshaller; static;
  end;
  
implementation

{ TPatchRuleGroupUnmarshaller }

function TPatchRuleGroupUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TPatchRuleGroup;
var
  TargetDepth: Integer;
  UnmarshalledObject: TPatchRuleGroup;
begin
  UnmarshalledObject := TPatchRuleGroup.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('PatchRules', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TPatchRule, IPatchRuleUnmarshaller>.JsonNew(TPatchRuleUnmarshaller.JsonInstance);
        UnmarshalledObject.PatchRules := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TPatchRuleGroupUnmarshaller.Create;
begin
  FJsonInstance := TPatchRuleGroupUnmarshaller.Create;
end;

class function TPatchRuleGroupUnmarshaller.JsonInstance: IPatchRuleGroupUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
