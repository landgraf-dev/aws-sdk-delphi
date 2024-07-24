unit AWS.SSM.Transform.MaintenanceWindowRunCommandParametersMarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowRunCommandParameters, 
  AWS.Transform.RequestMarshaller, 
  AWS.SSM.Transform.CloudWatchOutputConfigMarshaller, 
  AWS.SSM.Transform.NotificationConfigMarshaller;

type
  IMaintenanceWindowRunCommandParametersMarshaller = IRequestMarshaller<TMaintenanceWindowRunCommandParameters, TJsonMarshallerContext>;
  
  TMaintenanceWindowRunCommandParametersMarshaller = class(TInterfacedObject, IRequestMarshaller<TMaintenanceWindowRunCommandParameters, TJsonMarshallerContext>)
  strict private
    class var FInstance: IMaintenanceWindowRunCommandParametersMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TMaintenanceWindowRunCommandParameters; Context: TJsonMarshallerContext);
    class function Instance: IMaintenanceWindowRunCommandParametersMarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowRunCommandParametersMarshaller }

procedure TMaintenanceWindowRunCommandParametersMarshaller.Marshall(ARequestObject: TMaintenanceWindowRunCommandParameters; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetCloudWatchOutputConfig then
  begin
    Context.Writer.WriteName('CloudWatchOutputConfig');
    Context.Writer.WriteBeginObject;
    TCloudWatchOutputConfigMarshaller.Instance.Marshall(ARequestObject.CloudWatchOutputConfig, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetComment then
  begin
    Context.Writer.WriteName('Comment');
    Context.Writer.WriteString(ARequestObject.Comment);
  end;
  if ARequestObject.IsSetDocumentHash then
  begin
    Context.Writer.WriteName('DocumentHash');
    Context.Writer.WriteString(ARequestObject.DocumentHash);
  end;
  if ARequestObject.IsSetDocumentHashType then
  begin
    Context.Writer.WriteName('DocumentHashType');
    Context.Writer.WriteString(ARequestObject.DocumentHashType.Value);
  end;
  if ARequestObject.IsSetDocumentVersion then
  begin
    Context.Writer.WriteName('DocumentVersion');
    Context.Writer.WriteString(ARequestObject.DocumentVersion);
  end;
  if ARequestObject.IsSetNotificationConfig then
  begin
    Context.Writer.WriteName('NotificationConfig');
    Context.Writer.WriteBeginObject;
    TNotificationConfigMarshaller.Instance.Marshall(ARequestObject.NotificationConfig, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetOutputS3BucketName then
  begin
    Context.Writer.WriteName('OutputS3BucketName');
    Context.Writer.WriteString(ARequestObject.OutputS3BucketName);
  end;
  if ARequestObject.IsSetOutputS3KeyPrefix then
  begin
    Context.Writer.WriteName('OutputS3KeyPrefix');
    Context.Writer.WriteString(ARequestObject.OutputS3KeyPrefix);
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
  if ARequestObject.IsSetServiceRoleArn then
  begin
    Context.Writer.WriteName('ServiceRoleArn');
    Context.Writer.WriteString(ARequestObject.ServiceRoleArn);
  end;
  if ARequestObject.IsSetTimeoutSeconds then
  begin
    Context.Writer.WriteName('TimeoutSeconds');
    Context.Writer.WriteInteger(ARequestObject.TimeoutSeconds);
  end;
end;

class constructor TMaintenanceWindowRunCommandParametersMarshaller.Create;
begin
  FInstance := TMaintenanceWindowRunCommandParametersMarshaller.Create;
end;

class function TMaintenanceWindowRunCommandParametersMarshaller.Instance: IMaintenanceWindowRunCommandParametersMarshaller;
begin
  Result := FInstance;
end;

end.
