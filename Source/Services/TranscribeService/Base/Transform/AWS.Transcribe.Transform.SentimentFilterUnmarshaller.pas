unit AWS.Transcribe.Transform.SentimentFilterUnmarshaller;

interface

uses
  AWS.Transcribe.Model.SentimentFilter, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transcribe.Transform.AbsoluteTimeRangeUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Transcribe.Transform.RelativeTimeRangeUnmarshaller;

type
  ISentimentFilterUnmarshaller = IUnmarshaller<TSentimentFilter, TJsonUnmarshallerContext>;
  
  TSentimentFilterUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSentimentFilter, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISentimentFilterUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSentimentFilter;
    class function JsonInstance: ISentimentFilterUnmarshaller; static;
  end;
  
implementation

{ TSentimentFilterUnmarshaller }

function TSentimentFilterUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSentimentFilter;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSentimentFilter;
begin
  UnmarshalledObject := TSentimentFilter.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AbsoluteTimeRange', TargetDepth) then
      begin
        var Unmarshaller := TAbsoluteTimeRangeUnmarshaller.JsonInstance;
        UnmarshalledObject.AbsoluteTimeRange := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Negate', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.Negate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ParticipantRole', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ParticipantRole := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('RelativeTimeRange', TargetDepth) then
      begin
        var Unmarshaller := TRelativeTimeRangeUnmarshaller.JsonInstance;
        UnmarshalledObject.RelativeTimeRange := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Sentiments', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Sentiments := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSentimentFilterUnmarshaller.Create;
begin
  FJsonInstance := TSentimentFilterUnmarshaller.Create;
end;

class function TSentimentFilterUnmarshaller.JsonInstance: ISentimentFilterUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
