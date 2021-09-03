unit AWS.Rekognition.Transform.ProtectiveEquipmentPersonUnmarshaller;

interface

uses
  AWS.Rekognition.Model.ProtectiveEquipmentPerson, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.ProtectiveEquipmentBodyPartUnmarshaller, 
  AWS.Rekognition.Model.ProtectiveEquipmentBodyPart, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.BoundingBoxUnmarshaller;

type
  IProtectiveEquipmentPersonUnmarshaller = IUnmarshaller<TProtectiveEquipmentPerson, TJsonUnmarshallerContext>;
  
  TProtectiveEquipmentPersonUnmarshaller = class(TInterfacedObject, IUnmarshaller<TProtectiveEquipmentPerson, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IProtectiveEquipmentPersonUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TProtectiveEquipmentPerson;
    class function JsonInstance: IProtectiveEquipmentPersonUnmarshaller; static;
  end;
  
implementation

{ TProtectiveEquipmentPersonUnmarshaller }

function TProtectiveEquipmentPersonUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TProtectiveEquipmentPerson;
var
  TargetDepth: Integer;
  UnmarshalledObject: TProtectiveEquipmentPerson;
begin
  UnmarshalledObject := TProtectiveEquipmentPerson.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('BodyParts', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TProtectiveEquipmentBodyPart, IProtectiveEquipmentBodyPartUnmarshaller>.JsonNew(TProtectiveEquipmentBodyPartUnmarshaller.JsonInstance);
        UnmarshalledObject.BodyParts := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
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
      if AContext.TestExpression('Id', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.Id := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TProtectiveEquipmentPersonUnmarshaller.Create;
begin
  FJsonInstance := TProtectiveEquipmentPersonUnmarshaller.Create;
end;

class function TProtectiveEquipmentPersonUnmarshaller.JsonInstance: IProtectiveEquipmentPersonUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
