unit AWS.Rekognition.Model.ProtectiveEquipmentBodyPart;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Rekognition.Model.EquipmentDetection, 
  AWS.Rekognition.Enums;

type
  TProtectiveEquipmentBodyPart = class;
  
  IProtectiveEquipmentBodyPart = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetEquipmentDetections: TObjectList<TEquipmentDetection>;
    procedure SetEquipmentDetections(const Value: TObjectList<TEquipmentDetection>);
    function GetKeepEquipmentDetections: Boolean;
    procedure SetKeepEquipmentDetections(const Value: Boolean);
    function GetName: TBodyPart;
    procedure SetName(const Value: TBodyPart);
    function Obj: TProtectiveEquipmentBodyPart;
    function IsSetConfidence: Boolean;
    function IsSetEquipmentDetections: Boolean;
    function IsSetName: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property EquipmentDetections: TObjectList<TEquipmentDetection> read GetEquipmentDetections write SetEquipmentDetections;
    property KeepEquipmentDetections: Boolean read GetKeepEquipmentDetections write SetKeepEquipmentDetections;
    property Name: TBodyPart read GetName write SetName;
  end;
  
  TProtectiveEquipmentBodyPart = class
  strict private
    FConfidence: Nullable<Double>;
    FEquipmentDetections: TObjectList<TEquipmentDetection>;
    FKeepEquipmentDetections: Boolean;
    FName: Nullable<TBodyPart>;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetEquipmentDetections: TObjectList<TEquipmentDetection>;
    procedure SetEquipmentDetections(const Value: TObjectList<TEquipmentDetection>);
    function GetKeepEquipmentDetections: Boolean;
    procedure SetKeepEquipmentDetections(const Value: Boolean);
    function GetName: TBodyPart;
    procedure SetName(const Value: TBodyPart);
  strict protected
    function Obj: TProtectiveEquipmentBodyPart;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetConfidence: Boolean;
    function IsSetEquipmentDetections: Boolean;
    function IsSetName: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property EquipmentDetections: TObjectList<TEquipmentDetection> read GetEquipmentDetections write SetEquipmentDetections;
    property KeepEquipmentDetections: Boolean read GetKeepEquipmentDetections write SetKeepEquipmentDetections;
    property Name: TBodyPart read GetName write SetName;
  end;
  
implementation

{ TProtectiveEquipmentBodyPart }

constructor TProtectiveEquipmentBodyPart.Create;
begin
  inherited;
  FEquipmentDetections := TObjectList<TEquipmentDetection>.Create;
end;

destructor TProtectiveEquipmentBodyPart.Destroy;
begin
  EquipmentDetections := nil;
  inherited;
end;

function TProtectiveEquipmentBodyPart.Obj: TProtectiveEquipmentBodyPart;
begin
  Result := Self;
end;

function TProtectiveEquipmentBodyPart.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TProtectiveEquipmentBodyPart.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TProtectiveEquipmentBodyPart.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TProtectiveEquipmentBodyPart.GetEquipmentDetections: TObjectList<TEquipmentDetection>;
begin
  Result := FEquipmentDetections;
end;

procedure TProtectiveEquipmentBodyPart.SetEquipmentDetections(const Value: TObjectList<TEquipmentDetection>);
begin
  if FEquipmentDetections <> Value then
  begin
    if not KeepEquipmentDetections then
      FEquipmentDetections.Free;
    FEquipmentDetections := Value;
  end;
end;

function TProtectiveEquipmentBodyPart.GetKeepEquipmentDetections: Boolean;
begin
  Result := FKeepEquipmentDetections;
end;

procedure TProtectiveEquipmentBodyPart.SetKeepEquipmentDetections(const Value: Boolean);
begin
  FKeepEquipmentDetections := Value;
end;

function TProtectiveEquipmentBodyPart.IsSetEquipmentDetections: Boolean;
begin
  Result := (FEquipmentDetections <> nil) and (FEquipmentDetections.Count > 0);
end;

function TProtectiveEquipmentBodyPart.GetName: TBodyPart;
begin
  Result := FName.ValueOrDefault;
end;

procedure TProtectiveEquipmentBodyPart.SetName(const Value: TBodyPart);
begin
  FName := Value;
end;

function TProtectiveEquipmentBodyPart.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
