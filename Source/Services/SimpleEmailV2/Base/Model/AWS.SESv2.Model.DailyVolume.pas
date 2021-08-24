unit AWS.SESv2.Model.DailyVolume;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.DomainIspPlacement, 
  AWS.SESv2.Model.VolumeStatistics;

type
  TDailyVolume = class;
  
  IDailyVolume = interface
    function GetDomainIspPlacements: TObjectList<TDomainIspPlacement>;
    procedure SetDomainIspPlacements(const Value: TObjectList<TDomainIspPlacement>);
    function GetKeepDomainIspPlacements: Boolean;
    procedure SetKeepDomainIspPlacements(const Value: Boolean);
    function GetStartDate: TDateTime;
    procedure SetStartDate(const Value: TDateTime);
    function GetVolumeStatistics: TVolumeStatistics;
    procedure SetVolumeStatistics(const Value: TVolumeStatistics);
    function GetKeepVolumeStatistics: Boolean;
    procedure SetKeepVolumeStatistics(const Value: Boolean);
    function Obj: TDailyVolume;
    function IsSetDomainIspPlacements: Boolean;
    function IsSetStartDate: Boolean;
    function IsSetVolumeStatistics: Boolean;
    property DomainIspPlacements: TObjectList<TDomainIspPlacement> read GetDomainIspPlacements write SetDomainIspPlacements;
    property KeepDomainIspPlacements: Boolean read GetKeepDomainIspPlacements write SetKeepDomainIspPlacements;
    property StartDate: TDateTime read GetStartDate write SetStartDate;
    property VolumeStatistics: TVolumeStatistics read GetVolumeStatistics write SetVolumeStatistics;
    property KeepVolumeStatistics: Boolean read GetKeepVolumeStatistics write SetKeepVolumeStatistics;
  end;
  
  TDailyVolume = class
  strict private
    FDomainIspPlacements: TObjectList<TDomainIspPlacement>;
    FKeepDomainIspPlacements: Boolean;
    FStartDate: Nullable<TDateTime>;
    FVolumeStatistics: TVolumeStatistics;
    FKeepVolumeStatistics: Boolean;
    function GetDomainIspPlacements: TObjectList<TDomainIspPlacement>;
    procedure SetDomainIspPlacements(const Value: TObjectList<TDomainIspPlacement>);
    function GetKeepDomainIspPlacements: Boolean;
    procedure SetKeepDomainIspPlacements(const Value: Boolean);
    function GetStartDate: TDateTime;
    procedure SetStartDate(const Value: TDateTime);
    function GetVolumeStatistics: TVolumeStatistics;
    procedure SetVolumeStatistics(const Value: TVolumeStatistics);
    function GetKeepVolumeStatistics: Boolean;
    procedure SetKeepVolumeStatistics(const Value: Boolean);
  strict protected
    function Obj: TDailyVolume;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDomainIspPlacements: Boolean;
    function IsSetStartDate: Boolean;
    function IsSetVolumeStatistics: Boolean;
    property DomainIspPlacements: TObjectList<TDomainIspPlacement> read GetDomainIspPlacements write SetDomainIspPlacements;
    property KeepDomainIspPlacements: Boolean read GetKeepDomainIspPlacements write SetKeepDomainIspPlacements;
    property StartDate: TDateTime read GetStartDate write SetStartDate;
    property VolumeStatistics: TVolumeStatistics read GetVolumeStatistics write SetVolumeStatistics;
    property KeepVolumeStatistics: Boolean read GetKeepVolumeStatistics write SetKeepVolumeStatistics;
  end;
  
implementation

{ TDailyVolume }

constructor TDailyVolume.Create;
begin
  inherited;
  FDomainIspPlacements := TObjectList<TDomainIspPlacement>.Create;
end;

destructor TDailyVolume.Destroy;
begin
  VolumeStatistics := nil;
  DomainIspPlacements := nil;
  inherited;
end;

function TDailyVolume.Obj: TDailyVolume;
begin
  Result := Self;
end;

function TDailyVolume.GetDomainIspPlacements: TObjectList<TDomainIspPlacement>;
begin
  Result := FDomainIspPlacements;
end;

procedure TDailyVolume.SetDomainIspPlacements(const Value: TObjectList<TDomainIspPlacement>);
begin
  if FDomainIspPlacements <> Value then
  begin
    if not KeepDomainIspPlacements then
      FDomainIspPlacements.Free;
    FDomainIspPlacements := Value;
  end;
end;

function TDailyVolume.GetKeepDomainIspPlacements: Boolean;
begin
  Result := FKeepDomainIspPlacements;
end;

procedure TDailyVolume.SetKeepDomainIspPlacements(const Value: Boolean);
begin
  FKeepDomainIspPlacements := Value;
end;

function TDailyVolume.IsSetDomainIspPlacements: Boolean;
begin
  Result := (FDomainIspPlacements <> nil) and (FDomainIspPlacements.Count > 0);
end;

function TDailyVolume.GetStartDate: TDateTime;
begin
  Result := FStartDate.ValueOrDefault;
end;

procedure TDailyVolume.SetStartDate(const Value: TDateTime);
begin
  FStartDate := Value;
end;

function TDailyVolume.IsSetStartDate: Boolean;
begin
  Result := FStartDate.HasValue;
end;

function TDailyVolume.GetVolumeStatistics: TVolumeStatistics;
begin
  Result := FVolumeStatistics;
end;

procedure TDailyVolume.SetVolumeStatistics(const Value: TVolumeStatistics);
begin
  if FVolumeStatistics <> Value then
  begin
    if not KeepVolumeStatistics then
      FVolumeStatistics.Free;
    FVolumeStatistics := Value;
  end;
end;

function TDailyVolume.GetKeepVolumeStatistics: Boolean;
begin
  Result := FKeepVolumeStatistics;
end;

procedure TDailyVolume.SetKeepVolumeStatistics(const Value: Boolean);
begin
  FKeepVolumeStatistics := Value;
end;

function TDailyVolume.IsSetVolumeStatistics: Boolean;
begin
  Result := FVolumeStatistics <> nil;
end;

end.
