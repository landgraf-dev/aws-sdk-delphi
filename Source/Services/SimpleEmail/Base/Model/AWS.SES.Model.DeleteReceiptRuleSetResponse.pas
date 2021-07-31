unit AWS.SES.Model.DeleteReceiptRuleSetResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteReceiptRuleSetResponse = class;
  
  IDeleteReceiptRuleSetResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteReceiptRuleSetResponse;
  end;
  
  TDeleteReceiptRuleSetResponse = class(TAmazonWebServiceResponse, IDeleteReceiptRuleSetResponse)
  strict protected
    function Obj: TDeleteReceiptRuleSetResponse;
  end;
  
implementation

{ TDeleteReceiptRuleSetResponse }

function TDeleteReceiptRuleSetResponse.Obj: TDeleteReceiptRuleSetResponse;
begin
  Result := Self;
end;

end.
