unit AWS.Rekognition.Model.StartShotDetectionFilter;

interface

uses
  Bcl.Types.Nullable;

type
  TStartShotDetectionFilter = class;
  
  IStartShotDetectionFilter = interface
    function GetMinSegmentConfidence: Double;
    procedure SetMinSegmentConfidence(const Value: Double);
    function Obj: TStartShotDetectionFilter;
    function IsSetMinSegmentConfidence: Boolean;
    property MinSegmentConfidence: Double read GetMinSegmentConfidence write SetMinSegmentConfidence;
  end;
  
  TStartShotDetectionFilter = class
  strict private
    FMinSegmentConfidence: Nullable<Double>;
    function GetMinSegmentConfidence: Double;
    procedure SetMinSegmentConfidence(const Value: Double);
  strict protected
    function Obj: TStartShotDetectionFilter;
  public
    function IsSetMinSegmentConfidence: Boolean;
    property MinSegmentConfidence: Double read GetMinSegmentConfidence write SetMinSegmentConfidence;
  end;
  
implementation

{ TStartShotDetectionFilter }

function TStartShotDetectionFilter.Obj: TStartShotDetectionFilter;
begin
  Result := Self;
end;

function TStartShotDetectionFilter.GetMinSegmentConfidence: Double;
begin
  Result := FMinSegmentConfidence.ValueOrDefault;
end;

procedure TStartShotDetectionFilter.SetMinSegmentConfidence(const Value: Double);
begin
  FMinSegmentConfidence := Value;
end;

function TStartShotDetectionFilter.IsSetMinSegmentConfidence: Boolean;
begin
  Result := FMinSegmentConfidence.HasValue;
end;

end.
