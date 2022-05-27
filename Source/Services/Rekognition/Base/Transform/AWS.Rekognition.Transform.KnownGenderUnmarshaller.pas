unit AWS.Rekognition.Transform.KnownGenderUnmarshaller;

interface

uses
  AWS.Rekognition.Model.KnownGender, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IKnownGenderUnmarshaller = IUnmarshaller<TKnownGender, TJsonUnmarshallerContext>;
  
  TKnownGenderUnmarshaller = class(TInterfacedObject, IUnmarshaller<TKnownGender, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IKnownGenderUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TKnownGender;
    class function JsonInstance: IKnownGenderUnmarshaller; static;
  end;
  
implementation

{ TKnownGenderUnmarshaller }

function TKnownGenderUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TKnownGender;
var
  TargetDepth: Integer;
  UnmarshalledObject: TKnownGender;
begin
  UnmarshalledObject := TKnownGender.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('Type', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.&Type := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TKnownGenderUnmarshaller.Create;
begin
  FJsonInstance := TKnownGenderUnmarshaller.Create;
end;

class function TKnownGenderUnmarshaller.JsonInstance: IKnownGenderUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
