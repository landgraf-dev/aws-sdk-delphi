unit AWS.SSM.Transform.OpsFilterMarshaller;

interface

uses
  AWS.SSM.Model.OpsFilter, 
  AWS.Transform.RequestMarshaller;

type
  IOpsFilterMarshaller = IRequestMarshaller<TOpsFilter, TJsonMarshallerContext>;
  
  TOpsFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TOpsFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IOpsFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TOpsFilter; Context: TJsonMarshallerContext);
    class function Instance: IOpsFilterMarshaller; static;
  end;
  
implementation

{ TOpsFilterMarshaller }

procedure TOpsFilterMarshaller.Marshall(ARequestObject: TOpsFilter; Context: TJsonMarshallerContext);
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

class constructor TOpsFilterMarshaller.Create;
begin
  FInstance := TOpsFilterMarshaller.Create;
end;

class function TOpsFilterMarshaller.Instance: IOpsFilterMarshaller;
begin
  Result := FInstance;
end;

end.
