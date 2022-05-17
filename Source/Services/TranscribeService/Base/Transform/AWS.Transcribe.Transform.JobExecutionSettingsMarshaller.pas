unit AWS.Transcribe.Transform.JobExecutionSettingsMarshaller;

interface

uses
  AWS.Transcribe.Model.JobExecutionSettings, 
  AWS.Transform.RequestMarshaller;

type
  IJobExecutionSettingsMarshaller = IRequestMarshaller<TJobExecutionSettings, TJsonMarshallerContext>;
  
  TJobExecutionSettingsMarshaller = class(TInterfacedObject, IRequestMarshaller<TJobExecutionSettings, TJsonMarshallerContext>)
  strict private
    class var FInstance: IJobExecutionSettingsMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TJobExecutionSettings; Context: TJsonMarshallerContext);
    class function Instance: IJobExecutionSettingsMarshaller; static;
  end;
  
implementation

{ TJobExecutionSettingsMarshaller }

procedure TJobExecutionSettingsMarshaller.Marshall(ARequestObject: TJobExecutionSettings; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetAllowDeferredExecution then
  begin
    Context.Writer.WriteName('AllowDeferredExecution');
    Context.Writer.WriteBoolean(ARequestObject.AllowDeferredExecution);
  end;
  if ARequestObject.IsSetDataAccessRoleArn then
  begin
    Context.Writer.WriteName('DataAccessRoleArn');
    Context.Writer.WriteString(ARequestObject.DataAccessRoleArn);
  end;
end;

class constructor TJobExecutionSettingsMarshaller.Create;
begin
  FInstance := TJobExecutionSettingsMarshaller.Create;
end;

class function TJobExecutionSettingsMarshaller.Instance: IJobExecutionSettingsMarshaller;
begin
  Result := FInstance;
end;

end.
