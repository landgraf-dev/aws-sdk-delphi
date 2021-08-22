unit AWS.LexRuntimeService.Transform.PredictedIntentUnmarshaller;

interface

uses
  AWS.LexRuntimeService.Model.PredictedIntent, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.LexRuntimeService.Transform.IntentConfidenceUnmarshaller;

type
  IPredictedIntentUnmarshaller = IUnmarshaller<TPredictedIntent, TJsonUnmarshallerContext>;
  
  TPredictedIntentUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPredictedIntent, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IPredictedIntentUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TPredictedIntent;
    class function JsonInstance: IPredictedIntentUnmarshaller; static;
  end;
  
implementation

{ TPredictedIntentUnmarshaller }

function TPredictedIntentUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TPredictedIntent;
var
  TargetDepth: Integer;
  UnmarshalledObject: TPredictedIntent;
begin
  UnmarshalledObject := TPredictedIntent.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('intentName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.IntentName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('nluIntentConfidence', TargetDepth) then
      begin
        var Unmarshaller := TIntentConfidenceUnmarshaller.JsonInstance;
        UnmarshalledObject.NluIntentConfidence := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('slots', TargetDepth) then
      begin
        var Unmarshaller := TDictionaryUnmarshaller<string, string, IJsonStringUnmarshaller, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.Instance, TStringUnmarshaller.JsonInstance);
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

class constructor TPredictedIntentUnmarshaller.Create;
begin
  FJsonInstance := TPredictedIntentUnmarshaller.Create;
end;

class function TPredictedIntentUnmarshaller.JsonInstance: IPredictedIntentUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
