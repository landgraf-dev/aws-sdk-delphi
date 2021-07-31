unit AWS.SES.Model.CreateReceiptRuleSetResponse;

interface

uses
  AWS.Runtime.Model;

type
  TCreateReceiptRuleSetResponse = class;
  
  ICreateReceiptRuleSetResponse = interface(IAmazonWebServiceResponse)
    function Obj: TCreateReceiptRuleSetResponse;
  end;
  
  TCreateReceiptRuleSetResponse = class(TAmazonWebServiceResponse, ICreateReceiptRuleSetResponse)
  strict protected
    function Obj: TCreateReceiptRuleSetResponse;
  end;
  
implementation

{ TCreateReceiptRuleSetResponse }

function TCreateReceiptRuleSetResponse.Obj: TCreateReceiptRuleSetResponse;
begin
  Result := Self;
end;

end.
