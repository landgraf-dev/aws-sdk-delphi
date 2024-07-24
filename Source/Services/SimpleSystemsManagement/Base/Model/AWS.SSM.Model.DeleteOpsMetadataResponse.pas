unit AWS.SSM.Model.DeleteOpsMetadataResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteOpsMetadataResponse = class;
  
  IDeleteOpsMetadataResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteOpsMetadataResponse;
  end;
  
  TDeleteOpsMetadataResponse = class(TAmazonWebServiceResponse, IDeleteOpsMetadataResponse)
  strict protected
    function Obj: TDeleteOpsMetadataResponse;
  end;
  
implementation

{ TDeleteOpsMetadataResponse }

function TDeleteOpsMetadataResponse.Obj: TDeleteOpsMetadataResponse;
begin
  Result := Self;
end;

end.
