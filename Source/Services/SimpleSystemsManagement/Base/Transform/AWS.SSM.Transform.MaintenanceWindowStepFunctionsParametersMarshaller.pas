unit AWS.SSM.Transform.MaintenanceWindowStepFunctionsParametersMarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowStepFunctionsParameters, 
  AWS.Transform.RequestMarshaller;

type
  IMaintenanceWindowStepFunctionsParametersMarshaller = IRequestMarshaller<TMaintenanceWindowStepFunctionsParameters, TJsonMarshallerContext>;
  
  TMaintenanceWindowStepFunctionsParametersMarshaller = class(TInterfacedObject, IRequestMarshaller<TMaintenanceWindowStepFunctionsParameters, TJsonMarshallerContext>)
  strict private
    class var FInstance: IMaintenanceWindowStepFunctionsParametersMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TMaintenanceWindowStepFunctionsParameters; Context: TJsonMarshallerContext);
    class function Instance: IMaintenanceWindowStepFunctionsParametersMarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowStepFunctionsParametersMarshaller }

procedure TMaintenanceWindowStepFunctionsParametersMarshaller.Marshall(ARequestObject: TMaintenanceWindowStepFunctionsParameters; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetInput then
  begin
    Context.Writer.WriteName('Input');
    Context.Writer.WriteString(ARequestObject.Input);
  end;
  if ARequestObject.IsSetName then
  begin
    Context.Writer.WriteName('Name');
    Context.Writer.WriteString(ARequestObject.Name);
  end;
end;

class constructor TMaintenanceWindowStepFunctionsParametersMarshaller.Create;
begin
  FInstance := TMaintenanceWindowStepFunctionsParametersMarshaller.Create;
end;

class function TMaintenanceWindowStepFunctionsParametersMarshaller.Instance: IMaintenanceWindowStepFunctionsParametersMarshaller;
begin
  Result := FInstance;
end;

end.
