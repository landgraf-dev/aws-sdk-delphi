unit AWS.SSM.Transform.ProgressCountersUnmarshaller;

interface

uses
  AWS.SSM.Model.ProgressCounters, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IProgressCountersUnmarshaller = IUnmarshaller<TProgressCounters, TJsonUnmarshallerContext>;
  
  TProgressCountersUnmarshaller = class(TInterfacedObject, IUnmarshaller<TProgressCounters, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IProgressCountersUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TProgressCounters;
    class function JsonInstance: IProgressCountersUnmarshaller; static;
  end;
  
implementation

{ TProgressCountersUnmarshaller }

function TProgressCountersUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TProgressCounters;
var
  TargetDepth: Integer;
  UnmarshalledObject: TProgressCounters;
begin
  UnmarshalledObject := TProgressCounters.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CancelledSteps', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.CancelledSteps := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FailedSteps', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.FailedSteps := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SuccessSteps', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.SuccessSteps := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TimedOutSteps', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.TimedOutSteps := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TotalSteps', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.TotalSteps := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TProgressCountersUnmarshaller.Create;
begin
  FJsonInstance := TProgressCountersUnmarshaller.Create;
end;

class function TProgressCountersUnmarshaller.JsonInstance: IProgressCountersUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
