unit AWS.Rekognition.Model.ProtectiveEquipmentSummarizationAttributes;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections;

type
  TProtectiveEquipmentSummarizationAttributes = class;
  
  IProtectiveEquipmentSummarizationAttributes = interface
    function GetMinConfidence: Double;
    procedure SetMinConfidence(const Value: Double);
    function GetRequiredEquipmentTypes: TList<string>;
    procedure SetRequiredEquipmentTypes(const Value: TList<string>);
    function GetKeepRequiredEquipmentTypes: Boolean;
    procedure SetKeepRequiredEquipmentTypes(const Value: Boolean);
    function Obj: TProtectiveEquipmentSummarizationAttributes;
    function IsSetMinConfidence: Boolean;
    function IsSetRequiredEquipmentTypes: Boolean;
    property MinConfidence: Double read GetMinConfidence write SetMinConfidence;
    property RequiredEquipmentTypes: TList<string> read GetRequiredEquipmentTypes write SetRequiredEquipmentTypes;
    property KeepRequiredEquipmentTypes: Boolean read GetKeepRequiredEquipmentTypes write SetKeepRequiredEquipmentTypes;
  end;
  
  TProtectiveEquipmentSummarizationAttributes = class
  strict private
    FMinConfidence: Nullable<Double>;
    FRequiredEquipmentTypes: TList<string>;
    FKeepRequiredEquipmentTypes: Boolean;
    function GetMinConfidence: Double;
    procedure SetMinConfidence(const Value: Double);
    function GetRequiredEquipmentTypes: TList<string>;
    procedure SetRequiredEquipmentTypes(const Value: TList<string>);
    function GetKeepRequiredEquipmentTypes: Boolean;
    procedure SetKeepRequiredEquipmentTypes(const Value: Boolean);
  strict protected
    function Obj: TProtectiveEquipmentSummarizationAttributes;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetMinConfidence: Boolean;
    function IsSetRequiredEquipmentTypes: Boolean;
    property MinConfidence: Double read GetMinConfidence write SetMinConfidence;
    property RequiredEquipmentTypes: TList<string> read GetRequiredEquipmentTypes write SetRequiredEquipmentTypes;
    property KeepRequiredEquipmentTypes: Boolean read GetKeepRequiredEquipmentTypes write SetKeepRequiredEquipmentTypes;
  end;
  
implementation

{ TProtectiveEquipmentSummarizationAttributes }

constructor TProtectiveEquipmentSummarizationAttributes.Create;
begin
  inherited;
  FRequiredEquipmentTypes := TList<string>.Create;
end;

destructor TProtectiveEquipmentSummarizationAttributes.Destroy;
begin
  RequiredEquipmentTypes := nil;
  inherited;
end;

function TProtectiveEquipmentSummarizationAttributes.Obj: TProtectiveEquipmentSummarizationAttributes;
begin
  Result := Self;
end;

function TProtectiveEquipmentSummarizationAttributes.GetMinConfidence: Double;
begin
  Result := FMinConfidence.ValueOrDefault;
end;

procedure TProtectiveEquipmentSummarizationAttributes.SetMinConfidence(const Value: Double);
begin
  FMinConfidence := Value;
end;

function TProtectiveEquipmentSummarizationAttributes.IsSetMinConfidence: Boolean;
begin
  Result := FMinConfidence.HasValue;
end;

function TProtectiveEquipmentSummarizationAttributes.GetRequiredEquipmentTypes: TList<string>;
begin
  Result := FRequiredEquipmentTypes;
end;

procedure TProtectiveEquipmentSummarizationAttributes.SetRequiredEquipmentTypes(const Value: TList<string>);
begin
  if FRequiredEquipmentTypes <> Value then
  begin
    if not KeepRequiredEquipmentTypes then
      FRequiredEquipmentTypes.Free;
    FRequiredEquipmentTypes := Value;
  end;
end;

function TProtectiveEquipmentSummarizationAttributes.GetKeepRequiredEquipmentTypes: Boolean;
begin
  Result := FKeepRequiredEquipmentTypes;
end;

procedure TProtectiveEquipmentSummarizationAttributes.SetKeepRequiredEquipmentTypes(const Value: Boolean);
begin
  FKeepRequiredEquipmentTypes := Value;
end;

function TProtectiveEquipmentSummarizationAttributes.IsSetRequiredEquipmentTypes: Boolean;
begin
  Result := (FRequiredEquipmentTypes <> nil) and (FRequiredEquipmentTypes.Count > 0);
end;

end.
