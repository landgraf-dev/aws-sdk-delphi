unit AWS.Rekognition.Model.DetectionFilter;

interface

uses
  AWS.Nullable;

type
  TDetectionFilter = class;
  
  IDetectionFilter = interface
    function GetMinBoundingBoxHeight: Double;
    procedure SetMinBoundingBoxHeight(const Value: Double);
    function GetMinBoundingBoxWidth: Double;
    procedure SetMinBoundingBoxWidth(const Value: Double);
    function GetMinConfidence: Double;
    procedure SetMinConfidence(const Value: Double);
    function Obj: TDetectionFilter;
    function IsSetMinBoundingBoxHeight: Boolean;
    function IsSetMinBoundingBoxWidth: Boolean;
    function IsSetMinConfidence: Boolean;
    property MinBoundingBoxHeight: Double read GetMinBoundingBoxHeight write SetMinBoundingBoxHeight;
    property MinBoundingBoxWidth: Double read GetMinBoundingBoxWidth write SetMinBoundingBoxWidth;
    property MinConfidence: Double read GetMinConfidence write SetMinConfidence;
  end;
  
  TDetectionFilter = class
  strict private
    FMinBoundingBoxHeight: Nullable<Double>;
    FMinBoundingBoxWidth: Nullable<Double>;
    FMinConfidence: Nullable<Double>;
    function GetMinBoundingBoxHeight: Double;
    procedure SetMinBoundingBoxHeight(const Value: Double);
    function GetMinBoundingBoxWidth: Double;
    procedure SetMinBoundingBoxWidth(const Value: Double);
    function GetMinConfidence: Double;
    procedure SetMinConfidence(const Value: Double);
  strict protected
    function Obj: TDetectionFilter;
  public
    function IsSetMinBoundingBoxHeight: Boolean;
    function IsSetMinBoundingBoxWidth: Boolean;
    function IsSetMinConfidence: Boolean;
    property MinBoundingBoxHeight: Double read GetMinBoundingBoxHeight write SetMinBoundingBoxHeight;
    property MinBoundingBoxWidth: Double read GetMinBoundingBoxWidth write SetMinBoundingBoxWidth;
    property MinConfidence: Double read GetMinConfidence write SetMinConfidence;
  end;
  
implementation

{ TDetectionFilter }

function TDetectionFilter.Obj: TDetectionFilter;
begin
  Result := Self;
end;

function TDetectionFilter.GetMinBoundingBoxHeight: Double;
begin
  Result := FMinBoundingBoxHeight.ValueOrDefault;
end;

procedure TDetectionFilter.SetMinBoundingBoxHeight(const Value: Double);
begin
  FMinBoundingBoxHeight := Value;
end;

function TDetectionFilter.IsSetMinBoundingBoxHeight: Boolean;
begin
  Result := FMinBoundingBoxHeight.HasValue;
end;

function TDetectionFilter.GetMinBoundingBoxWidth: Double;
begin
  Result := FMinBoundingBoxWidth.ValueOrDefault;
end;

procedure TDetectionFilter.SetMinBoundingBoxWidth(const Value: Double);
begin
  FMinBoundingBoxWidth := Value;
end;

function TDetectionFilter.IsSetMinBoundingBoxWidth: Boolean;
begin
  Result := FMinBoundingBoxWidth.HasValue;
end;

function TDetectionFilter.GetMinConfidence: Double;
begin
  Result := FMinConfidence.ValueOrDefault;
end;

procedure TDetectionFilter.SetMinConfidence(const Value: Double);
begin
  FMinConfidence := Value;
end;

function TDetectionFilter.IsSetMinConfidence: Boolean;
begin
  Result := FMinConfidence.HasValue;
end;

end.
