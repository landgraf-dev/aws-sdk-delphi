unit AWS.Rekognition.Transform.CoversBodyPartUnmarshaller;

interface

uses
  AWS.Rekognition.Model.CoversBodyPart, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ICoversBodyPartUnmarshaller = IUnmarshaller<TCoversBodyPart, TJsonUnmarshallerContext>;
  
  TCoversBodyPartUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCoversBodyPart, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ICoversBodyPartUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TCoversBodyPart;
    class function JsonInstance: ICoversBodyPartUnmarshaller; static;
  end;
  
implementation

{ TCoversBodyPartUnmarshaller }

function TCoversBodyPartUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TCoversBodyPart;
var
  TargetDepth: Integer;
  UnmarshalledObject: TCoversBodyPart;
begin
  UnmarshalledObject := TCoversBodyPart.Create;
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

class constructor TCoversBodyPartUnmarshaller.Create;
begin
  FJsonInstance := TCoversBodyPartUnmarshaller.Create;
end;

class function TCoversBodyPartUnmarshaller.JsonInstance: ICoversBodyPartUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
