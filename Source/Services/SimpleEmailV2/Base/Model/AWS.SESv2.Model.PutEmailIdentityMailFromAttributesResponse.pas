unit AWS.SESv2.Model.PutEmailIdentityMailFromAttributesResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutEmailIdentityMailFromAttributesResponse = class;
  
  IPutEmailIdentityMailFromAttributesResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutEmailIdentityMailFromAttributesResponse;
  end;
  
  TPutEmailIdentityMailFromAttributesResponse = class(TAmazonWebServiceResponse, IPutEmailIdentityMailFromAttributesResponse)
  strict protected
    function Obj: TPutEmailIdentityMailFromAttributesResponse;
  end;
  
implementation

{ TPutEmailIdentityMailFromAttributesResponse }

function TPutEmailIdentityMailFromAttributesResponse.Obj: TPutEmailIdentityMailFromAttributesResponse;
begin
  Result := Self;
end;

end.
