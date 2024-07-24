unit AWS.SSM.Model.DisassociateOpsItemRelatedItemResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDisassociateOpsItemRelatedItemResponse = class;
  
  IDisassociateOpsItemRelatedItemResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDisassociateOpsItemRelatedItemResponse;
  end;
  
  TDisassociateOpsItemRelatedItemResponse = class(TAmazonWebServiceResponse, IDisassociateOpsItemRelatedItemResponse)
  strict protected
    function Obj: TDisassociateOpsItemRelatedItemResponse;
  end;
  
implementation

{ TDisassociateOpsItemRelatedItemResponse }

function TDisassociateOpsItemRelatedItemResponse.Obj: TDisassociateOpsItemRelatedItemResponse;
begin
  Result := Self;
end;

end.
