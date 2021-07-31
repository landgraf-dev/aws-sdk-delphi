unit AWS.SES.Model.CreateReceiptRuleResponse;

interface

uses
  AWS.Runtime.Model;

type
  TCreateReceiptRuleResponse = class;
  
  ICreateReceiptRuleResponse = interface(IAmazonWebServiceResponse)
    function Obj: TCreateReceiptRuleResponse;
  end;
  
  TCreateReceiptRuleResponse = class(TAmazonWebServiceResponse, ICreateReceiptRuleResponse)
  strict protected
    function Obj: TCreateReceiptRuleResponse;
  end;
  
implementation

{ TCreateReceiptRuleResponse }

function TCreateReceiptRuleResponse.Obj: TCreateReceiptRuleResponse;
begin
  Result := Self;
end;

end.
