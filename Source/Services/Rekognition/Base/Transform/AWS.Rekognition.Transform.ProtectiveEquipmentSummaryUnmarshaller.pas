unit AWS.Rekognition.Transform.ProtectiveEquipmentSummaryUnmarshaller;

interface

uses
  AWS.Rekognition.Model.ProtectiveEquipmentSummary, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IProtectiveEquipmentSummaryUnmarshaller = IUnmarshaller<TProtectiveEquipmentSummary, TJsonUnmarshallerContext>;
  
  TProtectiveEquipmentSummaryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TProtectiveEquipmentSummary, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IProtectiveEquipmentSummaryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TProtectiveEquipmentSummary;
    class function JsonInstance: IProtectiveEquipmentSummaryUnmarshaller; static;
  end;
  
implementation

{ TProtectiveEquipmentSummaryUnmarshaller }

function TProtectiveEquipmentSummaryUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TProtectiveEquipmentSummary;
var
  TargetDepth: Integer;
  UnmarshalledObject: TProtectiveEquipmentSummary;
begin
  UnmarshalledObject := TProtectiveEquipmentSummary.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('PersonsIndeterminate', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<Integer, IJsonIntegerUnmarshaller>.JsonNew(TIntegerUnmarshaller.JsonInstance);
        UnmarshalledObject.PersonsIndeterminate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PersonsWithRequiredEquipment', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<Integer, IJsonIntegerUnmarshaller>.JsonNew(TIntegerUnmarshaller.JsonInstance);
        UnmarshalledObject.PersonsWithRequiredEquipment := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PersonsWithoutRequiredEquipment', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<Integer, IJsonIntegerUnmarshaller>.JsonNew(TIntegerUnmarshaller.JsonInstance);
        UnmarshalledObject.PersonsWithoutRequiredEquipment := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TProtectiveEquipmentSummaryUnmarshaller.Create;
begin
  FJsonInstance := TProtectiveEquipmentSummaryUnmarshaller.Create;
end;

class function TProtectiveEquipmentSummaryUnmarshaller.JsonInstance: IProtectiveEquipmentSummaryUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
