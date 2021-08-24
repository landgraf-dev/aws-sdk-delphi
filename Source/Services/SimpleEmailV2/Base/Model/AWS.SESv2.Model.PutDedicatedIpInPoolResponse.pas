unit AWS.SESv2.Model.PutDedicatedIpInPoolResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutDedicatedIpInPoolResponse = class;
  
  IPutDedicatedIpInPoolResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutDedicatedIpInPoolResponse;
  end;
  
  TPutDedicatedIpInPoolResponse = class(TAmazonWebServiceResponse, IPutDedicatedIpInPoolResponse)
  strict protected
    function Obj: TPutDedicatedIpInPoolResponse;
  end;
  
implementation

{ TPutDedicatedIpInPoolResponse }

function TPutDedicatedIpInPoolResponse.Obj: TPutDedicatedIpInPoolResponse;
begin
  Result := Self;
end;

end.
