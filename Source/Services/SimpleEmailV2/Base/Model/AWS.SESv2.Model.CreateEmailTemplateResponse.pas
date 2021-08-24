unit AWS.SESv2.Model.CreateEmailTemplateResponse;

interface

uses
  AWS.Runtime.Model;

type
  TCreateEmailTemplateResponse = class;
  
  ICreateEmailTemplateResponse = interface(IAmazonWebServiceResponse)
    function Obj: TCreateEmailTemplateResponse;
  end;
  
  TCreateEmailTemplateResponse = class(TAmazonWebServiceResponse, ICreateEmailTemplateResponse)
  strict protected
    function Obj: TCreateEmailTemplateResponse;
  end;
  
implementation

{ TCreateEmailTemplateResponse }

function TCreateEmailTemplateResponse.Obj: TCreateEmailTemplateResponse;
begin
  Result := Self;
end;

end.
