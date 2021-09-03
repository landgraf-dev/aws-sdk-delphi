unit AWS.Rekognition.Transform.AssetMarshaller;

interface

uses
  AWS.Rekognition.Model.Asset, 
  AWS.Transform.RequestMarshaller, 
  AWS.Rekognition.Transform.GroundTruthManifestMarshaller;

type
  IAssetMarshaller = IRequestMarshaller<TAsset, TJsonMarshallerContext>;
  
  TAssetMarshaller = class(TInterfacedObject, IRequestMarshaller<TAsset, TJsonMarshallerContext>)
  strict private
    class var FInstance: IAssetMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TAsset; Context: TJsonMarshallerContext);
    class function Instance: IAssetMarshaller; static;
  end;
  
implementation

{ TAssetMarshaller }

procedure TAssetMarshaller.Marshall(ARequestObject: TAsset; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetGroundTruthManifest then
  begin
    Context.Writer.WriteName('GroundTruthManifest');
    Context.Writer.WriteBeginObject;
    TGroundTruthManifestMarshaller.Instance.Marshall(ARequestObject.GroundTruthManifest, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TAssetMarshaller.Create;
begin
  FInstance := TAssetMarshaller.Create;
end;

class function TAssetMarshaller.Instance: IAssetMarshaller;
begin
  Result := FInstance;
end;

end.
