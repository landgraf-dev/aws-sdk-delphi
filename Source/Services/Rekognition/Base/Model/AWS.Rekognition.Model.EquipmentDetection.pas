unit AWS.Rekognition.Model.EquipmentDetection;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.BoundingBox, 
  AWS.Rekognition.Model.CoversBodyPart, 
  AWS.Rekognition.Enums;

type
  TEquipmentDetection = class;
  
  IEquipmentDetection = interface
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetCoversBodyPart: TCoversBodyPart;
    procedure SetCoversBodyPart(const Value: TCoversBodyPart);
    function GetKeepCoversBodyPart: Boolean;
    procedure SetKeepCoversBodyPart(const Value: Boolean);
    function GetType: TProtectiveEquipmentType;
    procedure SetType(const Value: TProtectiveEquipmentType);
    function Obj: TEquipmentDetection;
    function IsSetBoundingBox: Boolean;
    function IsSetConfidence: Boolean;
    function IsSetCoversBodyPart: Boolean;
    function IsSetType: Boolean;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Confidence: Double read GetConfidence write SetConfidence;
    property CoversBodyPart: TCoversBodyPart read GetCoversBodyPart write SetCoversBodyPart;
    property KeepCoversBodyPart: Boolean read GetKeepCoversBodyPart write SetKeepCoversBodyPart;
    property &Type: TProtectiveEquipmentType read GetType write SetType;
  end;
  
  TEquipmentDetection = class
  strict private
    FBoundingBox: TBoundingBox;
    FKeepBoundingBox: Boolean;
    FConfidence: Nullable<Double>;
    FCoversBodyPart: TCoversBodyPart;
    FKeepCoversBodyPart: Boolean;
    FType: Nullable<TProtectiveEquipmentType>;
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetCoversBodyPart: TCoversBodyPart;
    procedure SetCoversBodyPart(const Value: TCoversBodyPart);
    function GetKeepCoversBodyPart: Boolean;
    procedure SetKeepCoversBodyPart(const Value: Boolean);
    function GetType: TProtectiveEquipmentType;
    procedure SetType(const Value: TProtectiveEquipmentType);
  strict protected
    function Obj: TEquipmentDetection;
  public
    destructor Destroy; override;
    function IsSetBoundingBox: Boolean;
    function IsSetConfidence: Boolean;
    function IsSetCoversBodyPart: Boolean;
    function IsSetType: Boolean;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Confidence: Double read GetConfidence write SetConfidence;
    property CoversBodyPart: TCoversBodyPart read GetCoversBodyPart write SetCoversBodyPart;
    property KeepCoversBodyPart: Boolean read GetKeepCoversBodyPart write SetKeepCoversBodyPart;
    property &Type: TProtectiveEquipmentType read GetType write SetType;
  end;
  
implementation

{ TEquipmentDetection }

destructor TEquipmentDetection.Destroy;
begin
  CoversBodyPart := nil;
  BoundingBox := nil;
  inherited;
end;

function TEquipmentDetection.Obj: TEquipmentDetection;
begin
  Result := Self;
end;

function TEquipmentDetection.GetBoundingBox: TBoundingBox;
begin
  Result := FBoundingBox;
end;

procedure TEquipmentDetection.SetBoundingBox(const Value: TBoundingBox);
begin
  if FBoundingBox <> Value then
  begin
    if not KeepBoundingBox then
      FBoundingBox.Free;
    FBoundingBox := Value;
  end;
end;

function TEquipmentDetection.GetKeepBoundingBox: Boolean;
begin
  Result := FKeepBoundingBox;
end;

procedure TEquipmentDetection.SetKeepBoundingBox(const Value: Boolean);
begin
  FKeepBoundingBox := Value;
end;

function TEquipmentDetection.IsSetBoundingBox: Boolean;
begin
  Result := FBoundingBox <> nil;
end;

function TEquipmentDetection.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TEquipmentDetection.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TEquipmentDetection.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TEquipmentDetection.GetCoversBodyPart: TCoversBodyPart;
begin
  Result := FCoversBodyPart;
end;

procedure TEquipmentDetection.SetCoversBodyPart(const Value: TCoversBodyPart);
begin
  if FCoversBodyPart <> Value then
  begin
    if not KeepCoversBodyPart then
      FCoversBodyPart.Free;
    FCoversBodyPart := Value;
  end;
end;

function TEquipmentDetection.GetKeepCoversBodyPart: Boolean;
begin
  Result := FKeepCoversBodyPart;
end;

procedure TEquipmentDetection.SetKeepCoversBodyPart(const Value: Boolean);
begin
  FKeepCoversBodyPart := Value;
end;

function TEquipmentDetection.IsSetCoversBodyPart: Boolean;
begin
  Result := FCoversBodyPart <> nil;
end;

function TEquipmentDetection.GetType: TProtectiveEquipmentType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TEquipmentDetection.SetType(const Value: TProtectiveEquipmentType);
begin
  FType := Value;
end;

function TEquipmentDetection.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

end.
