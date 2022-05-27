unit AWS.Transcribe.Transform.AbsoluteTimeRangeUnmarshaller;

interface

uses
  AWS.Transcribe.Model.AbsoluteTimeRange, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IAbsoluteTimeRangeUnmarshaller = IUnmarshaller<TAbsoluteTimeRange, TJsonUnmarshallerContext>;
  
  TAbsoluteTimeRangeUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAbsoluteTimeRange, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IAbsoluteTimeRangeUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAbsoluteTimeRange;
    class function JsonInstance: IAbsoluteTimeRangeUnmarshaller; static;
  end;
  
implementation

{ TAbsoluteTimeRangeUnmarshaller }

function TAbsoluteTimeRangeUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAbsoluteTimeRange;
var
  TargetDepth: Integer;
  UnmarshalledObject: TAbsoluteTimeRange;
begin
  UnmarshalledObject := TAbsoluteTimeRange.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('EndTime', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.EndTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('First', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.First := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Last', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.Last := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StartTime', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
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

class constructor TAbsoluteTimeRangeUnmarshaller.Create;
begin
  FJsonInstance := TAbsoluteTimeRangeUnmarshaller.Create;
end;

class function TAbsoluteTimeRangeUnmarshaller.JsonInstance: IAbsoluteTimeRangeUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
