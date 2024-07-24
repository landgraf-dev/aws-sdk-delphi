unit AWS.SSM.Transform.ResultAttributeMarshaller;

interface

uses
  AWS.SSM.Model.ResultAttribute, 
  AWS.Transform.RequestMarshaller;

type
  IResultAttributeMarshaller = IRequestMarshaller<TResultAttribute, TJsonMarshallerContext>;
  
  TResultAttributeMarshaller = class(TInterfacedObject, IRequestMarshaller<TResultAttribute, TJsonMarshallerContext>)
  strict private
    class var FInstance: IResultAttributeMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TResultAttribute; Context: TJsonMarshallerContext);
    class function Instance: IResultAttributeMarshaller; static;
  end;
  
implementation

{ TResultAttributeMarshaller }

procedure TResultAttributeMarshaller.Marshall(ARequestObject: TResultAttribute; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetTypeName then
  begin
    Context.Writer.WriteName('TypeName');
    Context.Writer.WriteString(ARequestObject.TypeName);
  end;
end;

class constructor TResultAttributeMarshaller.Create;
begin
  FInstance := TResultAttributeMarshaller.Create;
end;

class function TResultAttributeMarshaller.Instance: IResultAttributeMarshaller;
begin
  Result := FInstance;
end;

end.
