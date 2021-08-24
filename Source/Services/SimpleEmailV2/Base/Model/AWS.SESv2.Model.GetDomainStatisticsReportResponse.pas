unit AWS.SESv2.Model.GetDomainStatisticsReportResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.DailyVolume, 
  AWS.SESv2.Model.OverallVolume;

type
  TGetDomainStatisticsReportResponse = class;
  
  IGetDomainStatisticsReportResponse = interface(IAmazonWebServiceResponse)
    function GetDailyVolumes: TObjectList<TDailyVolume>;
    procedure SetDailyVolumes(const Value: TObjectList<TDailyVolume>);
    function GetKeepDailyVolumes: Boolean;
    procedure SetKeepDailyVolumes(const Value: Boolean);
    function GetOverallVolume: TOverallVolume;
    procedure SetOverallVolume(const Value: TOverallVolume);
    function GetKeepOverallVolume: Boolean;
    procedure SetKeepOverallVolume(const Value: Boolean);
    function Obj: TGetDomainStatisticsReportResponse;
    function IsSetDailyVolumes: Boolean;
    function IsSetOverallVolume: Boolean;
    property DailyVolumes: TObjectList<TDailyVolume> read GetDailyVolumes write SetDailyVolumes;
    property KeepDailyVolumes: Boolean read GetKeepDailyVolumes write SetKeepDailyVolumes;
    property OverallVolume: TOverallVolume read GetOverallVolume write SetOverallVolume;
    property KeepOverallVolume: Boolean read GetKeepOverallVolume write SetKeepOverallVolume;
  end;
  
  TGetDomainStatisticsReportResponse = class(TAmazonWebServiceResponse, IGetDomainStatisticsReportResponse)
  strict private
    FDailyVolumes: TObjectList<TDailyVolume>;
    FKeepDailyVolumes: Boolean;
    FOverallVolume: TOverallVolume;
    FKeepOverallVolume: Boolean;
    function GetDailyVolumes: TObjectList<TDailyVolume>;
    procedure SetDailyVolumes(const Value: TObjectList<TDailyVolume>);
    function GetKeepDailyVolumes: Boolean;
    procedure SetKeepDailyVolumes(const Value: Boolean);
    function GetOverallVolume: TOverallVolume;
    procedure SetOverallVolume(const Value: TOverallVolume);
    function GetKeepOverallVolume: Boolean;
    procedure SetKeepOverallVolume(const Value: Boolean);
  strict protected
    function Obj: TGetDomainStatisticsReportResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDailyVolumes: Boolean;
    function IsSetOverallVolume: Boolean;
    property DailyVolumes: TObjectList<TDailyVolume> read GetDailyVolumes write SetDailyVolumes;
    property KeepDailyVolumes: Boolean read GetKeepDailyVolumes write SetKeepDailyVolumes;
    property OverallVolume: TOverallVolume read GetOverallVolume write SetOverallVolume;
    property KeepOverallVolume: Boolean read GetKeepOverallVolume write SetKeepOverallVolume;
  end;
  
implementation

{ TGetDomainStatisticsReportResponse }

constructor TGetDomainStatisticsReportResponse.Create;
begin
  inherited;
  FDailyVolumes := TObjectList<TDailyVolume>.Create;
end;

destructor TGetDomainStatisticsReportResponse.Destroy;
begin
  OverallVolume := nil;
  DailyVolumes := nil;
  inherited;
end;

function TGetDomainStatisticsReportResponse.Obj: TGetDomainStatisticsReportResponse;
begin
  Result := Self;
end;

function TGetDomainStatisticsReportResponse.GetDailyVolumes: TObjectList<TDailyVolume>;
begin
  Result := FDailyVolumes;
end;

procedure TGetDomainStatisticsReportResponse.SetDailyVolumes(const Value: TObjectList<TDailyVolume>);
begin
  if FDailyVolumes <> Value then
  begin
    if not KeepDailyVolumes then
      FDailyVolumes.Free;
    FDailyVolumes := Value;
  end;
end;

function TGetDomainStatisticsReportResponse.GetKeepDailyVolumes: Boolean;
begin
  Result := FKeepDailyVolumes;
end;

procedure TGetDomainStatisticsReportResponse.SetKeepDailyVolumes(const Value: Boolean);
begin
  FKeepDailyVolumes := Value;
end;

function TGetDomainStatisticsReportResponse.IsSetDailyVolumes: Boolean;
begin
  Result := (FDailyVolumes <> nil) and (FDailyVolumes.Count > 0);
end;

function TGetDomainStatisticsReportResponse.GetOverallVolume: TOverallVolume;
begin
  Result := FOverallVolume;
end;

procedure TGetDomainStatisticsReportResponse.SetOverallVolume(const Value: TOverallVolume);
begin
  if FOverallVolume <> Value then
  begin
    if not KeepOverallVolume then
      FOverallVolume.Free;
    FOverallVolume := Value;
  end;
end;

function TGetDomainStatisticsReportResponse.GetKeepOverallVolume: Boolean;
begin
  Result := FKeepOverallVolume;
end;

procedure TGetDomainStatisticsReportResponse.SetKeepOverallVolume(const Value: Boolean);
begin
  FKeepOverallVolume := Value;
end;

function TGetDomainStatisticsReportResponse.IsSetOverallVolume: Boolean;
begin
  Result := FOverallVolume <> nil;
end;

end.
