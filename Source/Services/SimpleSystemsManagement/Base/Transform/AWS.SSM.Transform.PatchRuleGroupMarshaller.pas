unit AWS.SSM.Transform.PatchRuleGroupMarshaller;

interface

uses
  AWS.SSM.Model.PatchRuleGroup, 
  AWS.Transform.RequestMarshaller, 
  AWS.SSM.Transform.PatchRuleMarshaller;

type
  IPatchRuleGroupMarshaller = IRequestMarshaller<TPatchRuleGroup, TJsonMarshallerContext>;
  
  TPatchRuleGroupMarshaller = class(TInterfacedObject, IRequestMarshaller<TPatchRuleGroup, TJsonMarshallerContext>)
  strict private
    class var FInstance: IPatchRuleGroupMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TPatchRuleGroup; Context: TJsonMarshallerContext);
    class function Instance: IPatchRuleGroupMarshaller; static;
  end;
  
implementation

{ TPatchRuleGroupMarshaller }

procedure TPatchRuleGroupMarshaller.Marshall(ARequestObject: TPatchRuleGroup; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetPatchRules then
  begin
    Context.Writer.WriteName('PatchRules');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectPatchRulesListValue in ARequestObject.PatchRules do
    begin
      Context.Writer.WriteBeginObject;
      TPatchRuleMarshaller.Instance.Marshall(ARequestObjectPatchRulesListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TPatchRuleGroupMarshaller.Create;
begin
  FInstance := TPatchRuleGroupMarshaller.Create;
end;

class function TPatchRuleGroupMarshaller.Instance: IPatchRuleGroupMarshaller;
begin
  Result := FInstance;
end;

end.
