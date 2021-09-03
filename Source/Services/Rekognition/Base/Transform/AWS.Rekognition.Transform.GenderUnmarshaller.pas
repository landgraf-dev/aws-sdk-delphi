unit AWS.Rekognition.Transform.GenderUnmarshaller;

interface

uses
  AWS.Rekognition.Model.Gender, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IGenderUnmarshaller = IUnmarshaller<TGender, TJsonUnmarshallerContext>;
  
  TGenderUnmarshaller = class(TInterfacedObject, IUnmarshaller<TGender, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IGenderUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TGender;
    class function JsonInstance: IGenderUnmarshaller; static;
  end;
  
implementation

{ TGenderUnmarshaller }

function TGenderUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TGender;
var
  TargetDepth: Integer;
  UnmarshalledObject: TGender;
begin
  UnmarshalledObject := TGender.Create;
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
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
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

class constructor TGenderUnmarshaller.Create;
begin
  FJsonInstance := TGenderUnmarshaller.Create;
end;

class function TGenderUnmarshaller.JsonInstance: IGenderUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
