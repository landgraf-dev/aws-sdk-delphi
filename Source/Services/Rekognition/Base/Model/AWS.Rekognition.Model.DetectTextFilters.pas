unit AWS.Rekognition.Model.DetectTextFilters;

interface

uses
  System.Generics.Collections, 
  AWS.Rekognition.Model.RegionOfInterest, 
  AWS.Rekognition.Model.DetectionFilter;

type
  TDetectTextFilters = class;
  
  IDetectTextFilters = interface
    function GetRegionsOfInterest: TObjectList<TRegionOfInterest>;
    procedure SetRegionsOfInterest(const Value: TObjectList<TRegionOfInterest>);
    function GetKeepRegionsOfInterest: Boolean;
    procedure SetKeepRegionsOfInterest(const Value: Boolean);
    function GetWordFilter: TDetectionFilter;
    procedure SetWordFilter(const Value: TDetectionFilter);
    function GetKeepWordFilter: Boolean;
    procedure SetKeepWordFilter(const Value: Boolean);
    function Obj: TDetectTextFilters;
    function IsSetRegionsOfInterest: Boolean;
    function IsSetWordFilter: Boolean;
    property RegionsOfInterest: TObjectList<TRegionOfInterest> read GetRegionsOfInterest write SetRegionsOfInterest;
    property KeepRegionsOfInterest: Boolean read GetKeepRegionsOfInterest write SetKeepRegionsOfInterest;
    property WordFilter: TDetectionFilter read GetWordFilter write SetWordFilter;
    property KeepWordFilter: Boolean read GetKeepWordFilter write SetKeepWordFilter;
  end;
  
  TDetectTextFilters = class
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
    function Obj: TDetectTextFilters;
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

{ TDetectTextFilters }

constructor TDetectTextFilters.Create;
begin
  inherited;
  FRegionsOfInterest := TObjectList<TRegionOfInterest>.Create;
end;

destructor TDetectTextFilters.Destroy;
begin
  WordFilter := nil;
  RegionsOfInterest := nil;
  inherited;
end;

function TDetectTextFilters.Obj: TDetectTextFilters;
begin
  Result := Self;
end;

function TDetectTextFilters.GetRegionsOfInterest: TObjectList<TRegionOfInterest>;
begin
  Result := FRegionsOfInterest;
end;

procedure TDetectTextFilters.SetRegionsOfInterest(const Value: TObjectList<TRegionOfInterest>);
begin
  if FRegionsOfInterest <> Value then
  begin
    if not KeepRegionsOfInterest then
      FRegionsOfInterest.Free;
    FRegionsOfInterest := Value;
  end;
end;

function TDetectTextFilters.GetKeepRegionsOfInterest: Boolean;
begin
  Result := FKeepRegionsOfInterest;
end;

procedure TDetectTextFilters.SetKeepRegionsOfInterest(const Value: Boolean);
begin
  FKeepRegionsOfInterest := Value;
end;

function TDetectTextFilters.IsSetRegionsOfInterest: Boolean;
begin
  Result := (FRegionsOfInterest <> nil) and (FRegionsOfInterest.Count > 0);
end;

function TDetectTextFilters.GetWordFilter: TDetectionFilter;
begin
  Result := FWordFilter;
end;

procedure TDetectTextFilters.SetWordFilter(const Value: TDetectionFilter);
begin
  if FWordFilter <> Value then
  begin
    if not KeepWordFilter then
      FWordFilter.Free;
    FWordFilter := Value;
  end;
end;

function TDetectTextFilters.GetKeepWordFilter: Boolean;
begin
  Result := FKeepWordFilter;
end;

procedure TDetectTextFilters.SetKeepWordFilter(const Value: Boolean);
begin
  FKeepWordFilter := Value;
end;

function TDetectTextFilters.IsSetWordFilter: Boolean;
begin
  Result := FWordFilter <> nil;
end;

end.
