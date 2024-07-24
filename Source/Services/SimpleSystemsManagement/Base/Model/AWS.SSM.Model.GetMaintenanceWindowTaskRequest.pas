unit AWS.SSM.Model.GetMaintenanceWindowTaskRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TGetMaintenanceWindowTaskRequest = class;
  
  IGetMaintenanceWindowTaskRequest = interface
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTaskId: string;
    procedure SetWindowTaskId(const Value: string);
    function Obj: TGetMaintenanceWindowTaskRequest;
    function IsSetWindowId: Boolean;
    function IsSetWindowTaskId: Boolean;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTaskId: string read GetWindowTaskId write SetWindowTaskId;
  end;
  
  TGetMaintenanceWindowTaskRequest = class(TAmazonSimpleSystemsManagementRequest, IGetMaintenanceWindowTaskRequest)
  strict private
    FWindowId: Nullable<string>;
    FWindowTaskId: Nullable<string>;
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTaskId: string;
    procedure SetWindowTaskId(const Value: string);
  strict protected
    function Obj: TGetMaintenanceWindowTaskRequest;
  public
    function IsSetWindowId: Boolean;
    function IsSetWindowTaskId: Boolean;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTaskId: string read GetWindowTaskId write SetWindowTaskId;
  end;
  
implementation

{ TGetMaintenanceWindowTaskRequest }

function TGetMaintenanceWindowTaskRequest.Obj: TGetMaintenanceWindowTaskRequest;
begin
  Result := Self;
end;

function TGetMaintenanceWindowTaskRequest.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TGetMaintenanceWindowTaskRequest.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TGetMaintenanceWindowTaskRequest.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

function TGetMaintenanceWindowTaskRequest.GetWindowTaskId: string;
begin
  Result := FWindowTaskId.ValueOrDefault;
end;

procedure TGetMaintenanceWindowTaskRequest.SetWindowTaskId(const Value: string);
begin
  FWindowTaskId := Value;
end;

function TGetMaintenanceWindowTaskRequest.IsSetWindowTaskId: Boolean;
begin
  Result := FWindowTaskId.HasValue;
end;

end.
