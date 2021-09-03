unit AWS.Rekognition.Transform.BeardUnmarshaller;

interface

uses
  AWS.Rekognition.Model.Beard, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IBeardUnmarshaller = IUnmarshaller<TBeard, TJsonUnmarshallerContext>;
  
  TBeardUnmarshaller = class(TInterfacedObject, IUnmarshaller<TBeard, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IBeardUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TBeard;
    class function JsonInstance: IBeardUnmarshaller; static;
  end;
  
implementation

{ TBeardUnmarshaller }

function TBeardUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TBeard;
var
  TargetDepth: Integer;
  UnmarshalledObject: TBeard;
begin
  UnmarshalledObject := TBeard.Create;
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

class constructor TBeardUnmarshaller.Create;
begin
  FJsonInstance := TBeardUnmarshaller.Create;
end;

class function TBeardUnmarshaller.JsonInstance: IBeardUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
