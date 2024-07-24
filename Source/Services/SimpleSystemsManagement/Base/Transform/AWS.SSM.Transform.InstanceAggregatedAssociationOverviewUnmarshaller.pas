unit AWS.SSM.Transform.InstanceAggregatedAssociationOverviewUnmarshaller;

interface

uses
  AWS.SSM.Model.InstanceAggregatedAssociationOverview, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInstanceAggregatedAssociationOverviewUnmarshaller = IUnmarshaller<TInstanceAggregatedAssociationOverview, TJsonUnmarshallerContext>;
  
  TInstanceAggregatedAssociationOverviewUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInstanceAggregatedAssociationOverview, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IInstanceAggregatedAssociationOverviewUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TInstanceAggregatedAssociationOverview;
    class function JsonInstance: IInstanceAggregatedAssociationOverviewUnmarshaller; static;
  end;
  
implementation

{ TInstanceAggregatedAssociationOverviewUnmarshaller }

function TInstanceAggregatedAssociationOverviewUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TInstanceAggregatedAssociationOverview;
var
  TargetDepth: Integer;
  UnmarshalledObject: TInstanceAggregatedAssociationOverview;
begin
  UnmarshalledObject := TInstanceAggregatedAssociationOverview.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DetailedStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DetailedStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InstanceAssociationStatusAggregatedCount', TargetDepth) then
      begin
        var Unmarshaller := TJsonDictionaryUnmarshaller<string, Integer, IJsonStringUnmarshaller, IJsonIntegerUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TIntegerUnmarshaller.JsonInstance);
        UnmarshalledObject.InstanceAssociationStatusAggregatedCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TInstanceAggregatedAssociationOverviewUnmarshaller.Create;
begin
  FJsonInstance := TInstanceAggregatedAssociationOverviewUnmarshaller.Create;
end;

class function TInstanceAggregatedAssociationOverviewUnmarshaller.JsonInstance: IInstanceAggregatedAssociationOverviewUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
