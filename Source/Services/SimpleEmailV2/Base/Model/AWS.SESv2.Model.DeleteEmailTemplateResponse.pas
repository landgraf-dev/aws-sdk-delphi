unit AWS.SESv2.Model.DeleteEmailTemplateResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteEmailTemplateResponse = class;
  
  IDeleteEmailTemplateResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteEmailTemplateResponse;
  end;
  
  TDeleteEmailTemplateResponse = class(TAmazonWebServiceResponse, IDeleteEmailTemplateResponse)
  strict protected
    function Obj: TDeleteEmailTemplateResponse;
  end;
  
implementation

{ TDeleteEmailTemplateResponse }

function TDeleteEmailTemplateResponse.Obj: TDeleteEmailTemplateResponse;
begin
  Result := Self;
end;

end.
