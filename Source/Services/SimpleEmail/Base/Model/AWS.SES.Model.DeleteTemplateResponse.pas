unit AWS.SES.Model.DeleteTemplateResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteTemplateResponse = class;
  
  IDeleteTemplateResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteTemplateResponse;
  end;
  
  TDeleteTemplateResponse = class(TAmazonWebServiceResponse, IDeleteTemplateResponse)
  strict protected
    function Obj: TDeleteTemplateResponse;
  end;
  
implementation

{ TDeleteTemplateResponse }

function TDeleteTemplateResponse.Obj: TDeleteTemplateResponse;
begin
  Result := Self;
end;

end.
