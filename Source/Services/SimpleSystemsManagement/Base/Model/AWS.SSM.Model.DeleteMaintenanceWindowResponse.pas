unit AWS.SSM.Model.DeleteMaintenanceWindowResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TDeleteMaintenanceWindowResponse = class;
  
  IDeleteMaintenanceWindowResponse = interface(IAmazonWebServiceResponse)
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function Obj: TDeleteMaintenanceWindowResponse;
    function IsSetWindowId: Boolean;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
  TDeleteMaintenanceWindowResponse = class(TAmazonWebServiceResponse, IDeleteMaintenanceWindowResponse)
  strict private
    FWindowId: Nullable<string>;
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
  strict protected
    function Obj: TDeleteMaintenanceWindowResponse;
  public
    function IsSetWindowId: Boolean;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
implementation

{ TDeleteMaintenanceWindowResponse }

function TDeleteMaintenanceWindowResponse.Obj: TDeleteMaintenanceWindowResponse;
begin
  Result := Self;
end;

function TDeleteMaintenanceWindowResponse.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TDeleteMaintenanceWindowResponse.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TDeleteMaintenanceWindowResponse.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

end.
