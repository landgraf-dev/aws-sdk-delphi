unit AWS.Transcribe.Transform.InterruptionFilterUnmarshaller;

interface

uses
  AWS.Transcribe.Model.InterruptionFilter, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transcribe.Transform.AbsoluteTimeRangeUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Transcribe.Transform.RelativeTimeRangeUnmarshaller;

type
  IInterruptionFilterUnmarshaller = IUnmarshaller<TInterruptionFilter, TJsonUnmarshallerContext>;
  
  TInterruptionFilterUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInterruptionFilter, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IInterruptionFilterUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TInterruptionFilter;
    class function JsonInstance: IInterruptionFilterUnmarshaller; static;
  end;
  
implementation

{ TInterruptionFilterUnmarshaller }

function TInterruptionFilterUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TInterruptionFilter;
var
  TargetDepth: Integer;
  UnmarshalledObject: TInterruptionFilter;
begin
  UnmarshalledObject := TInterruptionFilter.Create;
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
      if AContext.TestExpression('Threshold', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.Threshold := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TInterruptionFilterUnmarshaller.Create;
begin
  FJsonInstance := TInterruptionFilterUnmarshaller.Create;
end;

class function TInterruptionFilterUnmarshaller.JsonInstance: IInterruptionFilterUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
