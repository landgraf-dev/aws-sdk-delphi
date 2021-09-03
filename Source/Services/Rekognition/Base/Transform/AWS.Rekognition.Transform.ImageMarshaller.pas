unit AWS.Rekognition.Transform.ImageMarshaller;

interface

uses
  AWS.Rekognition.Model.Image, 
  AWS.Transform.RequestMarshaller, 
  AWS.Internal.StringUtils, 
  AWS.Rekognition.Transform.S3ObjectMarshaller;

type
  IImageMarshaller = IRequestMarshaller<TImage, TJsonMarshallerContext>;
  
  TImageMarshaller = class(TInterfacedObject, IRequestMarshaller<TImage, TJsonMarshallerContext>)
  strict private
    class var FInstance: IImageMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TImage; Context: TJsonMarshallerContext);
    class function Instance: IImageMarshaller; static;
  end;
  
implementation

{ TImageMarshaller }

procedure TImageMarshaller.Marshall(ARequestObject: TImage; Context: TJsonMarshallerContext);
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

class constructor TImageMarshaller.Create;
begin
  FInstance := TImageMarshaller.Create;
end;

class function TImageMarshaller.Instance: IImageMarshaller;
begin
  Result := FInstance;
end;

end.
