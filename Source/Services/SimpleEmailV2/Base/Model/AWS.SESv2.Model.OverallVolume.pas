unit AWS.SESv2.Model.OverallVolume;

interface

uses
  System.Generics.Collections, 
  AWS.SESv2.Model.DomainIspPlacement, 
  AWS.Nullable, 
  AWS.SESv2.Model.VolumeStatistics;

type
  TOverallVolume = class;
  
  IOverallVolume = interface
    function GetDomainIspPlacements: TObjectList<TDomainIspPlacement>;
    procedure SetDomainIspPlacements(const Value: TObjectList<TDomainIspPlacement>);
    function GetKeepDomainIspPlacements: Boolean;
    procedure SetKeepDomainIspPlacements(const Value: Boolean);
    function GetReadRatePercent: Double;
    procedure SetReadRatePercent(const Value: Double);
    function GetVolumeStatistics: TVolumeStatistics;
    procedure SetVolumeStatistics(const Value: TVolumeStatistics);
    function GetKeepVolumeStatistics: Boolean;
    procedure SetKeepVolumeStatistics(const Value: Boolean);
    function Obj: TOverallVolume;
    function IsSetDomainIspPlacements: Boolean;
    function IsSetReadRatePercent: Boolean;
    function IsSetVolumeStatistics: Boolean;
    property DomainIspPlacements: TObjectList<TDomainIspPlacement> read GetDomainIspPlacements write SetDomainIspPlacements;
    property KeepDomainIspPlacements: Boolean read GetKeepDomainIspPlacements write SetKeepDomainIspPlacements;
    property ReadRatePercent: Double read GetReadRatePercent write SetReadRatePercent;
    property VolumeStatistics: TVolumeStatistics read GetVolumeStatistics write SetVolumeStatistics;
    property KeepVolumeStatistics: Boolean read GetKeepVolumeStatistics write SetKeepVolumeStatistics;
  end;
  
  TOverallVolume = class
  strict private
    FDomainIspPlacements: TObjectList<TDomainIspPlacement>;
    FKeepDomainIspPlacements: Boolean;
    FReadRatePercent: Nullable<Double>;
    FVolumeStatistics: TVolumeStatistics;
    FKeepVolumeStatistics: Boolean;
    function GetDomainIspPlacements: TObjectList<TDomainIspPlacement>;
    procedure SetDomainIspPlacements(const Value: TObjectList<TDomainIspPlacement>);
    function GetKeepDomainIspPlacements: Boolean;
    procedure SetKeepDomainIspPlacements(const Value: Boolean);
    function GetReadRatePercent: Double;
    procedure SetReadRatePercent(const Value: Double);
    function GetVolumeStatistics: TVolumeStatistics;
    procedure SetVolumeStatistics(const Value: TVolumeStatistics);
    function GetKeepVolumeStatistics: Boolean;
    procedure SetKeepVolumeStatistics(const Value: Boolean);
  strict protected
    function Obj: TOverallVolume;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDomainIspPlacements: Boolean;
    function IsSetReadRatePercent: Boolean;
    function IsSetVolumeStatistics: Boolean;
    property DomainIspPlacements: TObjectList<TDomainIspPlacement> read GetDomainIspPlacements write SetDomainIspPlacements;
    property KeepDomainIspPlacements: Boolean read GetKeepDomainIspPlacements write SetKeepDomainIspPlacements;
    property ReadRatePercent: Double read GetReadRatePercent write SetReadRatePercent;
    property VolumeStatistics: TVolumeStatistics read GetVolumeStatistics write SetVolumeStatistics;
    property KeepVolumeStatistics: Boolean read GetKeepVolumeStatistics write SetKeepVolumeStatistics;
  end;
  
implementation

{ TOverallVolume }

constructor TOverallVolume.Create;
begin
  inherited;
  FDomainIspPlacements := TObjectList<TDomainIspPlacement>.Create;
end;

destructor TOverallVolume.Destroy;
begin
  VolumeStatistics := nil;
  DomainIspPlacements := nil;
  inherited;
end;

function TOverallVolume.Obj: TOverallVolume;
begin
  Result := Self;
end;

function TOverallVolume.GetDomainIspPlacements: TObjectList<TDomainIspPlacement>;
begin
  Result := FDomainIspPlacements;
end;

procedure TOverallVolume.SetDomainIspPlacements(const Value: TObjectList<TDomainIspPlacement>);
begin
  if FDomainIspPlacements <> Value then
  begin
    if not KeepDomainIspPlacements then
      FDomainIspPlacements.Free;
    FDomainIspPlacements := Value;
  end;
end;

function TOverallVolume.GetKeepDomainIspPlacements: Boolean;
begin
  Result := FKeepDomainIspPlacements;
end;

procedure TOverallVolume.SetKeepDomainIspPlacements(const Value: Boolean);
begin
  FKeepDomainIspPlacements := Value;
end;

function TOverallVolume.IsSetDomainIspPlacements: Boolean;
begin
  Result := (FDomainIspPlacements <> nil) and (FDomainIspPlacements.Count > 0);
end;

function TOverallVolume.GetReadRatePercent: Double;
begin
  Result := FReadRatePercent.ValueOrDefault;
end;

procedure TOverallVolume.SetReadRatePercent(const Value: Double);
begin
  FReadRatePercent := Value;
end;

function TOverallVolume.IsSetReadRatePercent: Boolean;
begin
  Result := FReadRatePercent.HasValue;
end;

function TOverallVolume.GetVolumeStatistics: TVolumeStatistics;
begin
  Result := FVolumeStatistics;
end;

procedure TOverallVolume.SetVolumeStatistics(const Value: TVolumeStatistics);
begin
  if FVolumeStatistics <> Value then
  begin
    if not KeepVolumeStatistics then
      FVolumeStatistics.Free;
    FVolumeStatistics := Value;
  end;
end;

function TOverallVolume.GetKeepVolumeStatistics: Boolean;
begin
  Result := FKeepVolumeStatistics;
end;

procedure TOverallVolume.SetKeepVolumeStatistics(const Value: Boolean);
begin
  FKeepVolumeStatistics := Value;
end;

function TOverallVolume.IsSetVolumeStatistics: Boolean;
begin
  Result := FVolumeStatistics <> nil;
end;

end.
