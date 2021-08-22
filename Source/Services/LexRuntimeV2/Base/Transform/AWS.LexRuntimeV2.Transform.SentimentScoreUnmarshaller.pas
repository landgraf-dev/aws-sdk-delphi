unit AWS.LexRuntimeV2.Transform.SentimentScoreUnmarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.SentimentScore, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISentimentScoreUnmarshaller = IUnmarshaller<TSentimentScore, TJsonUnmarshallerContext>;
  
  TSentimentScoreUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSentimentScore, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISentimentScoreUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSentimentScore;
    class function JsonInstance: ISentimentScoreUnmarshaller; static;
  end;
  
implementation

{ TSentimentScoreUnmarshaller }

function TSentimentScoreUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSentimentScore;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSentimentScore;
begin
  UnmarshalledObject := TSentimentScore.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('mixed', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.JsonInstance;
        UnmarshalledObject.Mixed := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('negative', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.JsonInstance;
        UnmarshalledObject.Negative := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('neutral', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.JsonInstance;
        UnmarshalledObject.Neutral := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('positive', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.JsonInstance;
        UnmarshalledObject.Positive := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSentimentScoreUnmarshaller.Create;
begin
  FJsonInstance := TSentimentScoreUnmarshaller.Create;
end;

class function TSentimentScoreUnmarshaller.JsonInstance: ISentimentScoreUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
