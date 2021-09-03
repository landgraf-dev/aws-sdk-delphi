unit AWS.Rekognition.Transform.SmileUnmarshaller;

interface

uses
  AWS.Rekognition.Model.Smile, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISmileUnmarshaller = IUnmarshaller<TSmile, TJsonUnmarshallerContext>;
  
  TSmileUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSmile, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISmileUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSmile;
    class function JsonInstance: ISmileUnmarshaller; static;
  end;
  
implementation

{ TSmileUnmarshaller }

function TSmileUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSmile;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSmile;
begin
  UnmarshalledObject := TSmile.Create;
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

class constructor TSmileUnmarshaller.Create;
begin
  FJsonInstance := TSmileUnmarshaller.Create;
end;

class function TSmileUnmarshaller.JsonInstance: ISmileUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
