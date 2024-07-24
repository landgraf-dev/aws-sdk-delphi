unit AWS.SSM.Transform.DocumentRequiresMarshaller;

interface

uses
  AWS.SSM.Model.DocumentRequires, 
  AWS.Transform.RequestMarshaller;

type
  IDocumentRequiresMarshaller = IRequestMarshaller<TDocumentRequires, TJsonMarshallerContext>;
  
  TDocumentRequiresMarshaller = class(TInterfacedObject, IRequestMarshaller<TDocumentRequires, TJsonMarshallerContext>)
  strict private
    class var FInstance: IDocumentRequiresMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TDocumentRequires; Context: TJsonMarshallerContext);
    class function Instance: IDocumentRequiresMarshaller; static;
  end;
  
implementation

{ TDocumentRequiresMarshaller }

procedure TDocumentRequiresMarshaller.Marshall(ARequestObject: TDocumentRequires; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetName then
  begin
    Context.Writer.WriteName('Name');
    Context.Writer.WriteString(ARequestObject.Name);
  end;
  if ARequestObject.IsSetVersion then
  begin
    Context.Writer.WriteName('Version');
    Context.Writer.WriteString(ARequestObject.Version);
  end;
end;

class constructor TDocumentRequiresMarshaller.Create;
begin
  FInstance := TDocumentRequiresMarshaller.Create;
end;

class function TDocumentRequiresMarshaller.Instance: IDocumentRequiresMarshaller;
begin
  Result := FInstance;
end;

end.
