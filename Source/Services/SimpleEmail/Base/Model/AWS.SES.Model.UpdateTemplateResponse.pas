unit AWS.SES.Model.UpdateTemplateResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUpdateTemplateResponse = class;
  
  IUpdateTemplateResponse = interface(IAmazonWebServiceResponse)
    function Obj: TUpdateTemplateResponse;
  end;
  
  TUpdateTemplateResponse = class(TAmazonWebServiceResponse, IUpdateTemplateResponse)
  strict protected
    function Obj: TUpdateTemplateResponse;
  end;
  
implementation

{ TUpdateTemplateResponse }

function TUpdateTemplateResponse.Obj: TUpdateTemplateResponse;
begin
  Result := Self;
end;

end.
