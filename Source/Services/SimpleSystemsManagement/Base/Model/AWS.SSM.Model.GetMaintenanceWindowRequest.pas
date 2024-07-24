unit AWS.SSM.Model.GetMaintenanceWindowRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TGetMaintenanceWindowRequest = class;
  
  IGetMaintenanceWindowRequest = interface
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function Obj: TGetMaintenanceWindowRequest;
    function IsSetWindowId: Boolean;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
  TGetMaintenanceWindowRequest = class(TAmazonSimpleSystemsManagementRequest, IGetMaintenanceWindowRequest)
  strict private
    FWindowId: Nullable<string>;
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
  strict protected
    function Obj: TGetMaintenanceWindowRequest;
  public
    function IsSetWindowId: Boolean;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
implementation

{ TGetMaintenanceWindowRequest }

function TGetMaintenanceWindowRequest.Obj: TGetMaintenanceWindowRequest;
begin
  Result := Self;
end;

function TGetMaintenanceWindowRequest.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TGetMaintenanceWindowRequest.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TGetMaintenanceWindowRequest.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

end.
