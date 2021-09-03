unit AWS.Rekognition.Transform.InstanceUnmarshaller;

interface

uses
  AWS.Rekognition.Model.Instance, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.BoundingBoxUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInstanceUnmarshaller = IUnmarshaller<TInstance, TJsonUnmarshallerContext>;
  
  TInstanceUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInstance, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IInstanceUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TInstance;
    class function JsonInstance: IInstanceUnmarshaller; static;
  end;
  
implementation

{ TInstanceUnmarshaller }

function TInstanceUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TInstance;
var
  TargetDepth: Integer;
  UnmarshalledObject: TInstance;
begin
  UnmarshalledObject := TInstance.Create;
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

class constructor TInstanceUnmarshaller.Create;
begin
  FJsonInstance := TInstanceUnmarshaller.Create;
end;

class function TInstanceUnmarshaller.JsonInstance: IInstanceUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
