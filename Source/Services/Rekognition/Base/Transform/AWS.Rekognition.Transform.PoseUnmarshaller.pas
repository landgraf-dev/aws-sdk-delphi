unit AWS.Rekognition.Transform.PoseUnmarshaller;

interface

uses
  AWS.Rekognition.Model.Pose, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPoseUnmarshaller = IUnmarshaller<TPose, TJsonUnmarshallerContext>;
  
  TPoseUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPose, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IPoseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TPose;
    class function JsonInstance: IPoseUnmarshaller; static;
  end;
  
implementation

{ TPoseUnmarshaller }

function TPoseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TPose;
var
  TargetDepth: Integer;
  UnmarshalledObject: TPose;
begin
  UnmarshalledObject := TPose.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Pitch', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Pitch := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Roll', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Roll := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Yaw', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Yaw := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TPoseUnmarshaller.Create;
begin
  FJsonInstance := TPoseUnmarshaller.Create;
end;

class function TPoseUnmarshaller.JsonInstance: IPoseUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
