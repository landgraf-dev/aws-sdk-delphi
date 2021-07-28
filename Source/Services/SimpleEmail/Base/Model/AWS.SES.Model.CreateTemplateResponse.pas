unit AWS.SES.Model.CreateTemplateResponse;

interface

uses
  AWS.Runtime.Model;

type
  TCreateTemplateResponse = class;
  
  ICreateTemplateResponse = interface
    function Obj: TCreateTemplateResponse;
  end;
  
  TCreateTemplateResponse = class(TAmazonWebServiceResponse, ICreateTemplateResponse)
  strict protected
    function Obj: TCreateTemplateResponse;
  end;
  
implementation

{ TCreateTemplateResponse }

function TCreateTemplateResponse.Obj: TCreateTemplateResponse;
begin
  Result := Self;
end;

end.
