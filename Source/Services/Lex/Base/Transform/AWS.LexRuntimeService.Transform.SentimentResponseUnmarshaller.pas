unit AWS.LexRuntimeService.Transform.SentimentResponseUnmarshaller;

interface

uses
  AWS.LexRuntimeService.Model.SentimentResponse, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISentimentResponseUnmarshaller = IUnmarshaller<TSentimentResponse, TJsonUnmarshallerContext>;
  
  TSentimentResponseUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSentimentResponse, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISentimentResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSentimentResponse;
    class function JsonInstance: ISentimentResponseUnmarshaller; static;
  end;
  
implementation

{ TSentimentResponseUnmarshaller }

function TSentimentResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSentimentResponse;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSentimentResponse;
begin
  UnmarshalledObject := TSentimentResponse.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('sentimentLabel', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SentimentLabel := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('sentimentScore', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SentimentScore := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSentimentResponseUnmarshaller.Create;
begin
  FJsonInstance := TSentimentResponseUnmarshaller.Create;
end;

class function TSentimentResponseUnmarshaller.JsonInstance: ISentimentResponseUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
