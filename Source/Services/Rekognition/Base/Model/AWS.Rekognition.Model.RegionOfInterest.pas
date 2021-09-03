unit AWS.Rekognition.Model.RegionOfInterest;

interface

uses
  AWS.Rekognition.Model.BoundingBox;

type
  TRegionOfInterest = class;
  
  IRegionOfInterest = interface
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function Obj: TRegionOfInterest;
    function IsSetBoundingBox: Boolean;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
  end;
  
  TRegionOfInterest = class
  strict private
    FBoundingBox: TBoundingBox;
    FKeepBoundingBox: Boolean;
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
  strict protected
    function Obj: TRegionOfInterest;
  public
    destructor Destroy; override;
    function IsSetBoundingBox: Boolean;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
  end;
  
implementation

{ TRegionOfInterest }

destructor TRegionOfInterest.Destroy;
begin
  BoundingBox := nil;
  inherited;
end;

function TRegionOfInterest.Obj: TRegionOfInterest;
begin
  Result := Self;
end;

function TRegionOfInterest.GetBoundingBox: TBoundingBox;
begin
  Result := FBoundingBox;
end;

procedure TRegionOfInterest.SetBoundingBox(const Value: TBoundingBox);
begin
  if FBoundingBox <> Value then
  begin
    if not KeepBoundingBox then
      FBoundingBox.Free;
    FBoundingBox := Value;
  end;
end;

function TRegionOfInterest.GetKeepBoundingBox: Boolean;
begin
  Result := FKeepBoundingBox;
end;

procedure TRegionOfInterest.SetKeepBoundingBox(const Value: Boolean);
begin
  FKeepBoundingBox := Value;
end;

function TRegionOfInterest.IsSetBoundingBox: Boolean;
begin
  Result := FBoundingBox <> nil;
end;

end.
