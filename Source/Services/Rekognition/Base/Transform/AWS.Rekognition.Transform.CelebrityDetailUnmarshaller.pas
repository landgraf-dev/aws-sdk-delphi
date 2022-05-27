unit AWS.Rekognition.Transform.CelebrityDetailUnmarshaller;

interface

uses
  AWS.Rekognition.Model.CelebrityDetail, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.BoundingBoxUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.FaceDetailUnmarshaller, 
  AWS.Rekognition.Transform.KnownGenderUnmarshaller;

type
  ICelebrityDetailUnmarshaller = IUnmarshaller<TCelebrityDetail, TJsonUnmarshallerContext>;
  
  TCelebrityDetailUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCelebrityDetail, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ICelebrityDetailUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TCelebrityDetail;
    class function JsonInstance: ICelebrityDetailUnmarshaller; static;
  end;
  
implementation

{ TCelebrityDetailUnmarshaller }

function TCelebrityDetailUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TCelebrityDetail;
var
  TargetDepth: Integer;
  UnmarshalledObject: TCelebrityDetail;
begin
  UnmarshalledObject := TCelebrityDetail.Create;
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
      if AContext.TestExpression('Face', TargetDepth) then
      begin
        var Unmarshaller := TFaceDetailUnmarshaller.JsonInstance;
        UnmarshalledObject.Face := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Id', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Id := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('KnownGender', TargetDepth) then
      begin
        var Unmarshaller := TKnownGenderUnmarshaller.JsonInstance;
        UnmarshalledObject.KnownGender := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Urls', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Urls := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TCelebrityDetailUnmarshaller.Create;
begin
  FJsonInstance := TCelebrityDetailUnmarshaller.Create;
end;

class function TCelebrityDetailUnmarshaller.JsonInstance: ICelebrityDetailUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
