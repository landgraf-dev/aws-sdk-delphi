unit AWS.SESv2.Model.PutEmailIdentityConfigurationSetAttributesResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutEmailIdentityConfigurationSetAttributesResponse = class;
  
  IPutEmailIdentityConfigurationSetAttributesResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutEmailIdentityConfigurationSetAttributesResponse;
  end;
  
  TPutEmailIdentityConfigurationSetAttributesResponse = class(TAmazonWebServiceResponse, IPutEmailIdentityConfigurationSetAttributesResponse)
  strict protected
    function Obj: TPutEmailIdentityConfigurationSetAttributesResponse;
  end;
  
implementation

{ TPutEmailIdentityConfigurationSetAttributesResponse }

function TPutEmailIdentityConfigurationSetAttributesResponse.Obj: TPutEmailIdentityConfigurationSetAttributesResponse;
begin
  Result := Self;
end;

end.
