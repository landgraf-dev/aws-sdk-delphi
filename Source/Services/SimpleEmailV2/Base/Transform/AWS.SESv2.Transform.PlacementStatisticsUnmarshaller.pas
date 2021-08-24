unit AWS.SESv2.Transform.PlacementStatisticsUnmarshaller;

interface

uses
  AWS.SESv2.Model.PlacementStatistics, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPlacementStatisticsUnmarshaller = IUnmarshaller<TPlacementStatistics, TJsonUnmarshallerContext>;
  
  TPlacementStatisticsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPlacementStatistics, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IPlacementStatisticsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TPlacementStatistics;
    class function JsonInstance: IPlacementStatisticsUnmarshaller; static;
  end;
  
implementation

{ TPlacementStatisticsUnmarshaller }

function TPlacementStatisticsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TPlacementStatistics;
var
  TargetDepth: Integer;
  UnmarshalledObject: TPlacementStatistics;
begin
  UnmarshalledObject := TPlacementStatistics.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DkimPercentage', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.JsonInstance;
        UnmarshalledObject.DkimPercentage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InboxPercentage', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.JsonInstance;
        UnmarshalledObject.InboxPercentage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MissingPercentage', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.JsonInstance;
        UnmarshalledObject.MissingPercentage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SpamPercentage', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.JsonInstance;
        UnmarshalledObject.SpamPercentage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SpfPercentage', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.JsonInstance;
        UnmarshalledObject.SpfPercentage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TPlacementStatisticsUnmarshaller.Create;
begin
  FJsonInstance := TPlacementStatisticsUnmarshaller.Create;
end;

class function TPlacementStatisticsUnmarshaller.JsonInstance: IPlacementStatisticsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
