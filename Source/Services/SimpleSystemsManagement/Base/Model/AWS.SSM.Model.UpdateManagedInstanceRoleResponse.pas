unit AWS.SSM.Model.UpdateManagedInstanceRoleResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUpdateManagedInstanceRoleResponse = class;
  
  IUpdateManagedInstanceRoleResponse = interface(IAmazonWebServiceResponse)
    function Obj: TUpdateManagedInstanceRoleResponse;
  end;
  
  TUpdateManagedInstanceRoleResponse = class(TAmazonWebServiceResponse, IUpdateManagedInstanceRoleResponse)
  strict protected
    function Obj: TUpdateManagedInstanceRoleResponse;
  end;
  
implementation

{ TUpdateManagedInstanceRoleResponse }

function TUpdateManagedInstanceRoleResponse.Obj: TUpdateManagedInstanceRoleResponse;
begin
  Result := Self;
end;

end.
