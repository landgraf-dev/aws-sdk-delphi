unit AWS.Rekognition.Transform.KinesisVideoStreamMarshaller;

interface

uses
  AWS.Rekognition.Model.KinesisVideoStream, 
  AWS.Transform.RequestMarshaller;

type
  IKinesisVideoStreamMarshaller = IRequestMarshaller<TKinesisVideoStream, TJsonMarshallerContext>;
  
  TKinesisVideoStreamMarshaller = class(TInterfacedObject, IRequestMarshaller<TKinesisVideoStream, TJsonMarshallerContext>)
  strict private
    class var FInstance: IKinesisVideoStreamMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TKinesisVideoStream; Context: TJsonMarshallerContext);
    class function Instance: IKinesisVideoStreamMarshaller; static;
  end;
  
implementation

{ TKinesisVideoStreamMarshaller }

procedure TKinesisVideoStreamMarshaller.Marshall(ARequestObject: TKinesisVideoStream; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetArn then
  begin
    Context.Writer.WriteName('Arn');
    Context.Writer.WriteString(ARequestObject.Arn);
  end;
end;

class constructor TKinesisVideoStreamMarshaller.Create;
begin
  FInstance := TKinesisVideoStreamMarshaller.Create;
end;

class function TKinesisVideoStreamMarshaller.Instance: IKinesisVideoStreamMarshaller;
begin
  Result := FInstance;
end;

end.
