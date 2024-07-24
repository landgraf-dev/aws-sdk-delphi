unit AWS.SSM.Transform.NonCompliantSummaryUnmarshaller;

interface

uses
  AWS.SSM.Model.NonCompliantSummary, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.SeveritySummaryUnmarshaller;

type
  INonCompliantSummaryUnmarshaller = IUnmarshaller<TNonCompliantSummary, TJsonUnmarshallerContext>;
  
  TNonCompliantSummaryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TNonCompliantSummary, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: INonCompliantSummaryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TNonCompliantSummary;
    class function JsonInstance: INonCompliantSummaryUnmarshaller; static;
  end;
  
implementation

{ TNonCompliantSummaryUnmarshaller }

function TNonCompliantSummaryUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TNonCompliantSummary;
var
  TargetDepth: Integer;
  UnmarshalledObject: TNonCompliantSummary;
begin
  UnmarshalledObject := TNonCompliantSummary.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('NonCompliantCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.NonCompliantCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SeveritySummary', TargetDepth) then
      begin
        var Unmarshaller := TSeveritySummaryUnmarshaller.JsonInstance;
        UnmarshalledObject.SeveritySummary := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TNonCompliantSummaryUnmarshaller.Create;
begin
  FJsonInstance := TNonCompliantSummaryUnmarshaller.Create;
end;

class function TNonCompliantSummaryUnmarshaller.JsonInstance: INonCompliantSummaryUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
