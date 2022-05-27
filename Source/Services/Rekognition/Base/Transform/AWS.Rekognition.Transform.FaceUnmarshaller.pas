unit AWS.Rekognition.Transform.FaceUnmarshaller;

interface

uses
  AWS.Rekognition.Model.Face, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.BoundingBoxUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IFaceUnmarshaller = IUnmarshaller<TFace, TJsonUnmarshallerContext>;
  
  TFaceUnmarshaller = class(TInterfacedObject, IUnmarshaller<TFace, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IFaceUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TFace;
    class function JsonInstance: IFaceUnmarshaller; static;
  end;
  
implementation

{ TFaceUnmarshaller }

function TFaceUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TFace;
var
  TargetDepth: Integer;
  UnmarshalledObject: TFace;
begin
  UnmarshalledObject := TFace.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('BoundingBox', TargetDepth) then
      begin
        var Unmarshaller := TBoundingBoxUnmarshaller.JsonInstance;
        UnmarshalledObject.BoundingBox := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Confidence', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Confidence := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ExternalImageId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ExternalImageId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FaceId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.FaceId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ImageId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ImageId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('IndexFacesModelVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.IndexFacesModelVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TFaceUnmarshaller.Create;
begin
  FJsonInstance := TFaceUnmarshaller.Create;
end;

class function TFaceUnmarshaller.JsonInstance: IFaceUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
