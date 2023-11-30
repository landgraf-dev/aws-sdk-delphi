unit AWS.Rekognition.Model.Pose;

interface

uses
  AWS.Nullable;

type
  TPose = class;
  
  IPose = interface
    function GetPitch: Double;
    procedure SetPitch(const Value: Double);
    function GetRoll: Double;
    procedure SetRoll(const Value: Double);
    function GetYaw: Double;
    procedure SetYaw(const Value: Double);
    function Obj: TPose;
    function IsSetPitch: Boolean;
    function IsSetRoll: Boolean;
    function IsSetYaw: Boolean;
    property Pitch: Double read GetPitch write SetPitch;
    property Roll: Double read GetRoll write SetRoll;
    property Yaw: Double read GetYaw write SetYaw;
  end;
  
  TPose = class
  strict private
    FPitch: Nullable<Double>;
    FRoll: Nullable<Double>;
    FYaw: Nullable<Double>;
    function GetPitch: Double;
    procedure SetPitch(const Value: Double);
    function GetRoll: Double;
    procedure SetRoll(const Value: Double);
    function GetYaw: Double;
    procedure SetYaw(const Value: Double);
  strict protected
    function Obj: TPose;
  public
    function IsSetPitch: Boolean;
    function IsSetRoll: Boolean;
    function IsSetYaw: Boolean;
    property Pitch: Double read GetPitch write SetPitch;
    property Roll: Double read GetRoll write SetRoll;
    property Yaw: Double read GetYaw write SetYaw;
  end;
  
implementation

{ TPose }

function TPose.Obj: TPose;
begin
  Result := Self;
end;

function TPose.GetPitch: Double;
begin
  Result := FPitch.ValueOrDefault;
end;

procedure TPose.SetPitch(const Value: Double);
begin
  FPitch := Value;
end;

function TPose.IsSetPitch: Boolean;
begin
  Result := FPitch.HasValue;
end;

function TPose.GetRoll: Double;
begin
  Result := FRoll.ValueOrDefault;
end;

procedure TPose.SetRoll(const Value: Double);
begin
  FRoll := Value;
end;

function TPose.IsSetRoll: Boolean;
begin
  Result := FRoll.HasValue;
end;

function TPose.GetYaw: Double;
begin
  Result := FYaw.ValueOrDefault;
end;

procedure TPose.SetYaw(const Value: Double);
begin
  FYaw := Value;
end;

function TPose.IsSetYaw: Boolean;
begin
  Result := FYaw.HasValue;
end;

end.
