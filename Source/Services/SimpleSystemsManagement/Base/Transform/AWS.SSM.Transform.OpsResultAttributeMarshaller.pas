unit AWS.SSM.Transform.OpsResultAttributeMarshaller;

interface

uses
  AWS.SSM.Model.OpsResultAttribute, 
  AWS.Transform.RequestMarshaller;

type
  IOpsResultAttributeMarshaller = IRequestMarshaller<TOpsResultAttribute, TJsonMarshallerContext>;
  
  TOpsResultAttributeMarshaller = class(TInterfacedObject, IRequestMarshaller<TOpsResultAttribute, TJsonMarshallerContext>)
  strict private
    class var FInstance: IOpsResultAttributeMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TOpsResultAttribute; Context: TJsonMarshallerContext);
    class function Instance: IOpsResultAttributeMarshaller; static;
  end;
  
implementation

{ TOpsResultAttributeMarshaller }

procedure TOpsResultAttributeMarshaller.Marshall(ARequestObject: TOpsResultAttribute; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetTypeName then
  begin
    Context.Writer.WriteName('TypeName');
    Context.Writer.WriteString(ARequestObject.TypeName);
  end;
end;

class constructor TOpsResultAttributeMarshaller.Create;
begin
  FInstance := TOpsResultAttributeMarshaller.Create;
end;

class function TOpsResultAttributeMarshaller.Instance: IOpsResultAttributeMarshaller;
begin
  Result := FInstance;
end;

end.
