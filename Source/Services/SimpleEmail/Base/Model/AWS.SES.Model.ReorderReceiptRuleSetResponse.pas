unit AWS.SES.Model.ReorderReceiptRuleSetResponse;

interface

uses
  AWS.Runtime.Model;

type
  TReorderReceiptRuleSetResponse = class;
  
  IReorderReceiptRuleSetResponse = interface
    function Obj: TReorderReceiptRuleSetResponse;
  end;
  
  TReorderReceiptRuleSetResponse = class(TAmazonWebServiceResponse, IReorderReceiptRuleSetResponse)
  strict protected
    function Obj: TReorderReceiptRuleSetResponse;
  end;
  
implementation

{ TReorderReceiptRuleSetResponse }

function TReorderReceiptRuleSetResponse.Obj: TReorderReceiptRuleSetResponse;
begin
  Result := Self;
end;

end.
