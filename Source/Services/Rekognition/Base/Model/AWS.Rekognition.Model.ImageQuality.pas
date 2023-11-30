unit AWS.Rekognition.Model.ImageQuality;

interface

uses
  AWS.Nullable;

type
  TImageQuality = class;
  
  IImageQuality = interface
    function GetBrightness: Double;
    procedure SetBrightness(const Value: Double);
    function GetSharpness: Double;
    procedure SetSharpness(const Value: Double);
    function Obj: TImageQuality;
    function IsSetBrightness: Boolean;
    function IsSetSharpness: Boolean;
    property Brightness: Double read GetBrightness write SetBrightness;
    property Sharpness: Double read GetSharpness write SetSharpness;
  end;
  
  TImageQuality = class
  strict private
    FBrightness: Nullable<Double>;
    FSharpness: Nullable<Double>;
    function GetBrightness: Double;
    procedure SetBrightness(const Value: Double);
    function GetSharpness: Double;
    procedure SetSharpness(const Value: Double);
  strict protected
    function Obj: TImageQuality;
  public
    function IsSetBrightness: Boolean;
    function IsSetSharpness: Boolean;
    property Brightness: Double read GetBrightness write SetBrightness;
    property Sharpness: Double read GetSharpness write SetSharpness;
  end;
  
implementation

{ TImageQuality }

function TImageQuality.Obj: TImageQuality;
begin
  Result := Self;
end;

function TImageQuality.GetBrightness: Double;
begin
  Result := FBrightness.ValueOrDefault;
end;

procedure TImageQuality.SetBrightness(const Value: Double);
begin
  FBrightness := Value;
end;

function TImageQuality.IsSetBrightness: Boolean;
begin
  Result := FBrightness.HasValue;
end;

function TImageQuality.GetSharpness: Double;
begin
  Result := FSharpness.ValueOrDefault;
end;

procedure TImageQuality.SetSharpness(const Value: Double);
begin
  FSharpness := Value;
end;

function TImageQuality.IsSetSharpness: Boolean;
begin
  Result := FSharpness.HasValue;
end;

end.
