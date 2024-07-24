unit AWS.SSM.Transform.SeveritySummaryUnmarshaller;

interface

uses
  AWS.SSM.Model.SeveritySummary, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISeveritySummaryUnmarshaller = IUnmarshaller<TSeveritySummary, TJsonUnmarshallerContext>;
  
  TSeveritySummaryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSeveritySummary, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISeveritySummaryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSeveritySummary;
    class function JsonInstance: ISeveritySummaryUnmarshaller; static;
  end;
  
implementation

{ TSeveritySummaryUnmarshaller }

function TSeveritySummaryUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSeveritySummary;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSeveritySummary;
begin
  UnmarshalledObject := TSeveritySummary.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CriticalCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.CriticalCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('HighCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.HighCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InformationalCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.InformationalCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LowCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.LowCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MediumCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.MediumCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('UnspecifiedCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.UnspecifiedCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSeveritySummaryUnmarshaller.Create;
begin
  FJsonInstance := TSeveritySummaryUnmarshaller.Create;
end;

class function TSeveritySummaryUnmarshaller.JsonInstance: ISeveritySummaryUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
