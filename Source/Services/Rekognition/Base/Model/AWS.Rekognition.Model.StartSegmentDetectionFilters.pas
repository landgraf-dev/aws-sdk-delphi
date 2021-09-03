unit AWS.Rekognition.Model.StartSegmentDetectionFilters;

interface

uses
  AWS.Rekognition.Model.StartShotDetectionFilter, 
  AWS.Rekognition.Model.StartTechnicalCueDetectionFilter;

type
  TStartSegmentDetectionFilters = class;
  
  IStartSegmentDetectionFilters = interface
    function GetShotFilter: TStartShotDetectionFilter;
    procedure SetShotFilter(const Value: TStartShotDetectionFilter);
    function GetKeepShotFilter: Boolean;
    procedure SetKeepShotFilter(const Value: Boolean);
    function GetTechnicalCueFilter: TStartTechnicalCueDetectionFilter;
    procedure SetTechnicalCueFilter(const Value: TStartTechnicalCueDetectionFilter);
    function GetKeepTechnicalCueFilter: Boolean;
    procedure SetKeepTechnicalCueFilter(const Value: Boolean);
    function Obj: TStartSegmentDetectionFilters;
    function IsSetShotFilter: Boolean;
    function IsSetTechnicalCueFilter: Boolean;
    property ShotFilter: TStartShotDetectionFilter read GetShotFilter write SetShotFilter;
    property KeepShotFilter: Boolean read GetKeepShotFilter write SetKeepShotFilter;
    property TechnicalCueFilter: TStartTechnicalCueDetectionFilter read GetTechnicalCueFilter write SetTechnicalCueFilter;
    property KeepTechnicalCueFilter: Boolean read GetKeepTechnicalCueFilter write SetKeepTechnicalCueFilter;
  end;
  
  TStartSegmentDetectionFilters = class
  strict private
    FShotFilter: TStartShotDetectionFilter;
    FKeepShotFilter: Boolean;
    FTechnicalCueFilter: TStartTechnicalCueDetectionFilter;
    FKeepTechnicalCueFilter: Boolean;
    function GetShotFilter: TStartShotDetectionFilter;
    procedure SetShotFilter(const Value: TStartShotDetectionFilter);
    function GetKeepShotFilter: Boolean;
    procedure SetKeepShotFilter(const Value: Boolean);
    function GetTechnicalCueFilter: TStartTechnicalCueDetectionFilter;
    procedure SetTechnicalCueFilter(const Value: TStartTechnicalCueDetectionFilter);
    function GetKeepTechnicalCueFilter: Boolean;
    procedure SetKeepTechnicalCueFilter(const Value: Boolean);
  strict protected
    function Obj: TStartSegmentDetectionFilters;
  public
    destructor Destroy; override;
    function IsSetShotFilter: Boolean;
    function IsSetTechnicalCueFilter: Boolean;
    property ShotFilter: TStartShotDetectionFilter read GetShotFilter write SetShotFilter;
    property KeepShotFilter: Boolean read GetKeepShotFilter write SetKeepShotFilter;
    property TechnicalCueFilter: TStartTechnicalCueDetectionFilter read GetTechnicalCueFilter write SetTechnicalCueFilter;
    property KeepTechnicalCueFilter: Boolean read GetKeepTechnicalCueFilter write SetKeepTechnicalCueFilter;
  end;
  
implementation

{ TStartSegmentDetectionFilters }

destructor TStartSegmentDetectionFilters.Destroy;
begin
  TechnicalCueFilter := nil;
  ShotFilter := nil;
  inherited;
end;

function TStartSegmentDetectionFilters.Obj: TStartSegmentDetectionFilters;
begin
  Result := Self;
end;

function TStartSegmentDetectionFilters.GetShotFilter: TStartShotDetectionFilter;
begin
  Result := FShotFilter;
end;

procedure TStartSegmentDetectionFilters.SetShotFilter(const Value: TStartShotDetectionFilter);
begin
  if FShotFilter <> Value then
  begin
    if not KeepShotFilter then
      FShotFilter.Free;
    FShotFilter := Value;
  end;
end;

function TStartSegmentDetectionFilters.GetKeepShotFilter: Boolean;
begin
  Result := FKeepShotFilter;
end;

procedure TStartSegmentDetectionFilters.SetKeepShotFilter(const Value: Boolean);
begin
  FKeepShotFilter := Value;
end;

function TStartSegmentDetectionFilters.IsSetShotFilter: Boolean;
begin
  Result := FShotFilter <> nil;
end;

function TStartSegmentDetectionFilters.GetTechnicalCueFilter: TStartTechnicalCueDetectionFilter;
begin
  Result := FTechnicalCueFilter;
end;

procedure TStartSegmentDetectionFilters.SetTechnicalCueFilter(const Value: TStartTechnicalCueDetectionFilter);
begin
  if FTechnicalCueFilter <> Value then
  begin
    if not KeepTechnicalCueFilter then
      FTechnicalCueFilter.Free;
    FTechnicalCueFilter := Value;
  end;
end;

function TStartSegmentDetectionFilters.GetKeepTechnicalCueFilter: Boolean;
begin
  Result := FKeepTechnicalCueFilter;
end;

procedure TStartSegmentDetectionFilters.SetKeepTechnicalCueFilter(const Value: Boolean);
begin
  FKeepTechnicalCueFilter := Value;
end;

function TStartSegmentDetectionFilters.IsSetTechnicalCueFilter: Boolean;
begin
  Result := FTechnicalCueFilter <> nil;
end;

end.
