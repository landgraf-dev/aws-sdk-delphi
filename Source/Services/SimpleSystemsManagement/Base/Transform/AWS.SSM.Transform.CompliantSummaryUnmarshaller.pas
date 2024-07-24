unit AWS.SSM.Transform.CompliantSummaryUnmarshaller;

interface

uses
  AWS.SSM.Model.CompliantSummary, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.SeveritySummaryUnmarshaller;

type
  ICompliantSummaryUnmarshaller = IUnmarshaller<TCompliantSummary, TJsonUnmarshallerContext>;
  
  TCompliantSummaryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCompliantSummary, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ICompliantSummaryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TCompliantSummary;
    class function JsonInstance: ICompliantSummaryUnmarshaller; static;
  end;
  
implementation

{ TCompliantSummaryUnmarshaller }

function TCompliantSummaryUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TCompliantSummary;
var
  TargetDepth: Integer;
  UnmarshalledObject: TCompliantSummary;
begin
  UnmarshalledObject := TCompliantSummary.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CompliantCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.CompliantCount := Unmarshaller.Unmarshall(AContext);
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

class constructor TCompliantSummaryUnmarshaller.Create;
begin
  FJsonInstance := TCompliantSummaryUnmarshaller.Create;
end;

class function TCompliantSummaryUnmarshaller.JsonInstance: ICompliantSummaryUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
