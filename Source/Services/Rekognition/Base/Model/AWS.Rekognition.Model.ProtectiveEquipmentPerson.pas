unit AWS.Rekognition.Model.ProtectiveEquipmentPerson;

interface

uses
  System.Generics.Collections, 
  AWS.Rekognition.Model.ProtectiveEquipmentBodyPart, 
  AWS.Rekognition.Model.BoundingBox, 
  AWS.Nullable;

type
  TProtectiveEquipmentPerson = class;
  
  IProtectiveEquipmentPerson = interface
    function GetBodyParts: TObjectList<TProtectiveEquipmentBodyPart>;
    procedure SetBodyParts(const Value: TObjectList<TProtectiveEquipmentBodyPart>);
    function GetKeepBodyParts: Boolean;
    procedure SetKeepBodyParts(const Value: Boolean);
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetId: Integer;
    procedure SetId(const Value: Integer);
    function Obj: TProtectiveEquipmentPerson;
    function IsSetBodyParts: Boolean;
    function IsSetBoundingBox: Boolean;
    function IsSetConfidence: Boolean;
    function IsSetId: Boolean;
    property BodyParts: TObjectList<TProtectiveEquipmentBodyPart> read GetBodyParts write SetBodyParts;
    property KeepBodyParts: Boolean read GetKeepBodyParts write SetKeepBodyParts;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Id: Integer read GetId write SetId;
  end;
  
  TProtectiveEquipmentPerson = class
  strict private
    FBodyParts: TObjectList<TProtectiveEquipmentBodyPart>;
    FKeepBodyParts: Boolean;
    FBoundingBox: TBoundingBox;
    FKeepBoundingBox: Boolean;
    FConfidence: Nullable<Double>;
    FId: Nullable<Integer>;
    function GetBodyParts: TObjectList<TProtectiveEquipmentBodyPart>;
    procedure SetBodyParts(const Value: TObjectList<TProtectiveEquipmentBodyPart>);
    function GetKeepBodyParts: Boolean;
    procedure SetKeepBodyParts(const Value: Boolean);
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetId: Integer;
    procedure SetId(const Value: Integer);
  strict protected
    function Obj: TProtectiveEquipmentPerson;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBodyParts: Boolean;
    function IsSetBoundingBox: Boolean;
    function IsSetConfidence: Boolean;
    function IsSetId: Boolean;
    property BodyParts: TObjectList<TProtectiveEquipmentBodyPart> read GetBodyParts write SetBodyParts;
    property KeepBodyParts: Boolean read GetKeepBodyParts write SetKeepBodyParts;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Id: Integer read GetId write SetId;
  end;
  
implementation

{ TProtectiveEquipmentPerson }

constructor TProtectiveEquipmentPerson.Create;
begin
  inherited;
  FBodyParts := TObjectList<TProtectiveEquipmentBodyPart>.Create;
end;

destructor TProtectiveEquipmentPerson.Destroy;
begin
  BoundingBox := nil;
  BodyParts := nil;
  inherited;
end;

function TProtectiveEquipmentPerson.Obj: TProtectiveEquipmentPerson;
begin
  Result := Self;
end;

function TProtectiveEquipmentPerson.GetBodyParts: TObjectList<TProtectiveEquipmentBodyPart>;
begin
  Result := FBodyParts;
end;

procedure TProtectiveEquipmentPerson.SetBodyParts(const Value: TObjectList<TProtectiveEquipmentBodyPart>);
begin
  if FBodyParts <> Value then
  begin
    if not KeepBodyParts then
      FBodyParts.Free;
    FBodyParts := Value;
  end;
end;

function TProtectiveEquipmentPerson.GetKeepBodyParts: Boolean;
begin
  Result := FKeepBodyParts;
end;

procedure TProtectiveEquipmentPerson.SetKeepBodyParts(const Value: Boolean);
begin
  FKeepBodyParts := Value;
end;

function TProtectiveEquipmentPerson.IsSetBodyParts: Boolean;
begin
  Result := (FBodyParts <> nil) and (FBodyParts.Count > 0);
end;

function TProtectiveEquipmentPerson.GetBoundingBox: TBoundingBox;
begin
  Result := FBoundingBox;
end;

procedure TProtectiveEquipmentPerson.SetBoundingBox(const Value: TBoundingBox);
begin
  if FBoundingBox <> Value then
  begin
    if not KeepBoundingBox then
      FBoundingBox.Free;
    FBoundingBox := Value;
  end;
end;

function TProtectiveEquipmentPerson.GetKeepBoundingBox: Boolean;
begin
  Result := FKeepBoundingBox;
end;

procedure TProtectiveEquipmentPerson.SetKeepBoundingBox(const Value: Boolean);
begin
  FKeepBoundingBox := Value;
end;

function TProtectiveEquipmentPerson.IsSetBoundingBox: Boolean;
begin
  Result := FBoundingBox <> nil;
end;

function TProtectiveEquipmentPerson.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TProtectiveEquipmentPerson.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TProtectiveEquipmentPerson.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TProtectiveEquipmentPerson.GetId: Integer;
begin
  Result := FId.ValueOrDefault;
end;

procedure TProtectiveEquipmentPerson.SetId(const Value: Integer);
begin
  FId := Value;
end;

function TProtectiveEquipmentPerson.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

end.
