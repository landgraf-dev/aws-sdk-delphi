unit AWS.Rekognition.Model.StartTechnicalCueDetectionFilter;

interface

uses
  Bcl.Types.Nullable;

type
  TStartTechnicalCueDetectionFilter = class;
  
  IStartTechnicalCueDetectionFilter = interface
    function GetMinSegmentConfidence: Double;
    procedure SetMinSegmentConfidence(const Value: Double);
    function Obj: TStartTechnicalCueDetectionFilter;
    function IsSetMinSegmentConfidence: Boolean;
    property MinSegmentConfidence: Double read GetMinSegmentConfidence write SetMinSegmentConfidence;
  end;
  
  TStartTechnicalCueDetectionFilter = class
  strict private
    FMinSegmentConfidence: Nullable<Double>;
    function GetMinSegmentConfidence: Double;
    procedure SetMinSegmentConfidence(const Value: Double);
  strict protected
    function Obj: TStartTechnicalCueDetectionFilter;
  public
    function IsSetMinSegmentConfidence: Boolean;
    property MinSegmentConfidence: Double read GetMinSegmentConfidence write SetMinSegmentConfidence;
  end;
  
implementation

{ TStartTechnicalCueDetectionFilter }

function TStartTechnicalCueDetectionFilter.Obj: TStartTechnicalCueDetectionFilter;
begin
  Result := Self;
end;

function TStartTechnicalCueDetectionFilter.GetMinSegmentConfidence: Double;
begin
  Result := FMinSegmentConfidence.ValueOrDefault;
end;

procedure TStartTechnicalCueDetectionFilter.SetMinSegmentConfidence(const Value: Double);
begin
  FMinSegmentConfidence := Value;
end;

function TStartTechnicalCueDetectionFilter.IsSetMinSegmentConfidence: Boolean;
begin
  Result := FMinSegmentConfidence.HasValue;
end;

end.
