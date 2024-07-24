unit AWS.SSM.Model.DeregisterTargetFromMaintenanceWindowRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDeregisterTargetFromMaintenanceWindowRequest = class;
  
  IDeregisterTargetFromMaintenanceWindowRequest = interface
    function GetSafe: Boolean;
    procedure SetSafe(const Value: Boolean);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTargetId: string;
    procedure SetWindowTargetId(const Value: string);
    function Obj: TDeregisterTargetFromMaintenanceWindowRequest;
    function IsSetSafe: Boolean;
    function IsSetWindowId: Boolean;
    function IsSetWindowTargetId: Boolean;
    property Safe: Boolean read GetSafe write SetSafe;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTargetId: string read GetWindowTargetId write SetWindowTargetId;
  end;
  
  TDeregisterTargetFromMaintenanceWindowRequest = class(TAmazonSimpleSystemsManagementRequest, IDeregisterTargetFromMaintenanceWindowRequest)
  strict private
    FSafe: Nullable<Boolean>;
    FWindowId: Nullable<string>;
    FWindowTargetId: Nullable<string>;
    function GetSafe: Boolean;
    procedure SetSafe(const Value: Boolean);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTargetId: string;
    procedure SetWindowTargetId(const Value: string);
  strict protected
    function Obj: TDeregisterTargetFromMaintenanceWindowRequest;
  public
    function IsSetSafe: Boolean;
    function IsSetWindowId: Boolean;
    function IsSetWindowTargetId: Boolean;
    property Safe: Boolean read GetSafe write SetSafe;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTargetId: string read GetWindowTargetId write SetWindowTargetId;
  end;
  
implementation

{ TDeregisterTargetFromMaintenanceWindowRequest }

function TDeregisterTargetFromMaintenanceWindowRequest.Obj: TDeregisterTargetFromMaintenanceWindowRequest;
begin
  Result := Self;
end;

function TDeregisterTargetFromMaintenanceWindowRequest.GetSafe: Boolean;
begin
  Result := FSafe.ValueOrDefault;
end;

procedure TDeregisterTargetFromMaintenanceWindowRequest.SetSafe(const Value: Boolean);
begin
  FSafe := Value;
end;

function TDeregisterTargetFromMaintenanceWindowRequest.IsSetSafe: Boolean;
begin
  Result := FSafe.HasValue;
end;

function TDeregisterTargetFromMaintenanceWindowRequest.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TDeregisterTargetFromMaintenanceWindowRequest.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TDeregisterTargetFromMaintenanceWindowRequest.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

function TDeregisterTargetFromMaintenanceWindowRequest.GetWindowTargetId: string;
begin
  Result := FWindowTargetId.ValueOrDefault;
end;

procedure TDeregisterTargetFromMaintenanceWindowRequest.SetWindowTargetId(const Value: string);
begin
  FWindowTargetId := Value;
end;

function TDeregisterTargetFromMaintenanceWindowRequest.IsSetWindowTargetId: Boolean;
begin
  Result := FWindowTargetId.HasValue;
end;

end.
