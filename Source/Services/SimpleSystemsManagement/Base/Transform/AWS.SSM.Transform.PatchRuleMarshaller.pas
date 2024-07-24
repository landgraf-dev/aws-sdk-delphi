unit AWS.SSM.Transform.PatchRuleMarshaller;

interface

uses
  AWS.SSM.Model.PatchRule, 
  AWS.Transform.RequestMarshaller, 
  AWS.SSM.Transform.PatchFilterGroupMarshaller;

type
  IPatchRuleMarshaller = IRequestMarshaller<TPatchRule, TJsonMarshallerContext>;
  
  TPatchRuleMarshaller = class(TInterfacedObject, IRequestMarshaller<TPatchRule, TJsonMarshallerContext>)
  strict private
    class var FInstance: IPatchRuleMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TPatchRule; Context: TJsonMarshallerContext);
    class function Instance: IPatchRuleMarshaller; static;
  end;
  
implementation

{ TPatchRuleMarshaller }

procedure TPatchRuleMarshaller.Marshall(ARequestObject: TPatchRule; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetApproveAfterDays then
  begin
    Context.Writer.WriteName('ApproveAfterDays');
    Context.Writer.WriteInteger(ARequestObject.ApproveAfterDays);
  end;
  if ARequestObject.IsSetApproveUntilDate then
  begin
    Context.Writer.WriteName('ApproveUntilDate');
    Context.Writer.WriteString(ARequestObject.ApproveUntilDate);
  end;
  if ARequestObject.IsSetComplianceLevel then
  begin
    Context.Writer.WriteName('ComplianceLevel');
    Context.Writer.WriteString(ARequestObject.ComplianceLevel.Value);
  end;
  if ARequestObject.IsSetEnableNonSecurity then
  begin
    Context.Writer.WriteName('EnableNonSecurity');
    Context.Writer.WriteBoolean(ARequestObject.EnableNonSecurity);
  end;
  if ARequestObject.IsSetPatchFilterGroup then
  begin
    Context.Writer.WriteName('PatchFilterGroup');
    Context.Writer.WriteBeginObject;
    TPatchFilterGroupMarshaller.Instance.Marshall(ARequestObject.PatchFilterGroup, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TPatchRuleMarshaller.Create;
begin
  FInstance := TPatchRuleMarshaller.Create;
end;

class function TPatchRuleMarshaller.Instance: IPatchRuleMarshaller;
begin
  Result := FInstance;
end;

end.
