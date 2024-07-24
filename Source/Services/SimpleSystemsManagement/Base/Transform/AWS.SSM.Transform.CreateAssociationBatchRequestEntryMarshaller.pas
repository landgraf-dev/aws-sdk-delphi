unit AWS.SSM.Transform.CreateAssociationBatchRequestEntryMarshaller;

interface

uses
  AWS.SSM.Model.CreateAssociationBatchRequestEntry, 
  AWS.Transform.RequestMarshaller, 
  AWS.SSM.Transform.InstanceAssociationOutputLocationMarshaller, 
  AWS.SSM.Transform.TargetLocationMarshaller, 
  AWS.SSM.Transform.TargetMarshaller;

type
  ICreateAssociationBatchRequestEntryMarshaller = IRequestMarshaller<TCreateAssociationBatchRequestEntry, TJsonMarshallerContext>;
  
  TCreateAssociationBatchRequestEntryMarshaller = class(TInterfacedObject, IRequestMarshaller<TCreateAssociationBatchRequestEntry, TJsonMarshallerContext>)
  strict private
    class var FInstance: ICreateAssociationBatchRequestEntryMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TCreateAssociationBatchRequestEntry; Context: TJsonMarshallerContext);
    class function Instance: ICreateAssociationBatchRequestEntryMarshaller; static;
  end;
  
implementation

{ TCreateAssociationBatchRequestEntryMarshaller }

procedure TCreateAssociationBatchRequestEntryMarshaller.Marshall(ARequestObject: TCreateAssociationBatchRequestEntry; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetApplyOnlyAtCronInterval then
  begin
    Context.Writer.WriteName('ApplyOnlyAtCronInterval');
    Context.Writer.WriteBoolean(ARequestObject.ApplyOnlyAtCronInterval);
  end;
  if ARequestObject.IsSetAssociationName then
  begin
    Context.Writer.WriteName('AssociationName');
    Context.Writer.WriteString(ARequestObject.AssociationName);
  end;
  if ARequestObject.IsSetAutomationTargetParameterName then
  begin
    Context.Writer.WriteName('AutomationTargetParameterName');
    Context.Writer.WriteString(ARequestObject.AutomationTargetParameterName);
  end;
  if ARequestObject.IsSetCalendarNames then
  begin
    Context.Writer.WriteName('CalendarNames');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectCalendarNamesListValue in ARequestObject.CalendarNames do
      Context.Writer.WriteString(ARequestObjectCalendarNamesListValue);
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetComplianceSeverity then
  begin
    Context.Writer.WriteName('ComplianceSeverity');
    Context.Writer.WriteString(ARequestObject.ComplianceSeverity.Value);
  end;
  if ARequestObject.IsSetDocumentVersion then
  begin
    Context.Writer.WriteName('DocumentVersion');
    Context.Writer.WriteString(ARequestObject.DocumentVersion);
  end;
  if ARequestObject.IsSetInstanceId then
  begin
    Context.Writer.WriteName('InstanceId');
    Context.Writer.WriteString(ARequestObject.InstanceId);
  end;
  if ARequestObject.IsSetMaxConcurrency then
  begin
    Context.Writer.WriteName('MaxConcurrency');
    Context.Writer.WriteString(ARequestObject.MaxConcurrency);
  end;
  if ARequestObject.IsSetMaxErrors then
  begin
    Context.Writer.WriteName('MaxErrors');
    Context.Writer.WriteString(ARequestObject.MaxErrors);
  end;
  if ARequestObject.IsSetName then
  begin
    Context.Writer.WriteName('Name');
    Context.Writer.WriteString(ARequestObject.Name);
  end;
  if ARequestObject.IsSetOutputLocation then
  begin
    Context.Writer.WriteName('OutputLocation');
    Context.Writer.WriteBeginObject;
    TInstanceAssociationOutputLocationMarshaller.Instance.Marshall(ARequestObject.OutputLocation, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetParameters then
  begin
    Context.Writer.WriteName('Parameters');
    Context.Writer.WriteBeginObject;
    for var ARequestObjectParametersKvp in ARequestObject.Parameters do
    begin
      Context.Writer.WriteName(ARequestObjectParametersKvp.Key);
      var ARequestObjectParametersValue := ARequestObjectParametersKvp.Value;
      Context.Writer.WriteBeginArray;
      for var ARequestObjectParametersValueListValue in ARequestObjectParametersValue do
        Context.Writer.WriteString(ARequestObjectParametersValueListValue);
      Context.Writer.WriteEndArray;
    end;
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetScheduleExpression then
  begin
    Context.Writer.WriteName('ScheduleExpression');
    Context.Writer.WriteString(ARequestObject.ScheduleExpression);
  end;
  if ARequestObject.IsSetScheduleOffset then
  begin
    Context.Writer.WriteName('ScheduleOffset');
    Context.Writer.WriteInteger(ARequestObject.ScheduleOffset);
  end;
  if ARequestObject.IsSetSyncCompliance then
  begin
    Context.Writer.WriteName('SyncCompliance');
    Context.Writer.WriteString(ARequestObject.SyncCompliance.Value);
  end;
  if ARequestObject.IsSetTargetLocations then
  begin
    Context.Writer.WriteName('TargetLocations');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectTargetLocationsListValue in ARequestObject.TargetLocations do
    begin
      Context.Writer.WriteBeginObject;
      TTargetLocationMarshaller.Instance.Marshall(ARequestObjectTargetLocationsListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetTargetMaps then
  begin
    Context.Writer.WriteName('TargetMaps');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectTargetMapsListValue in ARequestObject.TargetMaps do
    begin
      Context.Writer.WriteBeginObject;
      for var ARequestObjectTargetMapsListValueKvp in ARequestObjectTargetMapsListValue do
      begin
        Context.Writer.WriteName(ARequestObjectTargetMapsListValueKvp.Key);
        var ARequestObjectTargetMapsListValueValue := ARequestObjectTargetMapsListValueKvp.Value;
        Context.Writer.WriteBeginArray;
        for var ARequestObjectTargetMapsListValueValueListValue in ARequestObjectTargetMapsListValueValue do
          Context.Writer.WriteString(ARequestObjectTargetMapsListValueValueListValue);
        Context.Writer.WriteEndArray;
      end;
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetTargets then
  begin
    Context.Writer.WriteName('Targets');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectTargetsListValue in ARequestObject.Targets do
    begin
      Context.Writer.WriteBeginObject;
      TTargetMarshaller.Instance.Marshall(ARequestObjectTargetsListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TCreateAssociationBatchRequestEntryMarshaller.Create;
begin
  FInstance := TCreateAssociationBatchRequestEntryMarshaller.Create;
end;

class function TCreateAssociationBatchRequestEntryMarshaller.Instance: ICreateAssociationBatchRequestEntryMarshaller;
begin
  Result := FInstance;
end;

end.
