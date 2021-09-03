unit AWS.Rekognition.Transform.EyeOpenUnmarshaller;

interface

uses
  AWS.Rekognition.Model.EyeOpen, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IEyeOpenUnmarshaller = IUnmarshaller<TEyeOpen, TJsonUnmarshallerContext>;
  
  TEyeOpenUnmarshaller = class(TInterfacedObject, IUnmarshaller<TEyeOpen, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IEyeOpenUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TEyeOpen;
    class function JsonInstance: IEyeOpenUnmarshaller; static;
  end;
  
implementation

{ TEyeOpenUnmarshaller }

function TEyeOpenUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TEyeOpen;
var
  TargetDepth: Integer;
  UnmarshalledObject: TEyeOpen;
begin
  UnmarshalledObject := TEyeOpen.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Confidence', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Confidence := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Value', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.Value := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TEyeOpenUnmarshaller.Create;
begin
  FJsonInstance := TEyeOpenUnmarshaller.Create;
end;

class function TEyeOpenUnmarshaller.JsonInstance: IEyeOpenUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
