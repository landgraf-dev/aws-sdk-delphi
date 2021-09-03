unit AWS.Rekognition.Transform.TestingDataUnmarshaller;

interface

uses
  AWS.Rekognition.Model.TestingData, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.AssetUnmarshaller, 
  AWS.Rekognition.Model.Asset, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITestingDataUnmarshaller = IUnmarshaller<TTestingData, TJsonUnmarshallerContext>;
  
  TTestingDataUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTestingData, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITestingDataUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTestingData;
    class function JsonInstance: ITestingDataUnmarshaller; static;
  end;
  
implementation

{ TTestingDataUnmarshaller }

function TTestingDataUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTestingData;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTestingData;
begin
  UnmarshalledObject := TTestingData.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Assets', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TAsset, IAssetUnmarshaller>.JsonNew(TAssetUnmarshaller.JsonInstance);
        UnmarshalledObject.Assets := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('AutoCreate', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.AutoCreate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TTestingDataUnmarshaller.Create;
begin
  FJsonInstance := TTestingDataUnmarshaller.Create;
end;

class function TTestingDataUnmarshaller.JsonInstance: ITestingDataUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
