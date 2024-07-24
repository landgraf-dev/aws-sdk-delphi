unit AWS.SSM.Transform.PatchFilterMarshaller;

interface

uses
  AWS.SSM.Model.PatchFilter, 
  AWS.Transform.RequestMarshaller;

type
  IPatchFilterMarshaller = IRequestMarshaller<TPatchFilter, TJsonMarshallerContext>;
  
  TPatchFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TPatchFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IPatchFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TPatchFilter; Context: TJsonMarshallerContext);
    class function Instance: IPatchFilterMarshaller; static;
  end;
  
implementation

{ TPatchFilterMarshaller }

procedure TPatchFilterMarshaller.Marshall(ARequestObject: TPatchFilter; Context: TJsonMarshallerContext);
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

class constructor TPatchFilterMarshaller.Create;
begin
  FInstance := TPatchFilterMarshaller.Create;
end;

class function TPatchFilterMarshaller.Instance: IPatchFilterMarshaller;
begin
  Result := FInstance;
end;

end.
