unit AWS.SSM.Model.RegisterTaskWithMaintenanceWindowResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TRegisterTaskWithMaintenanceWindowResponse = class;
  
  IRegisterTaskWithMaintenanceWindowResponse = interface(IAmazonWebServiceResponse)
    function GetWindowTaskId: string;
    procedure SetWindowTaskId(const Value: string);
    function Obj: TRegisterTaskWithMaintenanceWindowResponse;
    function IsSetWindowTaskId: Boolean;
    property WindowTaskId: string read GetWindowTaskId write SetWindowTaskId;
  end;
  
  TRegisterTaskWithMaintenanceWindowResponse = class(TAmazonWebServiceResponse, IRegisterTaskWithMaintenanceWindowResponse)
  strict private
    FWindowTaskId: Nullable<string>;
    function GetWindowTaskId: string;
    procedure SetWindowTaskId(const Value: string);
  strict protected
    function Obj: TRegisterTaskWithMaintenanceWindowResponse;
  public
    function IsSetWindowTaskId: Boolean;
    property WindowTaskId: string read GetWindowTaskId write SetWindowTaskId;
  end;
  
implementation

{ TRegisterTaskWithMaintenanceWindowResponse }

function TRegisterTaskWithMaintenanceWindowResponse.Obj: TRegisterTaskWithMaintenanceWindowResponse;
begin
  Result := Self;
end;

function TRegisterTaskWithMaintenanceWindowResponse.GetWindowTaskId: string;
begin
  Result := FWindowTaskId.ValueOrDefault;
end;

procedure TRegisterTaskWithMaintenanceWindowResponse.SetWindowTaskId(const Value: string);
begin
  FWindowTaskId := Value;
end;

function TRegisterTaskWithMaintenanceWindowResponse.IsSetWindowTaskId: Boolean;
begin
  Result := FWindowTaskId.HasValue;
end;

end.
