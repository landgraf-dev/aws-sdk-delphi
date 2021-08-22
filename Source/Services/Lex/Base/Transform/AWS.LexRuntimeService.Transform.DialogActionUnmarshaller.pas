unit AWS.LexRuntimeService.Transform.DialogActionUnmarshaller;

interface

uses
  AWS.LexRuntimeService.Model.DialogAction, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDialogActionUnmarshaller = IUnmarshaller<TDialogAction, TJsonUnmarshallerContext>;
  
  TDialogActionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDialogAction, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDialogActionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDialogAction;
    class function JsonInstance: IDialogActionUnmarshaller; static;
  end;
  
implementation

{ TDialogActionUnmarshaller }

function TDialogActionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDialogAction;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDialogAction;
begin
  UnmarshalledObject := TDialogAction.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
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
      if AContext.TestExpression('message', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Message := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('messageFormat', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.MessageFormat := Unmarshaller.Unmarshall(AContext);
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
        var Unmarshaller := TDictionaryUnmarshaller<string, string, IJsonStringUnmarshaller, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.Instance, TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Slots := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('type', TargetDepth) then
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

class constructor TDialogActionUnmarshaller.Create;
begin
  FJsonInstance := TDialogActionUnmarshaller.Create;
end;

class function TDialogActionUnmarshaller.JsonInstance: IDialogActionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
