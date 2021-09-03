unit AWS.Rekognition.Transform.TrainingDataUnmarshaller;

interface

uses
  AWS.Rekognition.Model.TrainingData, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.AssetUnmarshaller, 
  AWS.Rekognition.Model.Asset, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITrainingDataUnmarshaller = IUnmarshaller<TTrainingData, TJsonUnmarshallerContext>;
  
  TTrainingDataUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTrainingData, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITrainingDataUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTrainingData;
    class function JsonInstance: ITrainingDataUnmarshaller; static;
  end;
  
implementation

{ TTrainingDataUnmarshaller }

function TTrainingDataUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTrainingData;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTrainingData;
begin
  UnmarshalledObject := TTrainingData.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('Assets', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TAsset, IAssetUnmarshaller>.JsonNew(TAssetUnmarshaller.JsonInstance);
        UnmarshalledObject.Assets := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TTrainingDataUnmarshaller.Create;
begin
  FJsonInstance := TTrainingDataUnmarshaller.Create;
end;

class function TTrainingDataUnmarshaller.JsonInstance: ITrainingDataUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
