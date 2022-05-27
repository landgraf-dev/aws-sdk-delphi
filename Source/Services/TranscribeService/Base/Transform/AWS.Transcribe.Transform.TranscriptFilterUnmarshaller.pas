unit AWS.Transcribe.Transform.TranscriptFilterUnmarshaller;

interface

uses
  AWS.Transcribe.Model.TranscriptFilter, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transcribe.Transform.AbsoluteTimeRangeUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Transcribe.Transform.RelativeTimeRangeUnmarshaller;

type
  ITranscriptFilterUnmarshaller = IUnmarshaller<TTranscriptFilter, TJsonUnmarshallerContext>;
  
  TTranscriptFilterUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTranscriptFilter, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITranscriptFilterUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTranscriptFilter;
    class function JsonInstance: ITranscriptFilterUnmarshaller; static;
  end;
  
implementation

{ TTranscriptFilterUnmarshaller }

function TTranscriptFilterUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTranscriptFilter;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTranscriptFilter;
begin
  UnmarshalledObject := TTranscriptFilter.Create;
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
      if AContext.TestExpression('Targets', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Targets := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TranscriptFilterType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TranscriptFilterType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TTranscriptFilterUnmarshaller.Create;
begin
  FJsonInstance := TTranscriptFilterUnmarshaller.Create;
end;

class function TTranscriptFilterUnmarshaller.JsonInstance: ITranscriptFilterUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
