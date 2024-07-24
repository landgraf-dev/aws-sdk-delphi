unit AWS.SSM.Transform.AutomationExecutionFilterMarshaller;

interface

uses
  AWS.SSM.Model.AutomationExecutionFilter, 
  AWS.Transform.RequestMarshaller;

type
  IAutomationExecutionFilterMarshaller = IRequestMarshaller<TAutomationExecutionFilter, TJsonMarshallerContext>;
  
  TAutomationExecutionFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TAutomationExecutionFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IAutomationExecutionFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TAutomationExecutionFilter; Context: TJsonMarshallerContext);
    class function Instance: IAutomationExecutionFilterMarshaller; static;
  end;
  
implementation

{ TAutomationExecutionFilterMarshaller }

procedure TAutomationExecutionFilterMarshaller.Marshall(ARequestObject: TAutomationExecutionFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKey then
  begin
    Context.Writer.WriteName('Key');
    Context.Writer.WriteString(ARequestObject.Key.Value);
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

class constructor TAutomationExecutionFilterMarshaller.Create;
begin
  FInstance := TAutomationExecutionFilterMarshaller.Create;
end;

class function TAutomationExecutionFilterMarshaller.Instance: IAutomationExecutionFilterMarshaller;
begin
  Result := FInstance;
end;

end.
