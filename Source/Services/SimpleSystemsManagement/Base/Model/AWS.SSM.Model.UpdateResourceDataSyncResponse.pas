unit AWS.SSM.Model.UpdateResourceDataSyncResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUpdateResourceDataSyncResponse = class;
  
  IUpdateResourceDataSyncResponse = interface(IAmazonWebServiceResponse)
    function Obj: TUpdateResourceDataSyncResponse;
  end;
  
  TUpdateResourceDataSyncResponse = class(TAmazonWebServiceResponse, IUpdateResourceDataSyncResponse)
  strict protected
    function Obj: TUpdateResourceDataSyncResponse;
  end;
  
implementation

{ TUpdateResourceDataSyncResponse }

function TUpdateResourceDataSyncResponse.Obj: TUpdateResourceDataSyncResponse;
begin
  Result := Self;
end;

end.
