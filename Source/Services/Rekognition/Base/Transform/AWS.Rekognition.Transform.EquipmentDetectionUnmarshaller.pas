unit AWS.Rekognition.Transform.EquipmentDetectionUnmarshaller;

interface

uses
  AWS.Rekognition.Model.EquipmentDetection, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.BoundingBoxUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.CoversBodyPartUnmarshaller;

type
  IEquipmentDetectionUnmarshaller = IUnmarshaller<TEquipmentDetection, TJsonUnmarshallerContext>;
  
  TEquipmentDetectionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TEquipmentDetection, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IEquipmentDetectionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TEquipmentDetection;
    class function JsonInstance: IEquipmentDetectionUnmarshaller; static;
  end;
  
implementation

{ TEquipmentDetectionUnmarshaller }

function TEquipmentDetectionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TEquipmentDetection;
var
  TargetDepth: Integer;
  UnmarshalledObject: TEquipmentDetection;
begin
  UnmarshalledObject := TEquipmentDetection.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('BoundingBox', TargetDepth) then
      begin
        var Unmarshaller := TBoundingBoxUnmarshaller.JsonInstance;
        UnmarshalledObject.BoundingBox := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Confidence', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Confidence := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CoversBodyPart', TargetDepth) then
      begin
        var Unmarshaller := TCoversBodyPartUnmarshaller.JsonInstance;
        UnmarshalledObject.CoversBodyPart := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Type', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.&Type := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TEquipmentDetectionUnmarshaller.Create;
begin
  FJsonInstance := TEquipmentDetectionUnmarshaller.Create;
end;

class function TEquipmentDetectionUnmarshaller.JsonInstance: IEquipmentDetectionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
