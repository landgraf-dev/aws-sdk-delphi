unit AWS.SES.Model.DeleteCustomVerificationEmailTemplateResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteCustomVerificationEmailTemplateResponse = class;
  
  IDeleteCustomVerificationEmailTemplateResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteCustomVerificationEmailTemplateResponse;
  end;
  
  TDeleteCustomVerificationEmailTemplateResponse = class(TAmazonWebServiceResponse, IDeleteCustomVerificationEmailTemplateResponse)
  strict protected
    function Obj: TDeleteCustomVerificationEmailTemplateResponse;
  end;
  
implementation

{ TDeleteCustomVerificationEmailTemplateResponse }

function TDeleteCustomVerificationEmailTemplateResponse.Obj: TDeleteCustomVerificationEmailTemplateResponse;
begin
  Result := Self;
end;

end.
