unit AWS.SESv2.Model.PutAccountDetailsResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutAccountDetailsResponse = class;
  
  IPutAccountDetailsResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutAccountDetailsResponse;
  end;
  
  TPutAccountDetailsResponse = class(TAmazonWebServiceResponse, IPutAccountDetailsResponse)
  strict protected
    function Obj: TPutAccountDetailsResponse;
  end;
  
implementation

{ TPutAccountDetailsResponse }

function TPutAccountDetailsResponse.Obj: TPutAccountDetailsResponse;
begin
  Result := Self;
end;

end.
