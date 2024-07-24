unit AWS.SSM.Model.DeleteMaintenanceWindowRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDeleteMaintenanceWindowRequest = class;
  
  IDeleteMaintenanceWindowRequest = interface
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function Obj: TDeleteMaintenanceWindowRequest;
    function IsSetWindowId: Boolean;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
  TDeleteMaintenanceWindowRequest = class(TAmazonSimpleSystemsManagementRequest, IDeleteMaintenanceWindowRequest)
  strict private
    FWindowId: Nullable<string>;
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
  strict protected
    function Obj: TDeleteMaintenanceWindowRequest;
  public
    function IsSetWindowId: Boolean;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
implementation

{ TDeleteMaintenanceWindowRequest }

function TDeleteMaintenanceWindowRequest.Obj: TDeleteMaintenanceWindowRequest;
begin
  Result := Self;
end;

function TDeleteMaintenanceWindowRequest.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TDeleteMaintenanceWindowRequest.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TDeleteMaintenanceWindowRequest.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

end.
