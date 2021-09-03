unit AWS.Rekognition.Transform.ModerationLabelUnmarshaller;

interface

uses
  AWS.Rekognition.Model.ModerationLabel, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IModerationLabelUnmarshaller = IUnmarshaller<TModerationLabel, TJsonUnmarshallerContext>;
  
  TModerationLabelUnmarshaller = class(TInterfacedObject, IUnmarshaller<TModerationLabel, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IModerationLabelUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TModerationLabel;
    class function JsonInstance: IModerationLabelUnmarshaller; static;
  end;
  
implementation

{ TModerationLabelUnmarshaller }

function TModerationLabelUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TModerationLabel;
var
  TargetDepth: Integer;
  UnmarshalledObject: TModerationLabel;
begin
  UnmarshalledObject := TModerationLabel.Create;
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
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ParentName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ParentName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TModerationLabelUnmarshaller.Create;
begin
  FJsonInstance := TModerationLabelUnmarshaller.Create;
end;

class function TModerationLabelUnmarshaller.JsonInstance: IModerationLabelUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
