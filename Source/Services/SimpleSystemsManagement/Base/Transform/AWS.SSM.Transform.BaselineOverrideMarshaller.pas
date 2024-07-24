unit AWS.SSM.Transform.BaselineOverrideMarshaller;

interface

uses
  AWS.SSM.Model.BaselineOverride, 
  AWS.Transform.RequestMarshaller, 
  AWS.SSM.Transform.PatchRuleGroupMarshaller, 
  AWS.SSM.Transform.PatchFilterGroupMarshaller, 
  AWS.SSM.Transform.PatchSourceMarshaller;

type
  IBaselineOverrideMarshaller = IRequestMarshaller<TBaselineOverride, TJsonMarshallerContext>;
  
  TBaselineOverrideMarshaller = class(TInterfacedObject, IRequestMarshaller<TBaselineOverride, TJsonMarshallerContext>)
  strict private
    class var FInstance: IBaselineOverrideMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TBaselineOverride; Context: TJsonMarshallerContext);
    class function Instance: IBaselineOverrideMarshaller; static;
  end;
  
implementation

{ TBaselineOverrideMarshaller }

procedure TBaselineOverrideMarshaller.Marshall(ARequestObject: TBaselineOverride; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetApprovalRules then
  begin
    Context.Writer.WriteName('ApprovalRules');
    Context.Writer.WriteBeginObject;
    TPatchRuleGroupMarshaller.Instance.Marshall(ARequestObject.ApprovalRules, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetApprovedPatches then
  begin
    Context.Writer.WriteName('ApprovedPatches');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectApprovedPatchesListValue in ARequestObject.ApprovedPatches do
      Context.Writer.WriteString(ARequestObjectApprovedPatchesListValue);
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetApprovedPatchesComplianceLevel then
  begin
    Context.Writer.WriteName('ApprovedPatchesComplianceLevel');
    Context.Writer.WriteString(ARequestObject.ApprovedPatchesComplianceLevel.Value);
  end;
  if ARequestObject.IsSetApprovedPatchesEnableNonSecurity then
  begin
    Context.Writer.WriteName('ApprovedPatchesEnableNonSecurity');
    Context.Writer.WriteBoolean(ARequestObject.ApprovedPatchesEnableNonSecurity);
  end;
  if ARequestObject.IsSetGlobalFilters then
  begin
    Context.Writer.WriteName('GlobalFilters');
    Context.Writer.WriteBeginObject;
    TPatchFilterGroupMarshaller.Instance.Marshall(ARequestObject.GlobalFilters, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetOperatingSystem then
  begin
    Context.Writer.WriteName('OperatingSystem');
    Context.Writer.WriteString(ARequestObject.OperatingSystem.Value);
  end;
  if ARequestObject.IsSetRejectedPatches then
  begin
    Context.Writer.WriteName('RejectedPatches');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectRejectedPatchesListValue in ARequestObject.RejectedPatches do
      Context.Writer.WriteString(ARequestObjectRejectedPatchesListValue);
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetRejectedPatchesAction then
  begin
    Context.Writer.WriteName('RejectedPatchesAction');
    Context.Writer.WriteString(ARequestObject.RejectedPatchesAction.Value);
  end;
  if ARequestObject.IsSetSources then
  begin
    Context.Writer.WriteName('Sources');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectSourcesListValue in ARequestObject.Sources do
    begin
      Context.Writer.WriteBeginObject;
      TPatchSourceMarshaller.Instance.Marshall(ARequestObjectSourcesListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TBaselineOverrideMarshaller.Create;
begin
  FInstance := TBaselineOverrideMarshaller.Create;
end;

class function TBaselineOverrideMarshaller.Instance: IBaselineOverrideMarshaller;
begin
  Result := FInstance;
end;

end.
