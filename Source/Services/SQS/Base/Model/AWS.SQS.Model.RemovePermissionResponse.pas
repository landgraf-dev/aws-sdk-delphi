unit AWS.SQS.Model.RemovePermissionResponse;

interface

uses
  AWS.Runtime.Model;

type
  TRemovePermissionResponse = class;
  
  IRemovePermissionResponse = interface
    function Obj: TRemovePermissionResponse;
  end;
  
  TRemovePermissionResponse = class(TAmazonWebServiceResponse, IRemovePermissionResponse)
  strict protected
    function Obj: TRemovePermissionResponse;
  end;
  
implementation

{ TRemovePermissionResponse }

function TRemovePermissionResponse.Obj: TRemovePermissionResponse;
begin
  Result := Self;
end;

end.
