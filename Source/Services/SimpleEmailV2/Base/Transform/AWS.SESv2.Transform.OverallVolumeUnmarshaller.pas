unit AWS.SESv2.Transform.OverallVolumeUnmarshaller;

interface

uses
  AWS.SESv2.Model.OverallVolume, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SESv2.Transform.DomainIspPlacementUnmarshaller, 
  AWS.SESv2.Model.DomainIspPlacement, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SESv2.Transform.VolumeStatisticsUnmarshaller;

type
  IOverallVolumeUnmarshaller = IUnmarshaller<TOverallVolume, TJsonUnmarshallerContext>;
  
  TOverallVolumeUnmarshaller = class(TInterfacedObject, IUnmarshaller<TOverallVolume, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IOverallVolumeUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TOverallVolume;
    class function JsonInstance: IOverallVolumeUnmarshaller; static;
  end;
  
implementation

{ TOverallVolumeUnmarshaller }

function TOverallVolumeUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TOverallVolume;
var
  TargetDepth: Integer;
  UnmarshalledObject: TOverallVolume;
begin
  UnmarshalledObject := TOverallVolume.Create;
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
      if AContext.TestExpression('ReadRatePercent', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.JsonInstance;
        UnmarshalledObject.ReadRatePercent := Unmarshaller.Unmarshall(AContext);
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

class constructor TOverallVolumeUnmarshaller.Create;
begin
  FJsonInstance := TOverallVolumeUnmarshaller.Create;
end;

class function TOverallVolumeUnmarshaller.JsonInstance: IOverallVolumeUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
