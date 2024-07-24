unit AWS.SSM.Transform.ComplianceExecutionSummaryMarshaller;

interface

uses
  System.DateUtils, 
  AWS.SSM.Model.ComplianceExecutionSummary, 
  AWS.Transform.RequestMarshaller;

type
  IComplianceExecutionSummaryMarshaller = IRequestMarshaller<TComplianceExecutionSummary, TJsonMarshallerContext>;
  
  TComplianceExecutionSummaryMarshaller = class(TInterfacedObject, IRequestMarshaller<TComplianceExecutionSummary, TJsonMarshallerContext>)
  strict private
    class var FInstance: IComplianceExecutionSummaryMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TComplianceExecutionSummary; Context: TJsonMarshallerContext);
    class function Instance: IComplianceExecutionSummaryMarshaller; static;
  end;
  
implementation

{ TComplianceExecutionSummaryMarshaller }

procedure TComplianceExecutionSummaryMarshaller.Marshall(ARequestObject: TComplianceExecutionSummary; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetExecutionId then
  begin
    Context.Writer.WriteName('ExecutionId');
    Context.Writer.WriteString(ARequestObject.ExecutionId);
  end;
  if ARequestObject.IsSetExecutionTime then
  begin
    Context.Writer.WriteName('ExecutionTime');
    Context.Writer.WriteInteger(DateTimeToUnix(ARequestObject.ExecutionTime, False));
  end;
  if ARequestObject.IsSetExecutionType then
  begin
    Context.Writer.WriteName('ExecutionType');
    Context.Writer.WriteString(ARequestObject.ExecutionType);
  end;
end;

class constructor TComplianceExecutionSummaryMarshaller.Create;
begin
  FInstance := TComplianceExecutionSummaryMarshaller.Create;
end;

class function TComplianceExecutionSummaryMarshaller.Instance: IComplianceExecutionSummaryMarshaller;
begin
  Result := FInstance;
end;

end.
