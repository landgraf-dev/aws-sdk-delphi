unit AWS.Rekognition.Transform.StreamProcessorInputMarshaller;

interface

uses
  AWS.Rekognition.Model.StreamProcessorInput, 
  AWS.Transform.RequestMarshaller, 
  AWS.Rekognition.Transform.KinesisVideoStreamMarshaller;

type
  IStreamProcessorInputMarshaller = IRequestMarshaller<TStreamProcessorInput, TJsonMarshallerContext>;
  
  TStreamProcessorInputMarshaller = class(TInterfacedObject, IRequestMarshaller<TStreamProcessorInput, TJsonMarshallerContext>)
  strict private
    class var FInstance: IStreamProcessorInputMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TStreamProcessorInput; Context: TJsonMarshallerContext);
    class function Instance: IStreamProcessorInputMarshaller; static;
  end;
  
implementation

{ TStreamProcessorInputMarshaller }

procedure TStreamProcessorInputMarshaller.Marshall(ARequestObject: TStreamProcessorInput; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKinesisVideoStream then
  begin
    Context.Writer.WriteName('KinesisVideoStream');
    Context.Writer.WriteBeginObject;
    TKinesisVideoStreamMarshaller.Instance.Marshall(ARequestObject.KinesisVideoStream, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TStreamProcessorInputMarshaller.Create;
begin
  FInstance := TStreamProcessorInputMarshaller.Create;
end;

class function TStreamProcessorInputMarshaller.Instance: IStreamProcessorInputMarshaller;
begin
  Result := FInstance;
end;

end.
