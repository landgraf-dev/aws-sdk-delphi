unit AWS.Rekognition.Transform.AssetUnmarshaller;

interface

uses
  AWS.Rekognition.Model.Asset, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.GroundTruthManifestUnmarshaller;

type
  IAssetUnmarshaller = IUnmarshaller<TAsset, TJsonUnmarshallerContext>;
  
  TAssetUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAsset, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IAssetUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAsset;
    class function JsonInstance: IAssetUnmarshaller; static;
  end;
  
implementation

{ TAssetUnmarshaller }

function TAssetUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAsset;
var
  TargetDepth: Integer;
  UnmarshalledObject: TAsset;
begin
  UnmarshalledObject := TAsset.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('GroundTruthManifest', TargetDepth) then
      begin
        var Unmarshaller := TGroundTruthManifestUnmarshaller.JsonInstance;
        UnmarshalledObject.GroundTruthManifest := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TAssetUnmarshaller.Create;
begin
  FJsonInstance := TAssetUnmarshaller.Create;
end;

class function TAssetUnmarshaller.JsonInstance: IAssetUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
