unit AWS.Rekognition.Model.BlackFrame;

interface

uses
  AWS.Nullable;

type
  TBlackFrame = class;
  
  IBlackFrame = interface
    function GetMaxPixelThreshold: Double;
    procedure SetMaxPixelThreshold(const Value: Double);
    function GetMinCoveragePercentage: Double;
    procedure SetMinCoveragePercentage(const Value: Double);
    function Obj: TBlackFrame;
    function IsSetMaxPixelThreshold: Boolean;
    function IsSetMinCoveragePercentage: Boolean;
    property MaxPixelThreshold: Double read GetMaxPixelThreshold write SetMaxPixelThreshold;
    property MinCoveragePercentage: Double read GetMinCoveragePercentage write SetMinCoveragePercentage;
  end;
  
  TBlackFrame = class
  strict private
    FMaxPixelThreshold: Nullable<Double>;
    FMinCoveragePercentage: Nullable<Double>;
    function GetMaxPixelThreshold: Double;
    procedure SetMaxPixelThreshold(const Value: Double);
    function GetMinCoveragePercentage: Double;
    procedure SetMinCoveragePercentage(const Value: Double);
  strict protected
    function Obj: TBlackFrame;
  public
    function IsSetMaxPixelThreshold: Boolean;
    function IsSetMinCoveragePercentage: Boolean;
    property MaxPixelThreshold: Double read GetMaxPixelThreshold write SetMaxPixelThreshold;
    property MinCoveragePercentage: Double read GetMinCoveragePercentage write SetMinCoveragePercentage;
  end;
  
implementation

{ TBlackFrame }

function TBlackFrame.Obj: TBlackFrame;
begin
  Result := Self;
end;

function TBlackFrame.GetMaxPixelThreshold: Double;
begin
  Result := FMaxPixelThreshold.ValueOrDefault;
end;

procedure TBlackFrame.SetMaxPixelThreshold(const Value: Double);
begin
  FMaxPixelThreshold := Value;
end;

function TBlackFrame.IsSetMaxPixelThreshold: Boolean;
begin
  Result := FMaxPixelThreshold.HasValue;
end;

function TBlackFrame.GetMinCoveragePercentage: Double;
begin
  Result := FMinCoveragePercentage.ValueOrDefault;
end;

procedure TBlackFrame.SetMinCoveragePercentage(const Value: Double);
begin
  FMinCoveragePercentage := Value;
end;

function TBlackFrame.IsSetMinCoveragePercentage: Boolean;
begin
  Result := FMinCoveragePercentage.HasValue;
end;

end.
