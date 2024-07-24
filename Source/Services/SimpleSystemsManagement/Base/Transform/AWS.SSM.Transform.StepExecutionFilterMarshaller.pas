unit AWS.SSM.Transform.StepExecutionFilterMarshaller;

interface

uses
  AWS.SSM.Model.StepExecutionFilter, 
  AWS.Transform.RequestMarshaller;

type
  IStepExecutionFilterMarshaller = IRequestMarshaller<TStepExecutionFilter, TJsonMarshallerContext>;
  
  TStepExecutionFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TStepExecutionFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IStepExecutionFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TStepExecutionFilter; Context: TJsonMarshallerContext);
    class function Instance: IStepExecutionFilterMarshaller; static;
  end;
  
implementation

{ TStepExecutionFilterMarshaller }

procedure TStepExecutionFilterMarshaller.Marshall(ARequestObject: TStepExecutionFilter; Context: TJsonMarshallerContext);
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

class constructor TStepExecutionFilterMarshaller.Create;
begin
  FInstance := TStepExecutionFilterMarshaller.Create;
end;

class function TStepExecutionFilterMarshaller.Instance: IStepExecutionFilterMarshaller;
begin
  Result := FInstance;
end;

end.
