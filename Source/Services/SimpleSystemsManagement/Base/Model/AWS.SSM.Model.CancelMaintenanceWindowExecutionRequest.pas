unit AWS.SSM.Model.CancelMaintenanceWindowExecutionRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TCancelMaintenanceWindowExecutionRequest = class;
  
  ICancelMaintenanceWindowExecutionRequest = interface
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
    function Obj: TCancelMaintenanceWindowExecutionRequest;
    function IsSetWindowExecutionId: Boolean;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
  TCancelMaintenanceWindowExecutionRequest = class(TAmazonSimpleSystemsManagementRequest, ICancelMaintenanceWindowExecutionRequest)
  strict private
    FWindowExecutionId: Nullable<string>;
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
  strict protected
    function Obj: TCancelMaintenanceWindowExecutionRequest;
  public
    function IsSetWindowExecutionId: Boolean;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
implementation

{ TCancelMaintenanceWindowExecutionRequest }

function TCancelMaintenanceWindowExecutionRequest.Obj: TCancelMaintenanceWindowExecutionRequest;
begin
  Result := Self;
end;

function TCancelMaintenanceWindowExecutionRequest.GetWindowExecutionId: string;
begin
  Result := FWindowExecutionId.ValueOrDefault;
end;

procedure TCancelMaintenanceWindowExecutionRequest.SetWindowExecutionId(const Value: string);
begin
  FWindowExecutionId := Value;
end;

function TCancelMaintenanceWindowExecutionRequest.IsSetWindowExecutionId: Boolean;
begin
  Result := FWindowExecutionId.HasValue;
end;

end.
