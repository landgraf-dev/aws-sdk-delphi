unit AWS.Rekognition.Transform.GroundTruthManifestUnmarshaller;

interface

uses
  AWS.Rekognition.Model.GroundTruthManifest, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.S3ObjectUnmarshaller;

type
  IGroundTruthManifestUnmarshaller = IUnmarshaller<TGroundTruthManifest, TJsonUnmarshallerContext>;
  
  TGroundTruthManifestUnmarshaller = class(TInterfacedObject, IUnmarshaller<TGroundTruthManifest, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IGroundTruthManifestUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TGroundTruthManifest;
    class function JsonInstance: IGroundTruthManifestUnmarshaller; static;
  end;
  
implementation

{ TGroundTruthManifestUnmarshaller }

function TGroundTruthManifestUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TGroundTruthManifest;
var
  TargetDepth: Integer;
  UnmarshalledObject: TGroundTruthManifest;
begin
  UnmarshalledObject := TGroundTruthManifest.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('S3Object', TargetDepth) then
      begin
        var Unmarshaller := TS3ObjectUnmarshaller.JsonInstance;
        UnmarshalledObject.S3Object := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TGroundTruthManifestUnmarshaller.Create;
begin
  FJsonInstance := TGroundTruthManifestUnmarshaller.Create;
end;

class function TGroundTruthManifestUnmarshaller.JsonInstance: IGroundTruthManifestUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
