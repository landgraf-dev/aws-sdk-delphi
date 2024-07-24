unit AWS.SSM.Model.GetMaintenanceWindowExecutionRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TGetMaintenanceWindowExecutionRequest = class;
  
  IGetMaintenanceWindowExecutionRequest = interface
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
    function Obj: TGetMaintenanceWindowExecutionRequest;
    function IsSetWindowExecutionId: Boolean;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
  TGetMaintenanceWindowExecutionRequest = class(TAmazonSimpleSystemsManagementRequest, IGetMaintenanceWindowExecutionRequest)
  strict private
    FWindowExecutionId: Nullable<string>;
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
  strict protected
    function Obj: TGetMaintenanceWindowExecutionRequest;
  public
    function IsSetWindowExecutionId: Boolean;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
implementation

{ TGetMaintenanceWindowExecutionRequest }

function TGetMaintenanceWindowExecutionRequest.Obj: TGetMaintenanceWindowExecutionRequest;
begin
  Result := Self;
end;

function TGetMaintenanceWindowExecutionRequest.GetWindowExecutionId: string;
begin
  Result := FWindowExecutionId.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionRequest.SetWindowExecutionId(const Value: string);
begin
  FWindowExecutionId := Value;
end;

function TGetMaintenanceWindowExecutionRequest.IsSetWindowExecutionId: Boolean;
begin
  Result := FWindowExecutionId.HasValue;
end;

end.
