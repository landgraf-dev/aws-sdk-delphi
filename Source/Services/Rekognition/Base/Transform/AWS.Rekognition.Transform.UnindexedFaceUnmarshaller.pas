unit AWS.Rekognition.Transform.UnindexedFaceUnmarshaller;

interface

uses
  AWS.Rekognition.Model.UnindexedFace, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.FaceDetailUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IUnindexedFaceUnmarshaller = IUnmarshaller<TUnindexedFace, TJsonUnmarshallerContext>;
  
  TUnindexedFaceUnmarshaller = class(TInterfacedObject, IUnmarshaller<TUnindexedFace, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IUnindexedFaceUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TUnindexedFace;
    class function JsonInstance: IUnindexedFaceUnmarshaller; static;
  end;
  
implementation

{ TUnindexedFaceUnmarshaller }

function TUnindexedFaceUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TUnindexedFace;
var
  TargetDepth: Integer;
  UnmarshalledObject: TUnindexedFace;
begin
  UnmarshalledObject := TUnindexedFace.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('FaceDetail', TargetDepth) then
      begin
        var Unmarshaller := TFaceDetailUnmarshaller.JsonInstance;
        UnmarshalledObject.FaceDetail := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Reasons', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Reasons := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TUnindexedFaceUnmarshaller.Create;
begin
  FJsonInstance := TUnindexedFaceUnmarshaller.Create;
end;

class function TUnindexedFaceUnmarshaller.JsonInstance: IUnindexedFaceUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
