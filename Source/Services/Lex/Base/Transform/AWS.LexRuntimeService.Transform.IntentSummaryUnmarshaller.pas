unit AWS.LexRuntimeService.Transform.IntentSummaryUnmarshaller;

interface

uses
  AWS.LexRuntimeService.Model.IntentSummary, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IIntentSummaryUnmarshaller = IUnmarshaller<TIntentSummary, TJsonUnmarshallerContext>;
  
  TIntentSummaryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TIntentSummary, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IIntentSummaryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TIntentSummary;
    class function JsonInstance: IIntentSummaryUnmarshaller; static;
  end;
  
implementation

{ TIntentSummaryUnmarshaller }

function TIntentSummaryUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TIntentSummary;
var
  TargetDepth: Integer;
  UnmarshalledObject: TIntentSummary;
begin
  UnmarshalledObject := TIntentSummary.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('checkpointLabel', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.CheckpointLabel := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('confirmationStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ConfirmationStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('dialogActionType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DialogActionType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('fulfillmentState', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.FulfillmentState := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('intentName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.IntentName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('slotToElicit', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SlotToElicit := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('slots', TargetDepth) then
      begin
        var Unmarshaller := TJsonDictionaryUnmarshaller<string, string, IJsonStringUnmarshaller, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Slots := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TIntentSummaryUnmarshaller.Create;
begin
  FJsonInstance := TIntentSummaryUnmarshaller.Create;
end;

class function TIntentSummaryUnmarshaller.JsonInstance: IIntentSummaryUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
