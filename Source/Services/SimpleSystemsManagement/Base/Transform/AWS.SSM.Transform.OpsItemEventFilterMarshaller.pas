unit AWS.SSM.Transform.OpsItemEventFilterMarshaller;

interface

uses
  AWS.SSM.Model.OpsItemEventFilter, 
  AWS.Transform.RequestMarshaller;

type
  IOpsItemEventFilterMarshaller = IRequestMarshaller<TOpsItemEventFilter, TJsonMarshallerContext>;
  
  TOpsItemEventFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TOpsItemEventFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IOpsItemEventFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TOpsItemEventFilter; Context: TJsonMarshallerContext);
    class function Instance: IOpsItemEventFilterMarshaller; static;
  end;
  
implementation

{ TOpsItemEventFilterMarshaller }

procedure TOpsItemEventFilterMarshaller.Marshall(ARequestObject: TOpsItemEventFilter; Context: TJsonMarshallerContext);
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

class constructor TOpsItemEventFilterMarshaller.Create;
begin
  FInstance := TOpsItemEventFilterMarshaller.Create;
end;

class function TOpsItemEventFilterMarshaller.Instance: IOpsItemEventFilterMarshaller;
begin
  Result := FInstance;
end;

end.
