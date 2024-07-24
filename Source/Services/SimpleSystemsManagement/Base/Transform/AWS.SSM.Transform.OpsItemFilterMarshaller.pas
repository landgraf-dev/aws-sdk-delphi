unit AWS.SSM.Transform.OpsItemFilterMarshaller;

interface

uses
  AWS.SSM.Model.OpsItemFilter, 
  AWS.Transform.RequestMarshaller;

type
  IOpsItemFilterMarshaller = IRequestMarshaller<TOpsItemFilter, TJsonMarshallerContext>;
  
  TOpsItemFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TOpsItemFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IOpsItemFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TOpsItemFilter; Context: TJsonMarshallerContext);
    class function Instance: IOpsItemFilterMarshaller; static;
  end;
  
implementation

{ TOpsItemFilterMarshaller }

procedure TOpsItemFilterMarshaller.Marshall(ARequestObject: TOpsItemFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKey then
  begin
    Context.Writer.WriteName('Key');
    Context.Writer.WriteString(ARequestObject.Key.Value);
  end;
  if ARequestObject.IsSetOperator then
  begin
    Context.Writer.WriteName('Operator');
    Context.Writer.WriteString(ARequestObject.Operator.Value);
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

class constructor TOpsItemFilterMarshaller.Create;
begin
  FInstance := TOpsItemFilterMarshaller.Create;
end;

class function TOpsItemFilterMarshaller.Instance: IOpsItemFilterMarshaller;
begin
  Result := FInstance;
end;

end.
