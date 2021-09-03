unit AWS.Rekognition.Transform.ValidationDataUnmarshaller;

interface

uses
  AWS.Rekognition.Model.ValidationData, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.AssetUnmarshaller, 
  AWS.Rekognition.Model.Asset, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IValidationDataUnmarshaller = IUnmarshaller<TValidationData, TJsonUnmarshallerContext>;
  
  TValidationDataUnmarshaller = class(TInterfacedObject, IUnmarshaller<TValidationData, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IValidationDataUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TValidationData;
    class function JsonInstance: IValidationDataUnmarshaller; static;
  end;
  
implementation

{ TValidationDataUnmarshaller }

function TValidationDataUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TValidationData;
var
  TargetDepth: Integer;
  UnmarshalledObject: TValidationData;
begin
  UnmarshalledObject := TValidationData.Create;
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

class constructor TValidationDataUnmarshaller.Create;
begin
  FJsonInstance := TValidationDataUnmarshaller.Create;
end;

class function TValidationDataUnmarshaller.JsonInstance: IValidationDataUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
