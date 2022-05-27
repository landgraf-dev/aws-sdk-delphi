unit AWS.Transcribe.Transform.RelativeTimeRangeUnmarshaller;

interface

uses
  AWS.Transcribe.Model.RelativeTimeRange, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IRelativeTimeRangeUnmarshaller = IUnmarshaller<TRelativeTimeRange, TJsonUnmarshallerContext>;
  
  TRelativeTimeRangeUnmarshaller = class(TInterfacedObject, IUnmarshaller<TRelativeTimeRange, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IRelativeTimeRangeUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TRelativeTimeRange;
    class function JsonInstance: IRelativeTimeRangeUnmarshaller; static;
  end;
  
implementation

{ TRelativeTimeRangeUnmarshaller }

function TRelativeTimeRangeUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TRelativeTimeRange;
var
  TargetDepth: Integer;
  UnmarshalledObject: TRelativeTimeRange;
begin
  UnmarshalledObject := TRelativeTimeRange.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('EndPercentage', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.EndPercentage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('First', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.First := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Last', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.Last := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StartPercentage', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.StartPercentage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TRelativeTimeRangeUnmarshaller.Create;
begin
  FJsonInstance := TRelativeTimeRangeUnmarshaller.Create;
end;

class function TRelativeTimeRangeUnmarshaller.JsonInstance: IRelativeTimeRangeUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
