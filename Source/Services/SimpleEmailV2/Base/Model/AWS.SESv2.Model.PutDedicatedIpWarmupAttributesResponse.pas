unit AWS.SESv2.Model.PutDedicatedIpWarmupAttributesResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutDedicatedIpWarmupAttributesResponse = class;
  
  IPutDedicatedIpWarmupAttributesResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutDedicatedIpWarmupAttributesResponse;
  end;
  
  TPutDedicatedIpWarmupAttributesResponse = class(TAmazonWebServiceResponse, IPutDedicatedIpWarmupAttributesResponse)
  strict protected
    function Obj: TPutDedicatedIpWarmupAttributesResponse;
  end;
  
implementation

{ TPutDedicatedIpWarmupAttributesResponse }

function TPutDedicatedIpWarmupAttributesResponse.Obj: TPutDedicatedIpWarmupAttributesResponse;
begin
  Result := Self;
end;

end.
