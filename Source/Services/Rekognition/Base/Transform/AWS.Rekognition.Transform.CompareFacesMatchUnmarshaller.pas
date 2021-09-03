unit AWS.Rekognition.Transform.CompareFacesMatchUnmarshaller;

interface

uses
  AWS.Rekognition.Model.CompareFacesMatch, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.ComparedFaceUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ICompareFacesMatchUnmarshaller = IUnmarshaller<TCompareFacesMatch, TJsonUnmarshallerContext>;
  
  TCompareFacesMatchUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCompareFacesMatch, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ICompareFacesMatchUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TCompareFacesMatch;
    class function JsonInstance: ICompareFacesMatchUnmarshaller; static;
  end;
  
implementation

{ TCompareFacesMatchUnmarshaller }

function TCompareFacesMatchUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TCompareFacesMatch;
var
  TargetDepth: Integer;
  UnmarshalledObject: TCompareFacesMatch;
begin
  UnmarshalledObject := TCompareFacesMatch.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Face', TargetDepth) then
      begin
        var Unmarshaller := TComparedFaceUnmarshaller.JsonInstance;
        UnmarshalledObject.Face := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Similarity', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Similarity := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TCompareFacesMatchUnmarshaller.Create;
begin
  FJsonInstance := TCompareFacesMatchUnmarshaller.Create;
end;

class function TCompareFacesMatchUnmarshaller.JsonInstance: ICompareFacesMatchUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
