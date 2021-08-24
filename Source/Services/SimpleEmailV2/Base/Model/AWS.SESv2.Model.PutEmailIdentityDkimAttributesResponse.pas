unit AWS.SESv2.Model.PutEmailIdentityDkimAttributesResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutEmailIdentityDkimAttributesResponse = class;
  
  IPutEmailIdentityDkimAttributesResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutEmailIdentityDkimAttributesResponse;
  end;
  
  TPutEmailIdentityDkimAttributesResponse = class(TAmazonWebServiceResponse, IPutEmailIdentityDkimAttributesResponse)
  strict protected
    function Obj: TPutEmailIdentityDkimAttributesResponse;
  end;
  
implementation

{ TPutEmailIdentityDkimAttributesResponse }

function TPutEmailIdentityDkimAttributesResponse.Obj: TPutEmailIdentityDkimAttributesResponse;
begin
  Result := Self;
end;

end.
