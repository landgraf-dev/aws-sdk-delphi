unit AWS.Rekognition.Transform.VideoMarshaller;

interface

uses
  AWS.Rekognition.Model.Video, 
  AWS.Transform.RequestMarshaller, 
  AWS.Rekognition.Transform.S3ObjectMarshaller;

type
  IVideoMarshaller = IRequestMarshaller<TVideo, TJsonMarshallerContext>;
  
  TVideoMarshaller = class(TInterfacedObject, IRequestMarshaller<TVideo, TJsonMarshallerContext>)
  strict private
    class var FInstance: IVideoMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TVideo; Context: TJsonMarshallerContext);
    class function Instance: IVideoMarshaller; static;
  end;
  
implementation

{ TVideoMarshaller }

procedure TVideoMarshaller.Marshall(ARequestObject: TVideo; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetS3Object then
  begin
    Context.Writer.WriteName('S3Object');
    Context.Writer.WriteBeginObject;
    TS3ObjectMarshaller.Instance.Marshall(ARequestObject.S3Object, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TVideoMarshaller.Create;
begin
  FInstance := TVideoMarshaller.Create;
end;

class function TVideoMarshaller.Instance: IVideoMarshaller;
begin
  Result := FInstance;
end;

end.
