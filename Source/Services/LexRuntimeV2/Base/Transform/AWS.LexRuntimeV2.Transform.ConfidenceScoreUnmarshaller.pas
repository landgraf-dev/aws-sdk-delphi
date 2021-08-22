unit AWS.LexRuntimeV2.Transform.ConfidenceScoreUnmarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.ConfidenceScore, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IConfidenceScoreUnmarshaller = IUnmarshaller<TConfidenceScore, TJsonUnmarshallerContext>;
  
  TConfidenceScoreUnmarshaller = class(TInterfacedObject, IUnmarshaller<TConfidenceScore, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IConfidenceScoreUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TConfidenceScore;
    class function JsonInstance: IConfidenceScoreUnmarshaller; static;
  end;
  
implementation

{ TConfidenceScoreUnmarshaller }

function TConfidenceScoreUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TConfidenceScore;
var
  TargetDepth: Integer;
  UnmarshalledObject: TConfidenceScore;
begin
  UnmarshalledObject := TConfidenceScore.Create;
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

class constructor TConfidenceScoreUnmarshaller.Create;
begin
  FJsonInstance := TConfidenceScoreUnmarshaller.Create;
end;

class function TConfidenceScoreUnmarshaller.JsonInstance: IConfidenceScoreUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
