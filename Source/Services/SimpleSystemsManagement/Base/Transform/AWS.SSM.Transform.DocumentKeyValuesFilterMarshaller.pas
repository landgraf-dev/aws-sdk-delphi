unit AWS.SSM.Transform.DocumentKeyValuesFilterMarshaller;

interface

uses
  AWS.SSM.Model.DocumentKeyValuesFilter, 
  AWS.Transform.RequestMarshaller;

type
  IDocumentKeyValuesFilterMarshaller = IRequestMarshaller<TDocumentKeyValuesFilter, TJsonMarshallerContext>;
  
  TDocumentKeyValuesFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TDocumentKeyValuesFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IDocumentKeyValuesFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TDocumentKeyValuesFilter; Context: TJsonMarshallerContext);
    class function Instance: IDocumentKeyValuesFilterMarshaller; static;
  end;
  
implementation

{ TDocumentKeyValuesFilterMarshaller }

procedure TDocumentKeyValuesFilterMarshaller.Marshall(ARequestObject: TDocumentKeyValuesFilter; Context: TJsonMarshallerContext);
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

class constructor TDocumentKeyValuesFilterMarshaller.Create;
begin
  FInstance := TDocumentKeyValuesFilterMarshaller.Create;
end;

class function TDocumentKeyValuesFilterMarshaller.Instance: IDocumentKeyValuesFilterMarshaller;
begin
  Result := FInstance;
end;

end.
