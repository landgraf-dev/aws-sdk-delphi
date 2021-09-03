unit AWS.Rekognition.Transform.LandmarkUnmarshaller;

interface

uses
  AWS.Rekognition.Model.Landmark, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ILandmarkUnmarshaller = IUnmarshaller<TLandmark, TJsonUnmarshallerContext>;
  
  TLandmarkUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLandmark, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ILandmarkUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TLandmark;
    class function JsonInstance: ILandmarkUnmarshaller; static;
  end;
  
implementation

{ TLandmarkUnmarshaller }

function TLandmarkUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TLandmark;
var
  TargetDepth: Integer;
  UnmarshalledObject: TLandmark;
begin
  UnmarshalledObject := TLandmark.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Type', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.&Type := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('X', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.X := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Y', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Y := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TLandmarkUnmarshaller.Create;
begin
  FJsonInstance := TLandmarkUnmarshaller.Create;
end;

class function TLandmarkUnmarshaller.JsonInstance: ILandmarkUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
