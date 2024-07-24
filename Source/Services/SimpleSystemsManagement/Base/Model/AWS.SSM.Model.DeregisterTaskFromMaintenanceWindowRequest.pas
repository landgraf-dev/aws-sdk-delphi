unit AWS.SSM.Model.DeregisterTaskFromMaintenanceWindowRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDeregisterTaskFromMaintenanceWindowRequest = class;
  
  IDeregisterTaskFromMaintenanceWindowRequest = interface
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTaskId: string;
    procedure SetWindowTaskId(const Value: string);
    function Obj: TDeregisterTaskFromMaintenanceWindowRequest;
    function IsSetWindowId: Boolean;
    function IsSetWindowTaskId: Boolean;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTaskId: string read GetWindowTaskId write SetWindowTaskId;
  end;
  
  TDeregisterTaskFromMaintenanceWindowRequest = class(TAmazonSimpleSystemsManagementRequest, IDeregisterTaskFromMaintenanceWindowRequest)
  strict private
    FWindowId: Nullable<string>;
    FWindowTaskId: Nullable<string>;
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTaskId: string;
    procedure SetWindowTaskId(const Value: string);
  strict protected
    function Obj: TDeregisterTaskFromMaintenanceWindowRequest;
  public
    function IsSetWindowId: Boolean;
    function IsSetWindowTaskId: Boolean;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTaskId: string read GetWindowTaskId write SetWindowTaskId;
  end;
  
implementation

{ TDeregisterTaskFromMaintenanceWindowRequest }

function TDeregisterTaskFromMaintenanceWindowRequest.Obj: TDeregisterTaskFromMaintenanceWindowRequest;
begin
  Result := Self;
end;

function TDeregisterTaskFromMaintenanceWindowRequest.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TDeregisterTaskFromMaintenanceWindowRequest.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TDeregisterTaskFromMaintenanceWindowRequest.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

function TDeregisterTaskFromMaintenanceWindowRequest.GetWindowTaskId: string;
begin
  Result := FWindowTaskId.ValueOrDefault;
end;

procedure TDeregisterTaskFromMaintenanceWindowRequest.SetWindowTaskId(const Value: string);
begin
  FWindowTaskId := Value;
end;

function TDeregisterTaskFromMaintenanceWindowRequest.IsSetWindowTaskId: Boolean;
begin
  Result := FWindowTaskId.HasValue;
end;

end.
