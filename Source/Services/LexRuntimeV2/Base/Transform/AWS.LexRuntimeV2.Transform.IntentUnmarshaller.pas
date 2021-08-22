unit AWS.LexRuntimeV2.Transform.IntentUnmarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.Intent, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.LexRuntimeV2.Transform.SlotUnmarshaller, 
  AWS.LexRuntimeV2.Model.Slot;

type
  IIntentUnmarshaller = IUnmarshaller<TIntent, TJsonUnmarshallerContext>;
  
  TIntentUnmarshaller = class(TInterfacedObject, IUnmarshaller<TIntent, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IIntentUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TIntent;
    class function JsonInstance: IIntentUnmarshaller; static;
  end;
  
implementation

{ TIntentUnmarshaller }

function TIntentUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TIntent;
var
  TargetDepth: Integer;
  UnmarshalledObject: TIntent;
begin
  UnmarshalledObject := TIntent.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('confirmationState', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ConfirmationState := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('slots', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectDictionaryUnmarshaller<string, TSlot, IJsonStringUnmarshaller, ISlotUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TSlotUnmarshaller.JsonInstance);
        UnmarshalledObject.Slots := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('state', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.State := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TIntentUnmarshaller.Create;
begin
  FJsonInstance := TIntentUnmarshaller.Create;
end;

class function TIntentUnmarshaller.JsonInstance: IIntentUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
