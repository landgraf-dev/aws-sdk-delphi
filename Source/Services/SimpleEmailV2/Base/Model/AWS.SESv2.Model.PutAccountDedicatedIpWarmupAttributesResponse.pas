unit AWS.SESv2.Model.PutAccountDedicatedIpWarmupAttributesResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutAccountDedicatedIpWarmupAttributesResponse = class;
  
  IPutAccountDedicatedIpWarmupAttributesResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutAccountDedicatedIpWarmupAttributesResponse;
  end;
  
  TPutAccountDedicatedIpWarmupAttributesResponse = class(TAmazonWebServiceResponse, IPutAccountDedicatedIpWarmupAttributesResponse)
  strict protected
    function Obj: TPutAccountDedicatedIpWarmupAttributesResponse;
  end;
  
implementation

{ TPutAccountDedicatedIpWarmupAttributesResponse }

function TPutAccountDedicatedIpWarmupAttributesResponse.Obj: TPutAccountDedicatedIpWarmupAttributesResponse;
begin
  Result := Self;
end;

end.
