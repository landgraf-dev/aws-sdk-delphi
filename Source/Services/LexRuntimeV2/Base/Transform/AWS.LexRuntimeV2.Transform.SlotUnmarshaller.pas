unit AWS.LexRuntimeV2.Transform.SlotUnmarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.Slot, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.LexRuntimeV2.Transform.ValueUnmarshaller;

type
  ISlotUnmarshaller = IUnmarshaller<TSlot, TJsonUnmarshallerContext>;
  
  TSlotUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSlot, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISlotUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSlot;
    class function JsonInstance: ISlotUnmarshaller; static;
  end;
  
implementation

{ TSlotUnmarshaller }

function TSlotUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSlot;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSlot;
begin
  UnmarshalledObject := TSlot.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('shape', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Shape := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('value', TargetDepth) then
      begin
        var Unmarshaller := TValueUnmarshaller.JsonInstance;
        UnmarshalledObject.Value := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('values', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TSlot, ISlotUnmarshaller>.JsonNew(TSlotUnmarshaller.JsonInstance);
        UnmarshalledObject.Values := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSlotUnmarshaller.Create;
begin
  FJsonInstance := TSlotUnmarshaller.Create;
end;

class function TSlotUnmarshaller.JsonInstance: ISlotUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
