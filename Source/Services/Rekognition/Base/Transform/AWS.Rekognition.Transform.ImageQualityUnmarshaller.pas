unit AWS.Rekognition.Transform.ImageQualityUnmarshaller;

interface

uses
  AWS.Rekognition.Model.ImageQuality, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IImageQualityUnmarshaller = IUnmarshaller<TImageQuality, TJsonUnmarshallerContext>;
  
  TImageQualityUnmarshaller = class(TInterfacedObject, IUnmarshaller<TImageQuality, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IImageQualityUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TImageQuality;
    class function JsonInstance: IImageQualityUnmarshaller; static;
  end;
  
implementation

{ TImageQualityUnmarshaller }

function TImageQualityUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TImageQuality;
var
  TargetDepth: Integer;
  UnmarshalledObject: TImageQuality;
begin
  UnmarshalledObject := TImageQuality.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Brightness', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Brightness := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Sharpness', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Sharpness := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TImageQualityUnmarshaller.Create;
begin
  FJsonInstance := TImageQualityUnmarshaller.Create;
end;

class function TImageQualityUnmarshaller.JsonInstance: IImageQualityUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
