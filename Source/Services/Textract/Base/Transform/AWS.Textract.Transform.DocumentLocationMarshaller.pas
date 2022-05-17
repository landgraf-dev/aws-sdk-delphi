unit AWS.Textract.Transform.DocumentLocationMarshaller;

interface

uses
  AWS.Textract.Model.DocumentLocation, 
  AWS.Transform.RequestMarshaller, 
  AWS.Textract.Transform.S3ObjectMarshaller;

type
  IDocumentLocationMarshaller = IRequestMarshaller<TDocumentLocation, TJsonMarshallerContext>;
  
  TDocumentLocationMarshaller = class(TInterfacedObject, IRequestMarshaller<TDocumentLocation, TJsonMarshallerContext>)
  strict private
    class var FInstance: IDocumentLocationMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TDocumentLocation; Context: TJsonMarshallerContext);
    class function Instance: IDocumentLocationMarshaller; static;
  end;
  
implementation

{ TDocumentLocationMarshaller }

procedure TDocumentLocationMarshaller.Marshall(ARequestObject: TDocumentLocation; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetS3Object then
  begin
    Context.Writer.WriteName('S3Object');
    Context.Writer.WriteBeginObject;
    TS3ObjectMarshaller.Instance.Marshall(ARequestObject.S3Object, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TDocumentLocationMarshaller.Create;
begin
  FInstance := TDocumentLocationMarshaller.Create;
end;

class function TDocumentLocationMarshaller.Instance: IDocumentLocationMarshaller;
begin
  Result := FInstance;
end;

end.
