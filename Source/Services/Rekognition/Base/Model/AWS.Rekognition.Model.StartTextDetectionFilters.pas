unit AWS.Rekognition.Model.StartTextDetectionFilters;

interface

uses
  System.Generics.Collections, 
  AWS.Rekognition.Model.RegionOfInterest, 
  AWS.Rekognition.Model.DetectionFilter;

type
  TStartTextDetectionFilters = class;
  
  IStartTextDetectionFilters = interface
    function GetRegionsOfInterest: TObjectList<TRegionOfInterest>;
    procedure SetRegionsOfInterest(const Value: TObjectList<TRegionOfInterest>);
    function GetKeepRegionsOfInterest: Boolean;
    procedure SetKeepRegionsOfInterest(const Value: Boolean);
    function GetWordFilter: TDetectionFilter;
    procedure SetWordFilter(const Value: TDetectionFilter);
    function GetKeepWordFilter: Boolean;
    procedure SetKeepWordFilter(const Value: Boolean);
    function Obj: TStartTextDetectionFilters;
    function IsSetRegionsOfInterest: Boolean;
    function IsSetWordFilter: Boolean;
    property RegionsOfInterest: TObjectList<TRegionOfInterest> read GetRegionsOfInterest write SetRegionsOfInterest;
    property KeepRegionsOfInterest: Boolean read GetKeepRegionsOfInterest write SetKeepRegionsOfInterest;
    property WordFilter: TDetectionFilter read GetWordFilter write SetWordFilter;
    property KeepWordFilter: Boolean read GetKeepWordFilter write SetKeepWordFilter;
  end;
  
  TStartTextDetectionFilters = class
  strict private
    FRegionsOfInterest: TObjectList<TRegionOfInterest>;
    FKeepRegionsOfInterest: Boolean;
    FWordFilter: TDetectionFilter;
    FKeepWordFilter: Boolean;
    function GetRegionsOfInterest: TObjectList<TRegionOfInterest>;
    procedure SetRegionsOfInterest(const Value: TObjectList<TRegionOfInterest>);
    function GetKeepRegionsOfInterest: Boolean;
    procedure SetKeepRegionsOfInterest(const Value: Boolean);
    function GetWordFilter: TDetectionFilter;
    procedure SetWordFilter(const Value: TDetectionFilter);
    function GetKeepWordFilter: Boolean;
    procedure SetKeepWordFilter(const Value: Boolean);
  strict protected
    function Obj: TStartTextDetectionFilters;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetRegionsOfInterest: Boolean;
    function IsSetWordFilter: Boolean;
    property RegionsOfInterest: TObjectList<TRegionOfInterest> read GetRegionsOfInterest write SetRegionsOfInterest;
    property KeepRegionsOfInterest: Boolean read GetKeepRegionsOfInterest write SetKeepRegionsOfInterest;
    property WordFilter: TDetectionFilter read GetWordFilter write SetWordFilter;
    property KeepWordFilter: Boolean read GetKeepWordFilter write SetKeepWordFilter;
  end;
  
implementation

{ TStartTextDetectionFilters }

constructor TStartTextDetectionFilters.Create;
begin
  inherited;
  FRegionsOfInterest := TObjectList<TRegionOfInterest>.Create;
end;

destructor TStartTextDetectionFilters.Destroy;
begin
  WordFilter := nil;
  RegionsOfInterest := nil;
  inherited;
end;

function TStartTextDetectionFilters.Obj: TStartTextDetectionFilters;
begin
  Result := Self;
end;

function TStartTextDetectionFilters.GetRegionsOfInterest: TObjectList<TRegionOfInterest>;
begin
  Result := FRegionsOfInterest;
end;

procedure TStartTextDetectionFilters.SetRegionsOfInterest(const Value: TObjectList<TRegionOfInterest>);
begin
  if FRegionsOfInterest <> Value then
  begin
    if not KeepRegionsOfInterest then
      FRegionsOfInterest.Free;
    FRegionsOfInterest := Value;
  end;
end;

function TStartTextDetectionFilters.GetKeepRegionsOfInterest: Boolean;
begin
  Result := FKeepRegionsOfInterest;
end;

procedure TStartTextDetectionFilters.SetKeepRegionsOfInterest(const Value: Boolean);
begin
  FKeepRegionsOfInterest := Value;
end;

function TStartTextDetectionFilters.IsSetRegionsOfInterest: Boolean;
begin
  Result := (FRegionsOfInterest <> nil) and (FRegionsOfInterest.Count > 0);
end;

function TStartTextDetectionFilters.GetWordFilter: TDetectionFilter;
begin
  Result := FWordFilter;
end;

procedure TStartTextDetectionFilters.SetWordFilter(const Value: TDetectionFilter);
begin
  if FWordFilter <> Value then
  begin
    if not KeepWordFilter then
      FWordFilter.Free;
    FWordFilter := Value;
  end;
end;

function TStartTextDetectionFilters.GetKeepWordFilter: Boolean;
begin
  Result := FKeepWordFilter;
end;

procedure TStartTextDetectionFilters.SetKeepWordFilter(const Value: Boolean);
begin
  FKeepWordFilter := Value;
end;

function TStartTextDetectionFilters.IsSetWordFilter: Boolean;
begin
  Result := FWordFilter <> nil;
end;

end.
