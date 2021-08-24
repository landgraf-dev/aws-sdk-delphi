unit AWS.SESv2.Transform.DailyVolumeUnmarshaller;

interface

uses
  AWS.SESv2.Model.DailyVolume, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SESv2.Transform.DomainIspPlacementUnmarshaller, 
  AWS.SESv2.Model.DomainIspPlacement, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SESv2.Transform.VolumeStatisticsUnmarshaller;

type
  IDailyVolumeUnmarshaller = IUnmarshaller<TDailyVolume, TJsonUnmarshallerContext>;
  
  TDailyVolumeUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDailyVolume, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDailyVolumeUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDailyVolume;
    class function JsonInstance: IDailyVolumeUnmarshaller; static;
  end;
  
implementation

{ TDailyVolumeUnmarshaller }

function TDailyVolumeUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDailyVolume;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDailyVolume;
begin
  UnmarshalledObject := TDailyVolume.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DomainIspPlacements', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TDomainIspPlacement, IDomainIspPlacementUnmarshaller>.JsonNew(TDomainIspPlacementUnmarshaller.JsonInstance);
        UnmarshalledObject.DomainIspPlacements := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StartDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.StartDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('VolumeStatistics', TargetDepth) then
      begin
        var Unmarshaller := TVolumeStatisticsUnmarshaller.JsonInstance;
        UnmarshalledObject.VolumeStatistics := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDailyVolumeUnmarshaller.Create;
begin
  FJsonInstance := TDailyVolumeUnmarshaller.Create;
end;

class function TDailyVolumeUnmarshaller.JsonInstance: IDailyVolumeUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
