unit AWS.SSM.Transform.ParametersFilterMarshaller;

interface

uses
  AWS.SSM.Model.ParametersFilter, 
  AWS.Transform.RequestMarshaller;

type
  IParametersFilterMarshaller = IRequestMarshaller<TParametersFilter, TJsonMarshallerContext>;
  
  TParametersFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TParametersFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IParametersFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TParametersFilter; Context: TJsonMarshallerContext);
    class function Instance: IParametersFilterMarshaller; static;
  end;
  
implementation

{ TParametersFilterMarshaller }

procedure TParametersFilterMarshaller.Marshall(ARequestObject: TParametersFilter; Context: TJsonMarshallerContext);
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

class constructor TParametersFilterMarshaller.Create;
begin
  FInstance := TParametersFilterMarshaller.Create;
end;

class function TParametersFilterMarshaller.Instance: IParametersFilterMarshaller;
begin
  Result := FInstance;
end;

end.
