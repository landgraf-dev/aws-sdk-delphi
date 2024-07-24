unit AWS.SSM.Transform.MaintenanceWindowAutomationParametersMarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowAutomationParameters, 
  AWS.Transform.RequestMarshaller;

type
  IMaintenanceWindowAutomationParametersMarshaller = IRequestMarshaller<TMaintenanceWindowAutomationParameters, TJsonMarshallerContext>;
  
  TMaintenanceWindowAutomationParametersMarshaller = class(TInterfacedObject, IRequestMarshaller<TMaintenanceWindowAutomationParameters, TJsonMarshallerContext>)
  strict private
    class var FInstance: IMaintenanceWindowAutomationParametersMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TMaintenanceWindowAutomationParameters; Context: TJsonMarshallerContext);
    class function Instance: IMaintenanceWindowAutomationParametersMarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowAutomationParametersMarshaller }

procedure TMaintenanceWindowAutomationParametersMarshaller.Marshall(ARequestObject: TMaintenanceWindowAutomationParameters; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetDocumentVersion then
  begin
    Context.Writer.WriteName('DocumentVersion');
    Context.Writer.WriteString(ARequestObject.DocumentVersion);
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
end;

class constructor TMaintenanceWindowAutomationParametersMarshaller.Create;
begin
  FInstance := TMaintenanceWindowAutomationParametersMarshaller.Create;
end;

class function TMaintenanceWindowAutomationParametersMarshaller.Instance: IMaintenanceWindowAutomationParametersMarshaller;
begin
  Result := FInstance;
end;

end.
