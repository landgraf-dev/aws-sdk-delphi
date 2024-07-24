unit AWS.SSM.Transform.PatchSourceMarshaller;

interface

uses
  AWS.SSM.Model.PatchSource, 
  AWS.Transform.RequestMarshaller;

type
  IPatchSourceMarshaller = IRequestMarshaller<TPatchSource, TJsonMarshallerContext>;
  
  TPatchSourceMarshaller = class(TInterfacedObject, IRequestMarshaller<TPatchSource, TJsonMarshallerContext>)
  strict private
    class var FInstance: IPatchSourceMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TPatchSource; Context: TJsonMarshallerContext);
    class function Instance: IPatchSourceMarshaller; static;
  end;
  
implementation

{ TPatchSourceMarshaller }

procedure TPatchSourceMarshaller.Marshall(ARequestObject: TPatchSource; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetConfiguration then
  begin
    Context.Writer.WriteName('Configuration');
    Context.Writer.WriteString(ARequestObject.Configuration);
  end;
  if ARequestObject.IsSetName then
  begin
    Context.Writer.WriteName('Name');
    Context.Writer.WriteString(ARequestObject.Name);
  end;
  if ARequestObject.IsSetProducts then
  begin
    Context.Writer.WriteName('Products');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectProductsListValue in ARequestObject.Products do
      Context.Writer.WriteString(ARequestObjectProductsListValue);
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TPatchSourceMarshaller.Create;
begin
  FInstance := TPatchSourceMarshaller.Create;
end;

class function TPatchSourceMarshaller.Instance: IPatchSourceMarshaller;
begin
  Result := FInstance;
end;

end.
