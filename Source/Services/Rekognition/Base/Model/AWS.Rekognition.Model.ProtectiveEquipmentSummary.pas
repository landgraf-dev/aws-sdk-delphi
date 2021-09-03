unit AWS.Rekognition.Model.ProtectiveEquipmentSummary;

interface

uses
  System.Generics.Collections;

type
  TProtectiveEquipmentSummary = class;
  
  IProtectiveEquipmentSummary = interface
    function GetPersonsIndeterminate: TList<Integer>;
    procedure SetPersonsIndeterminate(const Value: TList<Integer>);
    function GetKeepPersonsIndeterminate: Boolean;
    procedure SetKeepPersonsIndeterminate(const Value: Boolean);
    function GetPersonsWithRequiredEquipment: TList<Integer>;
    procedure SetPersonsWithRequiredEquipment(const Value: TList<Integer>);
    function GetKeepPersonsWithRequiredEquipment: Boolean;
    procedure SetKeepPersonsWithRequiredEquipment(const Value: Boolean);
    function GetPersonsWithoutRequiredEquipment: TList<Integer>;
    procedure SetPersonsWithoutRequiredEquipment(const Value: TList<Integer>);
    function GetKeepPersonsWithoutRequiredEquipment: Boolean;
    procedure SetKeepPersonsWithoutRequiredEquipment(const Value: Boolean);
    function Obj: TProtectiveEquipmentSummary;
    function IsSetPersonsIndeterminate: Boolean;
    function IsSetPersonsWithRequiredEquipment: Boolean;
    function IsSetPersonsWithoutRequiredEquipment: Boolean;
    property PersonsIndeterminate: TList<Integer> read GetPersonsIndeterminate write SetPersonsIndeterminate;
    property KeepPersonsIndeterminate: Boolean read GetKeepPersonsIndeterminate write SetKeepPersonsIndeterminate;
    property PersonsWithRequiredEquipment: TList<Integer> read GetPersonsWithRequiredEquipment write SetPersonsWithRequiredEquipment;
    property KeepPersonsWithRequiredEquipment: Boolean read GetKeepPersonsWithRequiredEquipment write SetKeepPersonsWithRequiredEquipment;
    property PersonsWithoutRequiredEquipment: TList<Integer> read GetPersonsWithoutRequiredEquipment write SetPersonsWithoutRequiredEquipment;
    property KeepPersonsWithoutRequiredEquipment: Boolean read GetKeepPersonsWithoutRequiredEquipment write SetKeepPersonsWithoutRequiredEquipment;
  end;
  
  TProtectiveEquipmentSummary = class
  strict private
    FPersonsIndeterminate: TList<Integer>;
    FKeepPersonsIndeterminate: Boolean;
    FPersonsWithRequiredEquipment: TList<Integer>;
    FKeepPersonsWithRequiredEquipment: Boolean;
    FPersonsWithoutRequiredEquipment: TList<Integer>;
    FKeepPersonsWithoutRequiredEquipment: Boolean;
    function GetPersonsIndeterminate: TList<Integer>;
    procedure SetPersonsIndeterminate(const Value: TList<Integer>);
    function GetKeepPersonsIndeterminate: Boolean;
    procedure SetKeepPersonsIndeterminate(const Value: Boolean);
    function GetPersonsWithRequiredEquipment: TList<Integer>;
    procedure SetPersonsWithRequiredEquipment(const Value: TList<Integer>);
    function GetKeepPersonsWithRequiredEquipment: Boolean;
    procedure SetKeepPersonsWithRequiredEquipment(const Value: Boolean);
    function GetPersonsWithoutRequiredEquipment: TList<Integer>;
    procedure SetPersonsWithoutRequiredEquipment(const Value: TList<Integer>);
    function GetKeepPersonsWithoutRequiredEquipment: Boolean;
    procedure SetKeepPersonsWithoutRequiredEquipment(const Value: Boolean);
  strict protected
    function Obj: TProtectiveEquipmentSummary;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetPersonsIndeterminate: Boolean;
    function IsSetPersonsWithRequiredEquipment: Boolean;
    function IsSetPersonsWithoutRequiredEquipment: Boolean;
    property PersonsIndeterminate: TList<Integer> read GetPersonsIndeterminate write SetPersonsIndeterminate;
    property KeepPersonsIndeterminate: Boolean read GetKeepPersonsIndeterminate write SetKeepPersonsIndeterminate;
    property PersonsWithRequiredEquipment: TList<Integer> read GetPersonsWithRequiredEquipment write SetPersonsWithRequiredEquipment;
    property KeepPersonsWithRequiredEquipment: Boolean read GetKeepPersonsWithRequiredEquipment write SetKeepPersonsWithRequiredEquipment;
    property PersonsWithoutRequiredEquipment: TList<Integer> read GetPersonsWithoutRequiredEquipment write SetPersonsWithoutRequiredEquipment;
    property KeepPersonsWithoutRequiredEquipment: Boolean read GetKeepPersonsWithoutRequiredEquipment write SetKeepPersonsWithoutRequiredEquipment;
  end;
  
