unit AWS.SSM.Transform.DocumentFilterMarshaller;

interface

uses
  AWS.SSM.Model.DocumentFilter, 
  AWS.Transform.RequestMarshaller;

type
  IDocumentFilterMarshaller = IRequestMarshaller<TDocumentFilter, TJsonMarshallerContext>;
  
  TDocumentFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TDocumentFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IDocumentFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TDocumentFilter; Context: TJsonMarshallerContext);
    class function Instance: IDocumentFilterMarshaller; static;
  end;
  
implementation

{ TDocumentFilterMarshaller }

procedure TDocumentFilterMarshaller.Marshall(ARequestObject: TDocumentFilter; Context: TJsonMarshallerContext);
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

class constructor TDocumentFilterMarshaller.Create;
begin
  FInstance := TDocumentFilterMarshaller.Create;
end;

class function TDocumentFilterMarshaller.Instance: IDocumentFilterMarshaller;
begin
  Result := FInstance;
end;

end.
