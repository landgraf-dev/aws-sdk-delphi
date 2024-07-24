unit AWS.SSM.Model.CancelMaintenanceWindowExecutionResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TCancelMaintenanceWindowExecutionResponse = class;
  
  ICancelMaintenanceWindowExecutionResponse = interface(IAmazonWebServiceResponse)
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
    function Obj: TCancelMaintenanceWindowExecutionResponse;
    function IsSetWindowExecutionId: Boolean;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
  TCancelMaintenanceWindowExecutionResponse = class(TAmazonWebServiceResponse, ICancelMaintenanceWindowExecutionResponse)
  strict private
    FWindowExecutionId: Nullable<string>;
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
  strict protected
    function Obj: TCancelMaintenanceWindowExecutionResponse;
  public
    function IsSetWindowExecutionId: Boolean;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
implementation

{ TCancelMaintenanceWindowExecutionResponse }

function TCancelMaintenanceWindowExecutionResponse.Obj: TCancelMaintenanceWindowExecutionResponse;
begin
  Result := Self;
end;

function TCancelMaintenanceWindowExecutionResponse.GetWindowExecutionId: string;
begin
  Result := FWindowExecutionId.ValueOrDefault;
end;

procedure TCancelMaintenanceWindowExecutionResponse.SetWindowExecutionId(const Value: string);
begin
  FWindowExecutionId := Value;
end;

function TCancelMaintenanceWindowExecutionResponse.IsSetWindowExecutionId: Boolean;
begin
  Result := FWindowExecutionId.HasValue;
end;

end.
