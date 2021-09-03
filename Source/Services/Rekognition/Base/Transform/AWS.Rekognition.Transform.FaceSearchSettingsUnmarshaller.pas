unit AWS.Rekognition.Transform.FaceSearchSettingsUnmarshaller;

interface

uses
  AWS.Rekognition.Model.FaceSearchSettings, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IFaceSearchSettingsUnmarshaller = IUnmarshaller<TFaceSearchSettings, TJsonUnmarshallerContext>;
  
  TFaceSearchSettingsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TFaceSearchSettings, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IFaceSearchSettingsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TFaceSearchSettings;
    class function JsonInstance: IFaceSearchSettingsUnmarshaller; static;
  end;
  
implementation

{ TFaceSearchSettingsUnmarshaller }

function TFaceSearchSettingsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TFaceSearchSettings;
var
  TargetDepth: Integer;
  UnmarshalledObject: TFaceSearchSettings;
begin
  UnmarshalledObject := TFaceSearchSettings.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CollectionId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.CollectionId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FaceMatchThreshold', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.FaceMatchThreshold := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TFaceSearchSettingsUnmarshaller.Create;
begin
  FJsonInstance := TFaceSearchSettingsUnmarshaller.Create;
end;

class function TFaceSearchSettingsUnmarshaller.JsonInstance: IFaceSearchSettingsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
