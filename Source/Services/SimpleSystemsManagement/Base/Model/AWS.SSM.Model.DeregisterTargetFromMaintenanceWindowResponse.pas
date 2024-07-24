unit AWS.SSM.Model.DeregisterTargetFromMaintenanceWindowResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TDeregisterTargetFromMaintenanceWindowResponse = class;
  
  IDeregisterTargetFromMaintenanceWindowResponse = interface(IAmazonWebServiceResponse)
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTargetId: string;
    procedure SetWindowTargetId(const Value: string);
    function Obj: TDeregisterTargetFromMaintenanceWindowResponse;
    function IsSetWindowId: Boolean;
    function IsSetWindowTargetId: Boolean;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTargetId: string read GetWindowTargetId write SetWindowTargetId;
  end;
  
  TDeregisterTargetFromMaintenanceWindowResponse = class(TAmazonWebServiceResponse, IDeregisterTargetFromMaintenanceWindowResponse)
  strict private
    FWindowId: Nullable<string>;
    FWindowTargetId: Nullable<string>;
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTargetId: string;
    procedure SetWindowTargetId(const Value: string);
  strict protected
    function Obj: TDeregisterTargetFromMaintenanceWindowResponse;
  public
    function IsSetWindowId: Boolean;
    function IsSetWindowTargetId: Boolean;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTargetId: string read GetWindowTargetId write SetWindowTargetId;
  end;
  
implementation

{ TDeregisterTargetFromMaintenanceWindowResponse }

function TDeregisterTargetFromMaintenanceWindowResponse.Obj: TDeregisterTargetFromMaintenanceWindowResponse;
begin
  Result := Self;
end;

function TDeregisterTargetFromMaintenanceWindowResponse.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TDeregisterTargetFromMaintenanceWindowResponse.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TDeregisterTargetFromMaintenanceWindowResponse.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

function TDeregisterTargetFromMaintenanceWindowResponse.GetWindowTargetId: string;
begin
  Result := FWindowTargetId.ValueOrDefault;
end;

procedure TDeregisterTargetFromMaintenanceWindowResponse.SetWindowTargetId(const Value: string);
begin
  FWindowTargetId := Value;
end;

function TDeregisterTargetFromMaintenanceWindowResponse.IsSetWindowTargetId: Boolean;
begin
  Result := FWindowTargetId.HasValue;
end;

end.
