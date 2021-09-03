unit AWS.Rekognition.Transform.ComparedSourceImageFaceUnmarshaller;

interface

uses
  AWS.Rekognition.Model.ComparedSourceImageFace, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.BoundingBoxUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IComparedSourceImageFaceUnmarshaller = IUnmarshaller<TComparedSourceImageFace, TJsonUnmarshallerContext>;
  
  TComparedSourceImageFaceUnmarshaller = class(TInterfacedObject, IUnmarshaller<TComparedSourceImageFace, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IComparedSourceImageFaceUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TComparedSourceImageFace;
    class function JsonInstance: IComparedSourceImageFaceUnmarshaller; static;
  end;
  
implementation

{ TComparedSourceImageFaceUnmarshaller }

function TComparedSourceImageFaceUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TComparedSourceImageFace;
var
  TargetDepth: Integer;
  UnmarshalledObject: TComparedSourceImageFace;
begin
  UnmarshalledObject := TComparedSourceImageFace.Create;
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
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TComparedSourceImageFaceUnmarshaller.Create;
begin
  FJsonInstance := TComparedSourceImageFaceUnmarshaller.Create;
end;

class function TComparedSourceImageFaceUnmarshaller.JsonInstance: IComparedSourceImageFaceUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
