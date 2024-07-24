unit AWS.SSM.Transform.MaintenanceWindowTaskParameterValueExpressionMarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowTaskParameterValueExpression, 
  AWS.Transform.RequestMarshaller;

type
  IMaintenanceWindowTaskParameterValueExpressionMarshaller = IRequestMarshaller<TMaintenanceWindowTaskParameterValueExpression, TJsonMarshallerContext>;
  
  TMaintenanceWindowTaskParameterValueExpressionMarshaller = class(TInterfacedObject, IRequestMarshaller<TMaintenanceWindowTaskParameterValueExpression, TJsonMarshallerContext>)
  strict private
    class var FInstance: IMaintenanceWindowTaskParameterValueExpressionMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TMaintenanceWindowTaskParameterValueExpression; Context: TJsonMarshallerContext);
    class function Instance: IMaintenanceWindowTaskParameterValueExpressionMarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowTaskParameterValueExpressionMarshaller }

procedure TMaintenanceWindowTaskParameterValueExpressionMarshaller.Marshall(ARequestObject: TMaintenanceWindowTaskParameterValueExpression; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetValues then
  begin
    Context.Writer.WriteName('Values');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectValuesListValue in ARequestObject.Values do
      Context.Writer.WriteString(ARequestObjectValuesListValue);
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TMaintenanceWindowTaskParameterValueExpressionMarshaller.Create;
begin
  FInstance := TMaintenanceWindowTaskParameterValueExpressionMarshaller.Create;
end;

class function TMaintenanceWindowTaskParameterValueExpressionMarshaller.Instance: IMaintenanceWindowTaskParameterValueExpressionMarshaller;
begin
  Result := FInstance;
end;

end.
