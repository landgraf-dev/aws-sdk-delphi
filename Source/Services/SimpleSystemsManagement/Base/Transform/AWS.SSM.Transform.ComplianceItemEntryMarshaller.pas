unit AWS.SSM.Transform.ComplianceItemEntryMarshaller;

interface

uses
  AWS.SSM.Model.ComplianceItemEntry, 
  AWS.Transform.RequestMarshaller;

type
  IComplianceItemEntryMarshaller = IRequestMarshaller<TComplianceItemEntry, TJsonMarshallerContext>;
  
  TComplianceItemEntryMarshaller = class(TInterfacedObject, IRequestMarshaller<TComplianceItemEntry, TJsonMarshallerContext>)
  strict private
    class var FInstance: IComplianceItemEntryMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TComplianceItemEntry; Context: TJsonMarshallerContext);
    class function Instance: IComplianceItemEntryMarshaller; static;
  end;
  
implementation

{ TComplianceItemEntryMarshaller }

procedure TComplianceItemEntryMarshaller.Marshall(ARequestObject: TComplianceItemEntry; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetDetails then
  begin
    Context.Writer.WriteName('Details');
    Context.Writer.WriteBeginObject;
    for var ARequestObjectDetailsKvp in ARequestObject.Details do
    begin
      Context.Writer.WriteName(ARequestObjectDetailsKvp.Key);
      var ARequestObjectDetailsValue := ARequestObjectDetailsKvp.Value;
      Context.Writer.WriteString(ARequestObjectDetailsValue);
    end;
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetId then
  begin
    Context.Writer.WriteName('Id');
    Context.Writer.WriteString(ARequestObject.Id);
  end;
  if ARequestObject.IsSetSeverity then
  begin
    Context.Writer.WriteName('Severity');
    Context.Writer.WriteString(ARequestObject.Severity.Value);
  end;
  if ARequestObject.IsSetStatus then
  begin
    Context.Writer.WriteName('Status');
    Context.Writer.WriteString(ARequestObject.Status.Value);
  end;
  if ARequestObject.IsSetTitle then
  begin
    Context.Writer.WriteName('Title');
    Context.Writer.WriteString(ARequestObject.Title);
  end;
end;

class constructor TComplianceItemEntryMarshaller.Create;
begin
  FInstance := TComplianceItemEntryMarshaller.Create;
end;

class function TComplianceItemEntryMarshaller.Instance: IComplianceItemEntryMarshaller;
begin
  Result := FInstance;
end;

end.
