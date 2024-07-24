unit AWS.SSM.Transform.MaintenanceWindowFilterMarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowFilter, 
  AWS.Transform.RequestMarshaller;

type
  IMaintenanceWindowFilterMarshaller = IRequestMarshaller<TMaintenanceWindowFilter, TJsonMarshallerContext>;
  
  TMaintenanceWindowFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TMaintenanceWindowFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IMaintenanceWindowFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TMaintenanceWindowFilter; Context: TJsonMarshallerContext);
    class function Instance: IMaintenanceWindowFilterMarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowFilterMarshaller }

procedure TMaintenanceWindowFilterMarshaller.Marshall(ARequestObject: TMaintenanceWindowFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKey then
  begin
    Context.Writer.WriteName('Key');
    Context.Writer.WriteString(ARequestObject.Key);
  end;
  if ARequestObject.IsSetValues then
  begin
    Context.Writer.WriteName('Values');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectValuesListValue in ARequestObject.Values do
      Context.Writer.WriteString(ARequestObjectValuesListValue);
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TMaintenanceWindowFilterMarshaller.Create;
begin
  FInstance := TMaintenanceWindowFilterMarshaller.Create;
end;

class function TMaintenanceWindowFilterMarshaller.Instance: IMaintenanceWindowFilterMarshaller;
begin
  Result := FInstance;
end;

end.
