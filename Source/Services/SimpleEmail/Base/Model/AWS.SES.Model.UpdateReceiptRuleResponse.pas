unit AWS.SES.Model.UpdateReceiptRuleResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUpdateReceiptRuleResponse = class;
  
  IUpdateReceiptRuleResponse = interface(IAmazonWebServiceResponse)
    function Obj: TUpdateReceiptRuleResponse;
  end;
  
  TUpdateReceiptRuleResponse = class(TAmazonWebServiceResponse, IUpdateReceiptRuleResponse)
  strict protected
    function Obj: TUpdateReceiptRuleResponse;
  end;
  
implementation

{ TUpdateReceiptRuleResponse }

function TUpdateReceiptRuleResponse.Obj: TUpdateReceiptRuleResponse;
begin
  Result := Self;
end;

end.
