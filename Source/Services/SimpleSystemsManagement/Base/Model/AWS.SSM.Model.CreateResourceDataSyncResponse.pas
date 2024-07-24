unit AWS.SSM.Model.CreateResourceDataSyncResponse;

interface

uses
  AWS.Runtime.Model;

type
  TCreateResourceDataSyncResponse = class;
  
  ICreateResourceDataSyncResponse = interface(IAmazonWebServiceResponse)
    function Obj: TCreateResourceDataSyncResponse;
  end;
  
  TCreateResourceDataSyncResponse = class(TAmazonWebServiceResponse, ICreateResourceDataSyncResponse)
  strict protected
    function Obj: TCreateResourceDataSyncResponse;
  end;
  
implementation

{ TCreateResourceDataSyncResponse }

function TCreateResourceDataSyncResponse.Obj: TCreateResourceDataSyncResponse;
begin
  Result := Self;
end;

end.
