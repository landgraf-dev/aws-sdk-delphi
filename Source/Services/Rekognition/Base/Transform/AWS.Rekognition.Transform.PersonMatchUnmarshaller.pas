unit AWS.Rekognition.Transform.PersonMatchUnmarshaller;

interface

uses
  AWS.Rekognition.Model.PersonMatch, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.FaceMatchUnmarshaller, 
  AWS.Rekognition.Model.FaceMatch, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.PersonDetailUnmarshaller;

type
  IPersonMatchUnmarshaller = IUnmarshaller<TPersonMatch, TJsonUnmarshallerContext>;
  
  TPersonMatchUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPersonMatch, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IPersonMatchUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TPersonMatch;
    class function JsonInstance: IPersonMatchUnmarshaller; static;
  end;
  
implementation

{ TPersonMatchUnmarshaller }

function TPersonMatchUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TPersonMatch;
var
  TargetDepth: Integer;
  UnmarshalledObject: TPersonMatch;
begin
  UnmarshalledObject := TPersonMatch.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('FaceMatches', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TFaceMatch, IFaceMatchUnmarshaller>.JsonNew(TFaceMatchUnmarshaller.JsonInstance);
        UnmarshalledObject.FaceMatches := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Person', TargetDepth) then
      begin
        var Unmarshaller := TPersonDetailUnmarshaller.JsonInstance;
        UnmarshalledObject.Person := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Timestamp', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.Timestamp := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TPersonMatchUnmarshaller.Create;
begin
  FJsonInstance := TPersonMatchUnmarshaller.Create;
end;

class function TPersonMatchUnmarshaller.JsonInstance: IPersonMatchUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
