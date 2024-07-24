unit AWS.SSM.Model.UpdateOpsItemResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUpdateOpsItemResponse = class;
  
  IUpdateOpsItemResponse = interface(IAmazonWebServiceResponse)
    function Obj: TUpdateOpsItemResponse;
  end;
  
  TUpdateOpsItemResponse = class(TAmazonWebServiceResponse, IUpdateOpsItemResponse)
  strict protected
    function Obj: TUpdateOpsItemResponse;
  end;
  
implementation

{ TUpdateOpsItemResponse }

function TUpdateOpsItemResponse.Obj: TUpdateOpsItemResponse;
begin
  Result := Self;
end;

end.
