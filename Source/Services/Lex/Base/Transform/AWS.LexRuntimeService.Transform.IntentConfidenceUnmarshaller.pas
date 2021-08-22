unit AWS.LexRuntimeService.Transform.IntentConfidenceUnmarshaller;

interface

uses
  AWS.LexRuntimeService.Model.IntentConfidence, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IIntentConfidenceUnmarshaller = IUnmarshaller<TIntentConfidence, TJsonUnmarshallerContext>;
  
  TIntentConfidenceUnmarshaller = class(TInterfacedObject, IUnmarshaller<TIntentConfidence, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IIntentConfidenceUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TIntentConfidence;
    class function JsonInstance: IIntentConfidenceUnmarshaller; static;
  end;
  
implementation

{ TIntentConfidenceUnmarshaller }

function TIntentConfidenceUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TIntentConfidence;
var
  TargetDepth: Integer;
  UnmarshalledObject: TIntentConfidence;
begin
  UnmarshalledObject := TIntentConfidence.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('score', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.JsonInstance;
        UnmarshalledObject.Score := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TIntentConfidenceUnmarshaller.Create;
begin
  FJsonInstance := TIntentConfidenceUnmarshaller.Create;
end;

class function TIntentConfidenceUnmarshaller.JsonInstance: IIntentConfidenceUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
