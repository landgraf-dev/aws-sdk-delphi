unit AWS.LexRuntimeV2.Transform.SessionStateUnmarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.SessionState, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.LexRuntimeV2.Transform.ActiveContextUnmarshaller, 
  AWS.LexRuntimeV2.Model.ActiveContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.LexRuntimeV2.Transform.DialogActionUnmarshaller, 
  AWS.LexRuntimeV2.Transform.IntentUnmarshaller, 
  AWS.LexRuntimeV2.Transform.RuntimeHintsUnmarshaller;

type
  ISessionStateUnmarshaller = IUnmarshaller<TSessionState, TJsonUnmarshallerContext>;
  
  TSessionStateUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSessionState, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISessionStateUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSessionState;
    class function JsonInstance: ISessionStateUnmarshaller; static;
  end;
  
implementation

{ TSessionStateUnmarshaller }

function TSessionStateUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSessionState;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSessionState;
begin
  UnmarshalledObject := TSessionState.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('activeContexts', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TActiveContext, IActiveContextUnmarshaller>.JsonNew(TActiveContextUnmarshaller.JsonInstance);
        UnmarshalledObject.ActiveContexts := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('dialogAction', TargetDepth) then
      begin
        var Unmarshaller := TDialogActionUnmarshaller.JsonInstance;
        UnmarshalledObject.DialogAction := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('intent', TargetDepth) then
      begin
        var Unmarshaller := TIntentUnmarshaller.JsonInstance;
        UnmarshalledObject.Intent := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('originatingRequestId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OriginatingRequestId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('runtimeHints', TargetDepth) then
      begin
        var Unmarshaller := TRuntimeHintsUnmarshaller.JsonInstance;
        UnmarshalledObject.RuntimeHints := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('sessionAttributes', TargetDepth) then
      begin
        var Unmarshaller := TJsonDictionaryUnmarshaller<string, string, IJsonStringUnmarshaller, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.SessionAttributes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSessionStateUnmarshaller.Create;
begin
  FJsonInstance := TSessionStateUnmarshaller.Create;
end;

class function TSessionStateUnmarshaller.JsonInstance: ISessionStateUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
