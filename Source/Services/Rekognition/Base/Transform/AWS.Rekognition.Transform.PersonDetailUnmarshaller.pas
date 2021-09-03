unit AWS.Rekognition.Transform.PersonDetailUnmarshaller;

interface

uses
  AWS.Rekognition.Model.PersonDetail, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.BoundingBoxUnmarshaller, 
  AWS.Rekognition.Transform.FaceDetailUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPersonDetailUnmarshaller = IUnmarshaller<TPersonDetail, TJsonUnmarshallerContext>;
  
  TPersonDetailUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPersonDetail, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IPersonDetailUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TPersonDetail;
    class function JsonInstance: IPersonDetailUnmarshaller; static;
  end;
  
implementation

{ TPersonDetailUnmarshaller }

function TPersonDetailUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TPersonDetail;
var
  TargetDepth: Integer;
  UnmarshalledObject: TPersonDetail;
begin
  UnmarshalledObject := TPersonDetail.Create;
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
      if AContext.TestExpression('Face', TargetDepth) then
      begin
        var Unmarshaller := TFaceDetailUnmarshaller.JsonInstance;
        UnmarshalledObject.Face := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Index', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.Index := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TPersonDetailUnmarshaller.Create;
begin
  FJsonInstance := TPersonDetailUnmarshaller.Create;
end;

class function TPersonDetailUnmarshaller.JsonInstance: IPersonDetailUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
