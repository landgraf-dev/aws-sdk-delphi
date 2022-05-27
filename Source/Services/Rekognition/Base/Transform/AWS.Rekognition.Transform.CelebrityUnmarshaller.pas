unit AWS.Rekognition.Transform.CelebrityUnmarshaller;

interface

uses
  AWS.Rekognition.Model.Celebrity, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.ComparedFaceUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.KnownGenderUnmarshaller;

type
  ICelebrityUnmarshaller = IUnmarshaller<TCelebrity, TJsonUnmarshallerContext>;
  
  TCelebrityUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCelebrity, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ICelebrityUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TCelebrity;
    class function JsonInstance: ICelebrityUnmarshaller; static;
  end;
  
implementation

{ TCelebrityUnmarshaller }

function TCelebrityUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TCelebrity;
var
  TargetDepth: Integer;
  UnmarshalledObject: TCelebrity;
begin
  UnmarshalledObject := TCelebrity.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Face', TargetDepth) then
      begin
        var Unmarshaller := TComparedFaceUnmarshaller.JsonInstance;
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
      if AContext.TestExpression('MatchConfidence', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.MatchConfidence := Unmarshaller.Unmarshall(AContext);
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

class constructor TCelebrityUnmarshaller.Create;
begin
  FJsonInstance := TCelebrityUnmarshaller.Create;
end;

class function TCelebrityUnmarshaller.JsonInstance: ICelebrityUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
