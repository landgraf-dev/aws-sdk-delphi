unit AWS.Rekognition.Transform.ProtectiveEquipmentBodyPartUnmarshaller;

interface

uses
  AWS.Rekognition.Model.ProtectiveEquipmentBodyPart, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.EquipmentDetectionUnmarshaller, 
  AWS.Rekognition.Model.EquipmentDetection;

type
  IProtectiveEquipmentBodyPartUnmarshaller = IUnmarshaller<TProtectiveEquipmentBodyPart, TJsonUnmarshallerContext>;
  
  TProtectiveEquipmentBodyPartUnmarshaller = class(TInterfacedObject, IUnmarshaller<TProtectiveEquipmentBodyPart, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IProtectiveEquipmentBodyPartUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TProtectiveEquipmentBodyPart;
    class function JsonInstance: IProtectiveEquipmentBodyPartUnmarshaller; static;
  end;
  
implementation

{ TProtectiveEquipmentBodyPartUnmarshaller }

function TProtectiveEquipmentBodyPartUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TProtectiveEquipmentBodyPart;
var
  TargetDepth: Integer;
  UnmarshalledObject: TProtectiveEquipmentBodyPart;
begin
  UnmarshalledObject := TProtectiveEquipmentBodyPart.Create;
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
      if AContext.TestExpression('EquipmentDetections', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TEquipmentDetection, IEquipmentDetectionUnmarshaller>.JsonNew(TEquipmentDetectionUnmarshaller.JsonInstance);
        UnmarshalledObject.EquipmentDetections := Unmarshaller.Unmarshall(AContext);
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

class constructor TProtectiveEquipmentBodyPartUnmarshaller.Create;
begin
  FJsonInstance := TProtectiveEquipmentBodyPartUnmarshaller.Create;
end;

class function TProtectiveEquipmentBodyPartUnmarshaller.JsonInstance: IProtectiveEquipmentBodyPartUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
