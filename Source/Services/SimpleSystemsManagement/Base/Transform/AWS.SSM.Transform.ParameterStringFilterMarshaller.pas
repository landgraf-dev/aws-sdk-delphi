unit AWS.SSM.Transform.ParameterStringFilterMarshaller;

interface

uses
  AWS.SSM.Model.ParameterStringFilter, 
  AWS.Transform.RequestMarshaller;

type
  IParameterStringFilterMarshaller = IRequestMarshaller<TParameterStringFilter, TJsonMarshallerContext>;
  
  TParameterStringFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TParameterStringFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IParameterStringFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TParameterStringFilter; Context: TJsonMarshallerContext);
    class function Instance: IParameterStringFilterMarshaller; static;
  end;
  
implementation

{ TParameterStringFilterMarshaller }

procedure TParameterStringFilterMarshaller.Marshall(ARequestObject: TParameterStringFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKey then
  begin
    Context.Writer.WriteName('Key');
    Context.Writer.WriteString(ARequestObject.Key);
  end;
  if ARequestObject.IsSetOption then
  begin
    Context.Writer.WriteName('Option');
    Context.Writer.WriteString(ARequestObject.Option);
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

class constructor TParameterStringFilterMarshaller.Create;
begin
  FInstance := TParameterStringFilterMarshaller.Create;
end;

class function TParameterStringFilterMarshaller.Instance: IParameterStringFilterMarshaller;
begin
  Result := FInstance;
end;

end.
