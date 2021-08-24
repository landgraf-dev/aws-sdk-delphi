unit AWS.SESv2.Model.CreateCustomVerificationEmailTemplateResponse;

interface

uses
  AWS.Runtime.Model;

type
  TCreateCustomVerificationEmailTemplateResponse = class;
  
  ICreateCustomVerificationEmailTemplateResponse = interface(IAmazonWebServiceResponse)
    function Obj: TCreateCustomVerificationEmailTemplateResponse;
  end;
  
  TCreateCustomVerificationEmailTemplateResponse = class(TAmazonWebServiceResponse, ICreateCustomVerificationEmailTemplateResponse)
  strict protected
    function Obj: TCreateCustomVerificationEmailTemplateResponse;
  end;
  
implementation

{ TCreateCustomVerificationEmailTemplateResponse }

function TCreateCustomVerificationEmailTemplateResponse.Obj: TCreateCustomVerificationEmailTemplateResponse;
begin
  Result := Self;
end;

end.