implementation

{ TProtectiveEquipmentSummary }

constructor TProtectiveEquipmentSummary.Create;
begin
  inherited;
  FPersonsIndeterminate := TList<Integer>.Create;
  FPersonsWithRequiredEquipment := TList<Integer>.Create;
  FPersonsWithoutRequiredEquipment := TList<Integer>.Create;
end;

destructor TProtectiveEquipmentSummary.Destroy;
begin
  PersonsWithoutRequiredEquipment := nil;
  PersonsWithRequiredEquipment := nil;
  PersonsIndeterminate := nil;
  inherited;
end;

function TProtectiveEquipmentSummary.Obj: TProtectiveEquipmentSummary;
begin
  Result := Self;
end;

function TProtectiveEquipmentSummary.GetPersonsIndeterminate: TList<Integer>;
begin
  Result := FPersonsIndeterminate;
end;

procedure TProtectiveEquipmentSummary.SetPersonsIndeterminate(const Value: TList<Integer>);
begin
  if FPersonsIndeterminate <> Value then
  begin
    if not KeepPersonsIndeterminate then
      FPersonsIndeterminate.Free;
    FPersonsIndeterminate := Value;
  end;
end;

function TProtectiveEquipmentSummary.GetKeepPersonsIndeterminate: Boolean;
begin
  Result := FKeepPersonsIndeterminate;
end;

procedure TProtectiveEquipmentSummary.SetKeepPersonsIndeterminate(const Value: Boolean);
begin
  FKeepPersonsIndeterminate := Value;
end;

function TProtectiveEquipmentSummary.IsSetPersonsIndeterminate: Boolean;
begin
  Result := (FPersonsIndeterminate <> nil) and (FPersonsIndeterminate.Count > 0);
end;

function TProtectiveEquipmentSummary.GetPersonsWithRequiredEquipment: TList<Integer>;
begin
  Result := FPersonsWithRequiredEquipment;
end;

procedure TProtectiveEquipmentSummary.SetPersonsWithRequiredEquipment(const Value: TList<Integer>);
begin
  if FPersonsWithRequiredEquipment <> Value then
  begin
    if not KeepPersonsWithRequiredEquipment then
      FPersonsWithRequiredEquipment.Free;
    FPersonsWithRequiredEquipment := Value;
  end;
end;

function TProtectiveEquipmentSummary.GetKeepPersonsWithRequiredEquipment: Boolean;
begin
  Result := FKeepPersonsWithRequiredEquipment;
end;

procedure TProtectiveEquipmentSummary.SetKeepPersonsWithRequiredEquipment(const Value: Boolean);
begin
  FKeepPersonsWithRequiredEquipment := Value;
end;

function TProtectiveEquipmentSummary.IsSetPersonsWithRequiredEquipment: Boolean;
begin
  Result := (FPersonsWithRequiredEquipment <> nil) and (FPersonsWithRequiredEquipment.Count > 0);
end;

function TProtectiveEquipmentSummary.GetPersonsWithoutRequiredEquipment: TList<Integer>;
begin
  Result := FPersonsWithoutRequiredEquipment;
end;

procedure TProtectiveEquipmentSummary.SetPersonsWithoutRequiredEquipment(const Value: TList<Integer>);
begin
  if FPersonsWithoutRequiredEquipment <> Value then
  begin
    if not KeepPersonsWithoutRequiredEquipment then
      FPersonsWithoutRequiredEquipment.Free;
    FPersonsWithoutRequiredEquipment := Value;
  end;
end;

function TProtectiveEquipmentSummary.GetKeepPersonsWithoutRequiredEquipment: Boolean;
begin
  Result := FKeepPersonsWithoutRequiredEquipment;
end;

procedure TProtectiveEquipmentSummary.SetKeepPersonsWithoutRequiredEquipment(const Value: Boolean);
begin
  FKeepPersonsWithoutRequiredEquipment := Value;
end;

function TProtectiveEquipmentSummary.IsSetPersonsWithoutRequiredEquipment: Boolean;
begin
  Result := (FPersonsWithoutRequiredEquipment <> nil) and (FPersonsWithoutRequiredEquipment.Count > 0);
end;

end.
