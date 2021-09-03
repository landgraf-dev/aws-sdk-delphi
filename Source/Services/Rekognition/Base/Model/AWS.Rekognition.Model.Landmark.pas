unit AWS.Rekognition.Model.Landmark;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Enums;

type
  TLandmark = class;
  
  ILandmark = interface
    function GetType: TLandmarkType;
    procedure SetType(const Value: TLandmarkType);
    function GetX: Double;
    procedure SetX(const Value: Double);
    function GetY: Double;
    procedure SetY(const Value: Double);
    function Obj: TLandmark;
    function IsSetType: Boolean;
    function IsSetX: Boolean;
    function IsSetY: Boolean;
    property &Type: TLandmarkType read GetType write SetType;
    property X: Double read GetX write SetX;
    property Y: Double read GetY write SetY;
  end;
  
  TLandmark = class
  strict private
    FType: Nullable<TLandmarkType>;
    FX: Nullable<Double>;
    FY: Nullable<Double>;
    function GetType: TLandmarkType;
    procedure SetType(const Value: TLandmarkType);
    function GetX: Double;
    procedure SetX(const Value: Double);
    function GetY: Double;
    procedure SetY(const Value: Double);
  strict protected
    function Obj: TLandmark;
  public
    function IsSetType: Boolean;
    function IsSetX: Boolean;
    function IsSetY: Boolean;
    property &Type: TLandmarkType read GetType write SetType;
    property X: Double read GetX write SetX;
    property Y: Double read GetY write SetY;
  end;
  
implementation

{ TLandmark }

function TLandmark.Obj: TLandmark;
begin
  Result := Self;
end;

function TLandmark.GetType: TLandmarkType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TLandmark.SetType(const Value: TLandmarkType);
begin
  FType := Value;
end;

function TLandmark.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

function TLandmark.GetX: Double;
begin
  Result := FX.ValueOrDefault;
end;

procedure TLandmark.SetX(const Value: Double);
begin
  FX := Value;
end;

function TLandmark.IsSetX: Boolean;
begin
  Result := FX.HasValue;
end;

function TLandmark.GetY: Double;
begin
  Result := FY.ValueOrDefault;
end;

procedure TLandmark.SetY(const Value: Double);
begin
  FY := Value;
end;

function TLandmark.IsSetY: Boolean;
begin
  Result := FY.HasValue;
end;

end.
