unit AWS.SSM.Model.CreateMaintenanceWindowResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TCreateMaintenanceWindowResponse = class;
  
  ICreateMaintenanceWindowResponse = interface(IAmazonWebServiceResponse)
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function Obj: TCreateMaintenanceWindowResponse;
    function IsSetWindowId: Boolean;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
  TCreateMaintenanceWindowResponse = class(TAmazonWebServiceResponse, ICreateMaintenanceWindowResponse)
  strict private
    FWindowId: Nullable<string>;
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
  strict protected
    function Obj: TCreateMaintenanceWindowResponse;
  public
    function IsSetWindowId: Boolean;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
implementation

{ TCreateMaintenanceWindowResponse }

function TCreateMaintenanceWindowResponse.Obj: TCreateMaintenanceWindowResponse;
begin
  Result := Self;
end;

function TCreateMaintenanceWindowResponse.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TCreateMaintenanceWindowResponse.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TCreateMaintenanceWindowResponse.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

end.
