unit AWS.SESv2.Model.UpdateEmailTemplateResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUpdateEmailTemplateResponse = class;
  
  IUpdateEmailTemplateResponse = interface(IAmazonWebServiceResponse)
    function Obj: TUpdateEmailTemplateResponse;
  end;
  
  TUpdateEmailTemplateResponse = class(TAmazonWebServiceResponse, IUpdateEmailTemplateResponse)
  strict protected
    function Obj: TUpdateEmailTemplateResponse;
  end;
  
implementation

{ TUpdateEmailTemplateResponse }

function TUpdateEmailTemplateResponse.Obj: TUpdateEmailTemplateResponse;
begin
  Result := Self;
end;

end.
