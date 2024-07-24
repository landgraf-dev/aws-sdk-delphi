unit AWS.SSM.Model.UpdateManagedInstanceRoleRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TUpdateManagedInstanceRoleRequest = class;
  
  IUpdateManagedInstanceRoleRequest = interface
    function GetIamRole: string;
    procedure SetIamRole(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function Obj: TUpdateManagedInstanceRoleRequest;
    function IsSetIamRole: Boolean;
    function IsSetInstanceId: Boolean;
    property IamRole: string read GetIamRole write SetIamRole;
    property InstanceId: string read GetInstanceId write SetInstanceId;
  end;
  
  TUpdateManagedInstanceRoleRequest = class(TAmazonSimpleSystemsManagementRequest, IUpdateManagedInstanceRoleRequest)
  strict private
    FIamRole: Nullable<string>;
    FInstanceId: Nullable<string>;
    function GetIamRole: string;
    procedure SetIamRole(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
  strict protected
    function Obj: TUpdateManagedInstanceRoleRequest;
  public
    function IsSetIamRole: Boolean;
    function IsSetInstanceId: Boolean;
    property IamRole: string read GetIamRole write SetIamRole;
    property InstanceId: string read GetInstanceId write SetInstanceId;
  end;
  
implementation

{ TUpdateManagedInstanceRoleRequest }

function TUpdateManagedInstanceRoleRequest.Obj: TUpdateManagedInstanceRoleRequest;
begin
  Result := Self;
end;

function TUpdateManagedInstanceRoleRequest.GetIamRole: string;
begin
  Result := FIamRole.ValueOrDefault;
end;

procedure TUpdateManagedInstanceRoleRequest.SetIamRole(const Value: string);
begin
  FIamRole := Value;
end;

function TUpdateManagedInstanceRoleRequest.IsSetIamRole: Boolean;
begin
  Result := FIamRole.HasValue;
end;

function TUpdateManagedInstanceRoleRequest.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TUpdateManagedInstanceRoleRequest.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TUpdateManagedInstanceRoleRequest.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

end.
