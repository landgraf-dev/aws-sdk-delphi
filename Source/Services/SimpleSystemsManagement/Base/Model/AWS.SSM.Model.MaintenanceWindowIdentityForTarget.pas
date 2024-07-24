unit AWS.SSM.Model.MaintenanceWindowIdentityForTarget;

interface

uses
  AWS.Nullable;

type
  TMaintenanceWindowIdentityForTarget = class;
  
  IMaintenanceWindowIdentityForTarget = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function Obj: TMaintenanceWindowIdentityForTarget;
    function IsSetName: Boolean;
    function IsSetWindowId: Boolean;
    property Name: string read GetName write SetName;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
  TMaintenanceWindowIdentityForTarget = class
  strict private
    FName: Nullable<string>;
    FWindowId: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
  strict protected
    function Obj: TMaintenanceWindowIdentityForTarget;
  public
    function IsSetName: Boolean;
    function IsSetWindowId: Boolean;
    property Name: string read GetName write SetName;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
implementation

{ TMaintenanceWindowIdentityForTarget }

function TMaintenanceWindowIdentityForTarget.Obj: TMaintenanceWindowIdentityForTarget;
begin
  Result := Self;
end;

function TMaintenanceWindowIdentityForTarget.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TMaintenanceWindowIdentityForTarget.SetName(const Value: string);
begin
  FName := Value;
end;

function TMaintenanceWindowIdentityForTarget.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TMaintenanceWindowIdentityForTarget.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TMaintenanceWindowIdentityForTarget.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TMaintenanceWindowIdentityForTarget.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

end.
