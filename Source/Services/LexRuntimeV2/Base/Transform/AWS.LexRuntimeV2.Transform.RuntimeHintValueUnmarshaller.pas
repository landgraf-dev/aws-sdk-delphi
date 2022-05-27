unit AWS.LexRuntimeV2.Transform.RuntimeHintValueUnmarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.RuntimeHintValue, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IRuntimeHintValueUnmarshaller = IUnmarshaller<TRuntimeHintValue, TJsonUnmarshallerContext>;
  
  TRuntimeHintValueUnmarshaller = class(TInterfacedObject, IUnmarshaller<TRuntimeHintValue, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IRuntimeHintValueUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TRuntimeHintValue;
    class function JsonInstance: IRuntimeHintValueUnmarshaller; static;
  end;
  
implementation

{ TRuntimeHintValueUnmarshaller }

function TRuntimeHintValueUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TRuntimeHintValue;
var
  TargetDepth: Integer;
  UnmarshalledObject: TRuntimeHintValue;
begin
  UnmarshalledObject := TRuntimeHintValue.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('phrase', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Phrase := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TRuntimeHintValueUnmarshaller.Create;
begin
  FJsonInstance := TRuntimeHintValueUnmarshaller.Create;
end;

class function TRuntimeHintValueUnmarshaller.JsonInstance: IRuntimeHintValueUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
