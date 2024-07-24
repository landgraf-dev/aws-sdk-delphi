unit AWS.SSM.Transform.MaintenanceWindowTaskInvocationParametersMarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowTaskInvocationParameters, 
  AWS.Transform.RequestMarshaller, 
  AWS.SSM.Transform.MaintenanceWindowAutomationParametersMarshaller, 
  AWS.SSM.Transform.MaintenanceWindowLambdaParametersMarshaller, 
  AWS.SSM.Transform.MaintenanceWindowRunCommandParametersMarshaller, 
  AWS.SSM.Transform.MaintenanceWindowStepFunctionsParametersMarshaller;

type
  IMaintenanceWindowTaskInvocationParametersMarshaller = IRequestMarshaller<TMaintenanceWindowTaskInvocationParameters, TJsonMarshallerContext>;
  
  TMaintenanceWindowTaskInvocationParametersMarshaller = class(TInterfacedObject, IRequestMarshaller<TMaintenanceWindowTaskInvocationParameters, TJsonMarshallerContext>)
  strict private
    class var FInstance: IMaintenanceWindowTaskInvocationParametersMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TMaintenanceWindowTaskInvocationParameters; Context: TJsonMarshallerContext);
    class function Instance: IMaintenanceWindowTaskInvocationParametersMarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowTaskInvocationParametersMarshaller }

procedure TMaintenanceWindowTaskInvocationParametersMarshaller.Marshall(ARequestObject: TMaintenanceWindowTaskInvocationParameters; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetAutomation then
  begin
    Context.Writer.WriteName('Automation');
    Context.Writer.WriteBeginObject;
    TMaintenanceWindowAutomationParametersMarshaller.Instance.Marshall(ARequestObject.Automation, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetLambda then
  begin
    Context.Writer.WriteName('Lambda');
    Context.Writer.WriteBeginObject;
    TMaintenanceWindowLambdaParametersMarshaller.Instance.Marshall(ARequestObject.Lambda, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetRunCommand then
  begin
    Context.Writer.WriteName('RunCommand');
    Context.Writer.WriteBeginObject;
    TMaintenanceWindowRunCommandParametersMarshaller.Instance.Marshall(ARequestObject.RunCommand, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetStepFunctions then
  begin
    Context.Writer.WriteName('StepFunctions');
    Context.Writer.WriteBeginObject;
    TMaintenanceWindowStepFunctionsParametersMarshaller.Instance.Marshall(ARequestObject.StepFunctions, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TMaintenanceWindowTaskInvocationParametersMarshaller.Create;
begin
  FInstance := TMaintenanceWindowTaskInvocationParametersMarshaller.Create;
end;

class function TMaintenanceWindowTaskInvocationParametersMarshaller.Instance: IMaintenanceWindowTaskInvocationParametersMarshaller;
begin
  Result := FInstance;
end;

end.
