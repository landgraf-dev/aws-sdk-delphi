unit AWS.Rekognition.Transform.AgeRangeUnmarshaller;

interface

uses
  AWS.Rekognition.Model.AgeRange, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IAgeRangeUnmarshaller = IUnmarshaller<TAgeRange, TJsonUnmarshallerContext>;
  
  TAgeRangeUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAgeRange, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IAgeRangeUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAgeRange;
    class function JsonInstance: IAgeRangeUnmarshaller; static;
  end;
  
implementation

{ TAgeRangeUnmarshaller }

function TAgeRangeUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAgeRange;
var
  TargetDepth: Integer;
  UnmarshalledObject: TAgeRange;
begin
  UnmarshalledObject := TAgeRange.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('High', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.High := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Low', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.Low := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TAgeRangeUnmarshaller.Create;
begin
  FJsonInstance := TAgeRangeUnmarshaller.Create;
end;

class function TAgeRangeUnmarshaller.JsonInstance: IAgeRangeUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
