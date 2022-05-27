unit AWS.Transcribe.Transform.CallAnalyticsJobSummaryUnmarshaller;

interface

uses
  AWS.Transcribe.Model.CallAnalyticsJobSummary, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ICallAnalyticsJobSummaryUnmarshaller = IUnmarshaller<TCallAnalyticsJobSummary, TJsonUnmarshallerContext>;
  
  TCallAnalyticsJobSummaryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCallAnalyticsJobSummary, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ICallAnalyticsJobSummaryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TCallAnalyticsJobSummary;
    class function JsonInstance: ICallAnalyticsJobSummaryUnmarshaller; static;
  end;
  
implementation

{ TCallAnalyticsJobSummaryUnmarshaller }

function TCallAnalyticsJobSummaryUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TCallAnalyticsJobSummary;
var
  TargetDepth: Integer;
  UnmarshalledObject: TCallAnalyticsJobSummary;
begin
  UnmarshalledObject := TCallAnalyticsJobSummary.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CallAnalyticsJobName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.CallAnalyticsJobName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CallAnalyticsJobStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.CallAnalyticsJobStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CompletionTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CompletionTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CreationTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreationTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FailureReason', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.FailureReason := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LanguageCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LanguageCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StartTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.StartTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TCallAnalyticsJobSummaryUnmarshaller.Create;
begin
  FJsonInstance := TCallAnalyticsJobSummaryUnmarshaller.Create;
end;

class function TCallAnalyticsJobSummaryUnmarshaller.JsonInstance: ICallAnalyticsJobSummaryUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
