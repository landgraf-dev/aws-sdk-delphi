unit AWS.Rekognition.Transform.CustomLabelUnmarshaller;

interface

uses
  AWS.Rekognition.Model.CustomLabel, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.GeometryUnmarshaller;

type
  ICustomLabelUnmarshaller = IUnmarshaller<TCustomLabel, TJsonUnmarshallerContext>;
  
  TCustomLabelUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCustomLabel, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ICustomLabelUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TCustomLabel;
    class function JsonInstance: ICustomLabelUnmarshaller; static;
  end;
  
implementation

{ TCustomLabelUnmarshaller }

function TCustomLabelUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TCustomLabel;
var
  TargetDepth: Integer;
  UnmarshalledObject: TCustomLabel;
begin
  UnmarshalledObject := TCustomLabel.Create;
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
      if AContext.TestExpression('Geometry', TargetDepth) then
      begin
        var Unmarshaller := TGeometryUnmarshaller.JsonInstance;
        UnmarshalledObject.Geometry := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TCustomLabelUnmarshaller.Create;
begin
  FJsonInstance := TCustomLabelUnmarshaller.Create;
end;

class function TCustomLabelUnmarshaller.JsonInstance: ICustomLabelUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
