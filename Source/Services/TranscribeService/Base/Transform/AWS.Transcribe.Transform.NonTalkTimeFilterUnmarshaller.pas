unit AWS.Transcribe.Transform.NonTalkTimeFilterUnmarshaller;

interface

uses
  AWS.Transcribe.Model.NonTalkTimeFilter, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transcribe.Transform.AbsoluteTimeRangeUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Transcribe.Transform.RelativeTimeRangeUnmarshaller;

type
  INonTalkTimeFilterUnmarshaller = IUnmarshaller<TNonTalkTimeFilter, TJsonUnmarshallerContext>;
  
  TNonTalkTimeFilterUnmarshaller = class(TInterfacedObject, IUnmarshaller<TNonTalkTimeFilter, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: INonTalkTimeFilterUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TNonTalkTimeFilter;
    class function JsonInstance: INonTalkTimeFilterUnmarshaller; static;
  end;
  
implementation

{ TNonTalkTimeFilterUnmarshaller }

function TNonTalkTimeFilterUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TNonTalkTimeFilter;
var
  TargetDepth: Integer;
  UnmarshalledObject: TNonTalkTimeFilter;
begin
  UnmarshalledObject := TNonTalkTimeFilter.Create;
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

class constructor TNonTalkTimeFilterUnmarshaller.Create;
begin
  FJsonInstance := TNonTalkTimeFilterUnmarshaller.Create;
end;

class function TNonTalkTimeFilterUnmarshaller.JsonInstance: INonTalkTimeFilterUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
