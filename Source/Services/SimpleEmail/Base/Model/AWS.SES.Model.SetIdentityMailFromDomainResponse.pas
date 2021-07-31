unit AWS.SES.Model.SetIdentityMailFromDomainResponse;

interface

uses
  AWS.Runtime.Model;

type
  TSetIdentityMailFromDomainResponse = class;
  
  ISetIdentityMailFromDomainResponse = interface(IAmazonWebServiceResponse)
    function Obj: TSetIdentityMailFromDomainResponse;
  end;
  
  TSetIdentityMailFromDomainResponse = class(TAmazonWebServiceResponse, ISetIdentityMailFromDomainResponse)
  strict protected
    function Obj: TSetIdentityMailFromDomainResponse;
  end;
  
implementation

{ TSetIdentityMailFromDomainResponse }

function TSetIdentityMailFromDomainResponse.Obj: TSetIdentityMailFromDomainResponse;
begin
  Result := Self;
end;

end.
