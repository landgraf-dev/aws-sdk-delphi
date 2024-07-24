unit AWS.SSM.Transform.OpsMetadataFilterMarshaller;

interface

uses
  AWS.SSM.Model.OpsMetadataFilter, 
  AWS.Transform.RequestMarshaller;

type
  IOpsMetadataFilterMarshaller = IRequestMarshaller<TOpsMetadataFilter, TJsonMarshallerContext>;
  
  TOpsMetadataFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TOpsMetadataFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IOpsMetadataFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TOpsMetadataFilter; Context: TJsonMarshallerContext);
    class function Instance: IOpsMetadataFilterMarshaller; static;
  end;
  
implementation

{ TOpsMetadataFilterMarshaller }

procedure TOpsMetadataFilterMarshaller.Marshall(ARequestObject: TOpsMetadataFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKey then
  begin
    Context.Writer.WriteName('Key');
    Context.Writer.WriteString(ARequestObject.Key);
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

class constructor TOpsMetadataFilterMarshaller.Create;
begin
  FInstance := TOpsMetadataFilterMarshaller.Create;
end;

class function TOpsMetadataFilterMarshaller.Instance: IOpsMetadataFilterMarshaller;
begin
  Result := FInstance;
end;

end.
