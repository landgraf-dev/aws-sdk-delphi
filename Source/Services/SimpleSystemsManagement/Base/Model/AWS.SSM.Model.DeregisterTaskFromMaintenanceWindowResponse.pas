unit AWS.SSM.Model.DeregisterTaskFromMaintenanceWindowResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TDeregisterTaskFromMaintenanceWindowResponse = class;
  
  IDeregisterTaskFromMaintenanceWindowResponse = interface(IAmazonWebServiceResponse)
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTaskId: string;
    procedure SetWindowTaskId(const Value: string);
    function Obj: TDeregisterTaskFromMaintenanceWindowResponse;
    function IsSetWindowId: Boolean;
    function IsSetWindowTaskId: Boolean;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTaskId: string read GetWindowTaskId write SetWindowTaskId;
  end;
  
  TDeregisterTaskFromMaintenanceWindowResponse = class(TAmazonWebServiceResponse, IDeregisterTaskFromMaintenanceWindowResponse)
  strict private
    FWindowId: Nullable<string>;
    FWindowTaskId: Nullable<string>;
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTaskId: string;
    procedure SetWindowTaskId(const Value: string);
  strict protected
    function Obj: TDeregisterTaskFromMaintenanceWindowResponse;
  public
    function IsSetWindowId: Boolean;
    function IsSetWindowTaskId: Boolean;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTaskId: string read GetWindowTaskId write SetWindowTaskId;
  end;
  
implementation

{ TDeregisterTaskFromMaintenanceWindowResponse }

function TDeregisterTaskFromMaintenanceWindowResponse.Obj: TDeregisterTaskFromMaintenanceWindowResponse;
begin
  Result := Self;
end;

function TDeregisterTaskFromMaintenanceWindowResponse.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TDeregisterTaskFromMaintenanceWindowResponse.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TDeregisterTaskFromMaintenanceWindowResponse.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

function TDeregisterTaskFromMaintenanceWindowResponse.GetWindowTaskId: string;
begin
  Result := FWindowTaskId.ValueOrDefault;
end;

procedure TDeregisterTaskFromMaintenanceWindowResponse.SetWindowTaskId(const Value: string);
begin
  FWindowTaskId := Value;
end;

function TDeregisterTaskFromMaintenanceWindowResponse.IsSetWindowTaskId: Boolean;
begin
  Result := FWindowTaskId.HasValue;
end;

end.
