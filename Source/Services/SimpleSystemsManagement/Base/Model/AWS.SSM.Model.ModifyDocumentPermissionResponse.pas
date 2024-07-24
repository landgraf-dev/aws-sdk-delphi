unit AWS.SSM.Model.ModifyDocumentPermissionResponse;

interface

uses
  AWS.Runtime.Model;

type
  TModifyDocumentPermissionResponse = class;
  
  IModifyDocumentPermissionResponse = interface(IAmazonWebServiceResponse)
    function Obj: TModifyDocumentPermissionResponse;
  end;
  
  TModifyDocumentPermissionResponse = class(TAmazonWebServiceResponse, IModifyDocumentPermissionResponse)
  strict protected
    function Obj: TModifyDocumentPermissionResponse;
  end;
  
implementation

{ TModifyDocumentPermissionResponse }

function TModifyDocumentPermissionResponse.Obj: TModifyDocumentPermissionResponse;
begin
  Result := Self;
end;

end.
