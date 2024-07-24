unit AWS.SSM.Model.RegisterTargetWithMaintenanceWindowResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TRegisterTargetWithMaintenanceWindowResponse = class;
  
  IRegisterTargetWithMaintenanceWindowResponse = interface(IAmazonWebServiceResponse)
    function GetWindowTargetId: string;
    procedure SetWindowTargetId(const Value: string);
    function Obj: TRegisterTargetWithMaintenanceWindowResponse;
    function IsSetWindowTargetId: Boolean;
    property WindowTargetId: string read GetWindowTargetId write SetWindowTargetId;
  end;
  
  TRegisterTargetWithMaintenanceWindowResponse = class(TAmazonWebServiceResponse, IRegisterTargetWithMaintenanceWindowResponse)
  strict private
    FWindowTargetId: Nullable<string>;
    function GetWindowTargetId: string;
    procedure SetWindowTargetId(const Value: string);
  strict protected
    function Obj: TRegisterTargetWithMaintenanceWindowResponse;
  public
    function IsSetWindowTargetId: Boolean;
    property WindowTargetId: string read GetWindowTargetId write SetWindowTargetId;
  end;
  
implementation

{ TRegisterTargetWithMaintenanceWindowResponse }

function TRegisterTargetWithMaintenanceWindowResponse.Obj: TRegisterTargetWithMaintenanceWindowResponse;
begin
  Result := Self;
end;

function TRegisterTargetWithMaintenanceWindowResponse.GetWindowTargetId: string;
begin
  Result := FWindowTargetId.ValueOrDefault;
end;

procedure TRegisterTargetWithMaintenanceWindowResponse.SetWindowTargetId(const Value: string);
begin
  FWindowTargetId := Value;
end;

function TRegisterTargetWithMaintenanceWindowResponse.IsSetWindowTargetId: Boolean;
begin
  Result := FWindowTargetId.HasValue;
end;

end.
