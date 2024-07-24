unit AWS.SSM.Model.DeleteResourceDataSyncResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteResourceDataSyncResponse = class;
  
  IDeleteResourceDataSyncResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteResourceDataSyncResponse;
  end;
  
  TDeleteResourceDataSyncResponse = class(TAmazonWebServiceResponse, IDeleteResourceDataSyncResponse)
  strict protected
    function Obj: TDeleteResourceDataSyncResponse;
  end;
  
implementation

{ TDeleteResourceDataSyncResponse }

function TDeleteResourceDataSyncResponse.Obj: TDeleteResourceDataSyncResponse;
begin
  Result := Self;
end;

end.
