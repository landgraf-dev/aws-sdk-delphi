unit AWS.Textract.Transform.DocumentMarshaller;

interface

uses
  AWS.Textract.Model.Document, 
  AWS.Transform.RequestMarshaller, 
  AWS.Internal.StringUtils, 
  AWS.Textract.Transform.S3ObjectMarshaller;

type
  IDocumentMarshaller = IRequestMarshaller<TDocument, TJsonMarshallerContext>;
  
  TDocumentMarshaller = class(TInterfacedObject, IRequestMarshaller<TDocument, TJsonMarshallerContext>)
  strict private
    class var FInstance: IDocumentMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TDocument; Context: TJsonMarshallerContext);
    class function Instance: IDocumentMarshaller; static;
  end;
  
implementation

{ TDocumentMarshaller }

procedure TDocumentMarshaller.Marshall(ARequestObject: TDocument; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetBytes then
  begin
    Context.Writer.WriteName('Bytes');
    Context.Writer.WriteString(TStringUtils.FromTBytesStream(ARequestObject.Bytes));
  end;
  if ARequestObject.IsSetS3Object then
  begin
    Context.Writer.WriteName('S3Object');
    Context.Writer.WriteBeginObject;
    TS3ObjectMarshaller.Instance.Marshall(ARequestObject.S3Object, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TDocumentMarshaller.Create;
begin
  FInstance := TDocumentMarshaller.Create;
end;

class function TDocumentMarshaller.Instance: IDocumentMarshaller;
begin
  Result := FInstance;
end;

end.
