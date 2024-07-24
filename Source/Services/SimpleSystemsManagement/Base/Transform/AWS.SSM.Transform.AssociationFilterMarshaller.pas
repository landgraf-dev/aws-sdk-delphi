unit AWS.SSM.Transform.AssociationFilterMarshaller;

interface

uses
  AWS.SSM.Model.AssociationFilter, 
  AWS.Transform.RequestMarshaller;

type
  IAssociationFilterMarshaller = IRequestMarshaller<TAssociationFilter, TJsonMarshallerContext>;
  
  TAssociationFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TAssociationFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IAssociationFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TAssociationFilter; Context: TJsonMarshallerContext);
    class function Instance: IAssociationFilterMarshaller; static;
  end;
  
implementation

{ TAssociationFilterMarshaller }

procedure TAssociationFilterMarshaller.Marshall(ARequestObject: TAssociationFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKey then
  begin
    Context.Writer.WriteName('key');
    Context.Writer.WriteString(ARequestObject.Key.Value);
  end;
  if ARequestObject.IsSetValue then
  begin
    Context.Writer.WriteName('value');
    Context.Writer.WriteString(ARequestObject.Value);
  end;
end;

class constructor TAssociationFilterMarshaller.Create;
begin
  FInstance := TAssociationFilterMarshaller.Create;
end;

class function TAssociationFilterMarshaller.Instance: IAssociationFilterMarshaller;
begin
  Result := FInstance;
end;

end.
