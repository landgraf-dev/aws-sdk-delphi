unit AWS.SSM.Transform.ComplianceStringFilterMarshaller;

interface

uses
  AWS.SSM.Model.ComplianceStringFilter, 
  AWS.Transform.RequestMarshaller;

type
  IComplianceStringFilterMarshaller = IRequestMarshaller<TComplianceStringFilter, TJsonMarshallerContext>;
  
  TComplianceStringFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TComplianceStringFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IComplianceStringFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TComplianceStringFilter; Context: TJsonMarshallerContext);
    class function Instance: IComplianceStringFilterMarshaller; static;
  end;
  
implementation

{ TComplianceStringFilterMarshaller }

procedure TComplianceStringFilterMarshaller.Marshall(ARequestObject: TComplianceStringFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKey then
  begin
    Context.Writer.WriteName('Key');
    Context.Writer.WriteString(ARequestObject.Key);
  end;
  if ARequestObject.IsSetType then
  begin
    Context.Writer.WriteName('Type');
    Context.Writer.WriteString(ARequestObject.&Type.Value);
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

class constructor TComplianceStringFilterMarshaller.Create;
begin
  FInstance := TComplianceStringFilterMarshaller.Create;
end;

class function TComplianceStringFilterMarshaller.Instance: IComplianceStringFilterMarshaller;
begin
  Result := FInstance;
end;

end.
