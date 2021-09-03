unit AWS.Rekognition.Transform.GroundTruthManifestMarshaller;

interface

uses
  AWS.Rekognition.Model.GroundTruthManifest, 
  AWS.Transform.RequestMarshaller, 
  AWS.Rekognition.Transform.S3ObjectMarshaller;

type
  IGroundTruthManifestMarshaller = IRequestMarshaller<TGroundTruthManifest, TJsonMarshallerContext>;
  
  TGroundTruthManifestMarshaller = class(TInterfacedObject, IRequestMarshaller<TGroundTruthManifest, TJsonMarshallerContext>)
  strict private
    class var FInstance: IGroundTruthManifestMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TGroundTruthManifest; Context: TJsonMarshallerContext);
    class function Instance: IGroundTruthManifestMarshaller; static;
  end;
  
implementation

{ TGroundTruthManifestMarshaller }

procedure TGroundTruthManifestMarshaller.Marshall(ARequestObject: TGroundTruthManifest; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetS3Object then
  begin
    Context.Writer.WriteName('S3Object');
    Context.Writer.WriteBeginObject;
    TS3ObjectMarshaller.Instance.Marshall(ARequestObject.S3Object, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TGroundTruthManifestMarshaller.Create;
begin
  FInstance := TGroundTruthManifestMarshaller.Create;
end;

class function TGroundTruthManifestMarshaller.Instance: IGroundTruthManifestMarshaller;
begin
  Result := FInstance;
end;

end.
