unit AWS.SSM.Transform.OpsItemDataValueMarshaller;

interface

uses
  AWS.SSM.Model.OpsItemDataValue, 
  AWS.Transform.RequestMarshaller;

type
  IOpsItemDataValueMarshaller = IRequestMarshaller<TOpsItemDataValue, TJsonMarshallerContext>;
  
  TOpsItemDataValueMarshaller = class(TInterfacedObject, IRequestMarshaller<TOpsItemDataValue, TJsonMarshallerContext>)
  strict private
    class var FInstance: IOpsItemDataValueMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TOpsItemDataValue; Context: TJsonMarshallerContext);
    class function Instance: IOpsItemDataValueMarshaller; static;
  end;
  
implementation

{ TOpsItemDataValueMarshaller }

procedure TOpsItemDataValueMarshaller.Marshall(ARequestObject: TOpsItemDataValue; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetType then
  begin
    Context.Writer.WriteName('Type');
    Context.Writer.WriteString(ARequestObject.&Type.Value);
  end;
  if ARequestObject.IsSetValue then
  begin
    Context.Writer.WriteName('Value');
    Context.Writer.WriteString(ARequestObject.Value);
  end;
end;

class constructor TOpsItemDataValueMarshaller.Create;
begin
  FInstance := TOpsItemDataValueMarshaller.Create;
end;

class function TOpsItemDataValueMarshaller.Instance: IOpsItemDataValueMarshaller;
begin
  Result := FInstance;
end;

end.
