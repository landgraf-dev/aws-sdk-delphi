unit AWS.Rekognition.Transform.StreamProcessorOutputMarshaller;

interface

uses
  AWS.Rekognition.Model.StreamProcessorOutput, 
  AWS.Transform.RequestMarshaller, 
  AWS.Rekognition.Transform.KinesisDataStreamMarshaller, 
  AWS.Rekognition.Transform.S3DestinationMarshaller;

type
  IStreamProcessorOutputMarshaller = IRequestMarshaller<TStreamProcessorOutput, TJsonMarshallerContext>;
  
  TStreamProcessorOutputMarshaller = class(TInterfacedObject, IRequestMarshaller<TStreamProcessorOutput, TJsonMarshallerContext>)
  strict private
    class var FInstance: IStreamProcessorOutputMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TStreamProcessorOutput; Context: TJsonMarshallerContext);
    class function Instance: IStreamProcessorOutputMarshaller; static;
  end;
  
implementation

{ TStreamProcessorOutputMarshaller }

procedure TStreamProcessorOutputMarshaller.Marshall(ARequestObject: TStreamProcessorOutput; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKinesisDataStream then
  begin
    Context.Writer.WriteName('KinesisDataStream');
    Context.Writer.WriteBeginObject;
    TKinesisDataStreamMarshaller.Instance.Marshall(ARequestObject.KinesisDataStream, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetS3Destination then
  begin
    Context.Writer.WriteName('S3Destination');
    Context.Writer.WriteBeginObject;
    TS3DestinationMarshaller.Instance.Marshall(ARequestObject.S3Destination, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TStreamProcessorOutputMarshaller.Create;
begin
  FInstance := TStreamProcessorOutputMarshaller.Create;
end;

class function TStreamProcessorOutputMarshaller.Instance: IStreamProcessorOutputMarshaller;
begin
  Result := FInstance;
end;

end.
