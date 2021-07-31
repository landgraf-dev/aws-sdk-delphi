unit AWS.SES.Model.DeleteReceiptRuleResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteReceiptRuleResponse = class;
  
  IDeleteReceiptRuleResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteReceiptRuleResponse;
  end;
  
  TDeleteReceiptRuleResponse = class(TAmazonWebServiceResponse, IDeleteReceiptRuleResponse)
  strict protected
    function Obj: TDeleteReceiptRuleResponse;
  end;
  
implementation

{ TDeleteReceiptRuleResponse }

function TDeleteReceiptRuleResponse.Obj: TDeleteReceiptRuleResponse;
begin
  Result := Self;
end;

end.
