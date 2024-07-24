unit AWS.SSM.Transform.MaintenanceWindowLambdaParametersMarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowLambdaParameters, 
  AWS.Transform.RequestMarshaller, 
  AWS.Internal.StringUtils;

type
  IMaintenanceWindowLambdaParametersMarshaller = IRequestMarshaller<TMaintenanceWindowLambdaParameters, TJsonMarshallerContext>;
  
  TMaintenanceWindowLambdaParametersMarshaller = class(TInterfacedObject, IRequestMarshaller<TMaintenanceWindowLambdaParameters, TJsonMarshallerContext>)
  strict private
    class var FInstance: IMaintenanceWindowLambdaParametersMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TMaintenanceWindowLambdaParameters; Context: TJsonMarshallerContext);
    class function Instance: IMaintenanceWindowLambdaParametersMarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowLambdaParametersMarshaller }

procedure TMaintenanceWindowLambdaParametersMarshaller.Marshall(ARequestObject: TMaintenanceWindowLambdaParameters; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetClientContext then
  begin
    Context.Writer.WriteName('ClientContext');
    Context.Writer.WriteString(ARequestObject.ClientContext);
  end;
  if ARequestObject.IsSetPayload then
  begin
    Context.Writer.WriteName('Payload');
    Context.Writer.WriteString(TStringUtils.FromTBytesStream(ARequestObject.Payload));
  end;
  if ARequestObject.IsSetQualifier then
  begin
    Context.Writer.WriteName('Qualifier');
    Context.Writer.WriteString(ARequestObject.Qualifier);
  end;
end;

class constructor TMaintenanceWindowLambdaParametersMarshaller.Create;
begin
  FInstance := TMaintenanceWindowLambdaParametersMarshaller.Create;
end;

class function TMaintenanceWindowLambdaParametersMarshaller.Instance: IMaintenanceWindowLambdaParametersMarshaller;
begin
  Result := FInstance;
end;

end.
