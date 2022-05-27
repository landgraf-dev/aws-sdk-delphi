unit AWS.LexRuntimeV2.Transform.RuntimeHintsUnmarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.RuntimeHints, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.LexRuntimeV2.Model.RuntimeHintDetails, 
  AWS.LexRuntimeV2.Transform.RuntimeHintDetailsUnmarshaller, 
  System.Generics.Collections;

type
  IRuntimeHintsUnmarshaller = IUnmarshaller<TRuntimeHints, TJsonUnmarshallerContext>;
  
  TRuntimeHintsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TRuntimeHints, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IRuntimeHintsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TRuntimeHints;
    class function JsonInstance: IRuntimeHintsUnmarshaller; static;
  end;
  
implementation

{ TRuntimeHintsUnmarshaller }

function TRuntimeHintsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TRuntimeHints;
var
  TargetDepth: Integer;
  UnmarshalledObject: TRuntimeHints;
begin
  UnmarshalledObject := TRuntimeHints.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('slotHints', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectDictionaryUnmarshaller<string, TObjectDictionary<string, TRuntimeHintDetails>, IJsonStringUnmarshaller, IUnmarshaller<TObjectDictionary<string, TRuntimeHintDetails>, TJsonUnmarshallerContext>>.JsonNew(TStringUnmarshaller.JsonInstance, TJsonObjectDictionaryUnmarshaller<string, TRuntimeHintDetails, IJsonStringUnmarshaller, IRuntimeHintDetailsUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TRuntimeHintDetailsUnmarshaller.JsonInstance));
        UnmarshalledObject.SlotHints := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TRuntimeHintsUnmarshaller.Create;
begin
  FJsonInstance := TRuntimeHintsUnmarshaller.Create;
end;

class function TRuntimeHintsUnmarshaller.JsonInstance: IRuntimeHintsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
