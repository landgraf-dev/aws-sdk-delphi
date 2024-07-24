unit AWS.SSM.Model.MaintenanceWindowTarget;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.Target;

type
  TMaintenanceWindowTarget = class;
  
  IMaintenanceWindowTarget = interface
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOwnerInformation: string;
    procedure SetOwnerInformation(const Value: string);
    function GetResourceType: TMaintenanceWindowResourceType;
    procedure SetResourceType(const Value: TMaintenanceWindowResourceType);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTargetId: string;
    procedure SetWindowTargetId(const Value: string);
    function Obj: TMaintenanceWindowTarget;
    function IsSetDescription: Boolean;
    function IsSetName: Boolean;
    function IsSetOwnerInformation: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetTargets: Boolean;
    function IsSetWindowId: Boolean;
    function IsSetWindowTargetId: Boolean;
    property Description: string read GetDescription write SetDescription;
    property Name: string read GetName write SetName;
    property OwnerInformation: string read GetOwnerInformation write SetOwnerInformation;
    property ResourceType: TMaintenanceWindowResourceType read GetResourceType write SetResourceType;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTargetId: string read GetWindowTargetId write SetWindowTargetId;
  end;
  
  TMaintenanceWindowTarget = class
  strict private
    FDescription: Nullable<string>;
    FName: Nullable<string>;
    FOwnerInformation: Nullable<string>;
    FResourceType: Nullable<TMaintenanceWindowResourceType>;
    FTargets: TObjectList<TTarget>;
    FKeepTargets: Boolean;
    FWindowId: Nullable<string>;
    FWindowTargetId: Nullable<string>;
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOwnerInformation: string;
    procedure SetOwnerInformation(const Value: string);
    function GetResourceType: TMaintenanceWindowResourceType;
    procedure SetResourceType(const Value: TMaintenanceWindowResourceType);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTargetId: string;
    procedure SetWindowTargetId(const Value: string);
  strict protected
    function Obj: TMaintenanceWindowTarget;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDescription: Boolean;
    function IsSetName: Boolean;
    function IsSetOwnerInformation: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetTargets: Boolean;
    function IsSetWindowId: Boolean;
    function IsSetWindowTargetId: Boolean;
    property Description: string read GetDescription write SetDescription;
    property Name: string read GetName write SetName;
    property OwnerInformation: string read GetOwnerInformation write SetOwnerInformation;
    property ResourceType: TMaintenanceWindowResourceType read GetResourceType write SetResourceType;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTargetId: string read GetWindowTargetId write SetWindowTargetId;
  end;
  
implementation

{ TMaintenanceWindowTarget }

constructor TMaintenanceWindowTarget.Create;
begin
  inherited;
  FTargets := TObjectList<TTarget>.Create;
end;

destructor TMaintenanceWindowTarget.Destroy;
begin
  Targets := nil;
  inherited;
end;

function TMaintenanceWindowTarget.Obj: TMaintenanceWindowTarget;
begin
  Result := Self;
end;

function TMaintenanceWindowTarget.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TMaintenanceWindowTarget.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TMaintenanceWindowTarget.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TMaintenanceWindowTarget.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TMaintenanceWindowTarget.SetName(const Value: string);
begin
  FName := Value;
end;

function TMaintenanceWindowTarget.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TMaintenanceWindowTarget.GetOwnerInformation: string;
begin
  Result := FOwnerInformation.ValueOrDefault;
end;

procedure TMaintenanceWindowTarget.SetOwnerInformation(const Value: string);
begin
  FOwnerInformation := Value;
end;

function TMaintenanceWindowTarget.IsSetOwnerInformation: Boolean;
begin
  Result := FOwnerInformation.HasValue;
end;

function TMaintenanceWindowTarget.GetResourceType: TMaintenanceWindowResourceType;
begin
  Result := FResourceType.ValueOrDefault;
end;

procedure TMaintenanceWindowTarget.SetResourceType(const Value: TMaintenanceWindowResourceType);
begin
  FResourceType := Value;
end;

function TMaintenanceWindowTarget.IsSetResourceType: Boolean;
begin
  Result := FResourceType.HasValue;
end;

function TMaintenanceWindowTarget.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TMaintenanceWindowTarget.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TMaintenanceWindowTarget.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TMaintenanceWindowTarget.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TMaintenanceWindowTarget.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

function TMaintenanceWindowTarget.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TMaintenanceWindowTarget.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TMaintenanceWindowTarget.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

function TMaintenanceWindowTarget.GetWindowTargetId: string;
begin
  Result := FWindowTargetId.ValueOrDefault;
end;

procedure TMaintenanceWindowTarget.SetWindowTargetId(const Value: string);
begin
  FWindowTargetId := Value;
end;

function TMaintenanceWindowTarget.IsSetWindowTargetId: Boolean;
begin
  Result := FWindowTargetId.HasValue;
end;

end.
