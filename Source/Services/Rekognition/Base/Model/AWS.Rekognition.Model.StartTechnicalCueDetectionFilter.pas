unit AWS.Rekognition.Model.StartTechnicalCueDetectionFilter;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.BlackFrame;

type
  TStartTechnicalCueDetectionFilter = class;
  
  IStartTechnicalCueDetectionFilter = interface
    function GetBlackFrame: TBlackFrame;
    procedure SetBlackFrame(const Value: TBlackFrame);
    function GetKeepBlackFrame: Boolean;
    procedure SetKeepBlackFrame(const Value: Boolean);
    function GetMinSegmentConfidence: Double;
    procedure SetMinSegmentConfidence(const Value: Double);
    function Obj: TStartTechnicalCueDetectionFilter;
    function IsSetBlackFrame: Boolean;
    function IsSetMinSegmentConfidence: Boolean;
    property BlackFrame: TBlackFrame read GetBlackFrame write SetBlackFrame;
    property KeepBlackFrame: Boolean read GetKeepBlackFrame write SetKeepBlackFrame;
    property MinSegmentConfidence: Double read GetMinSegmentConfidence write SetMinSegmentConfidence;
  end;
  
  TStartTechnicalCueDetectionFilter = class
  strict private
    FBlackFrame: TBlackFrame;
    FKeepBlackFrame: Boolean;
    FMinSegmentConfidence: Nullable<Double>;
    function GetBlackFrame: TBlackFrame;
    procedure SetBlackFrame(const Value: TBlackFrame);
    function GetKeepBlackFrame: Boolean;
    procedure SetKeepBlackFrame(const Value: Boolean);
    function GetMinSegmentConfidence: Double;
    procedure SetMinSegmentConfidence(const Value: Double);
  strict protected
    function Obj: TStartTechnicalCueDetectionFilter;
  public
    destructor Destroy; override;
    function IsSetBlackFrame: Boolean;
    function IsSetMinSegmentConfidence: Boolean;
    property BlackFrame: TBlackFrame read GetBlackFrame write SetBlackFrame;
    property KeepBlackFrame: Boolean read GetKeepBlackFrame write SetKeepBlackFrame;
    property MinSegmentConfidence: Double read GetMinSegmentConfidence write SetMinSegmentConfidence;
  end;
  
implementation

{ TStartTechnicalCueDetectionFilter }

destructor TStartTechnicalCueDetectionFilter.Destroy;
begin
  BlackFrame := nil;
  inherited;
end;

function TStartTechnicalCueDetectionFilter.Obj: TStartTechnicalCueDetectionFilter;
begin
  Result := Self;
end;

function TStartTechnicalCueDetectionFilter.GetBlackFrame: TBlackFrame;
begin
  Result := FBlackFrame;
end;

procedure TStartTechnicalCueDetectionFilter.SetBlackFrame(const Value: TBlackFrame);
begin
  if FBlackFrame <> Value then
  begin
    if not KeepBlackFrame then
      FBlackFrame.Free;
    FBlackFrame := Value;
  end;
end;

function TStartTechnicalCueDetectionFilter.GetKeepBlackFrame: Boolean;
begin
  Result := FKeepBlackFrame;
end;

procedure TStartTechnicalCueDetectionFilter.SetKeepBlackFrame(const Value: Boolean);
begin
  FKeepBlackFrame := Value;
end;

function TStartTechnicalCueDetectionFilter.IsSetBlackFrame: Boolean;
begin
  Result := FBlackFrame <> nil;
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
