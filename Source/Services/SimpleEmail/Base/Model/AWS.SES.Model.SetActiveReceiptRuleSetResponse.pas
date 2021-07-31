unit AWS.SES.Model.SetActiveReceiptRuleSetResponse;

interface

uses
  AWS.Runtime.Model;

type
  TSetActiveReceiptRuleSetResponse = class;
  
  ISetActiveReceiptRuleSetResponse = interface(IAmazonWebServiceResponse)
    function Obj: TSetActiveReceiptRuleSetResponse;
  end;
  
  TSetActiveReceiptRuleSetResponse = class(TAmazonWebServiceResponse, ISetActiveReceiptRuleSetResponse)
  strict protected
    function Obj: TSetActiveReceiptRuleSetResponse;
  end;
  
implementation

{ TSetActiveReceiptRuleSetResponse }

function TSetActiveReceiptRuleSetResponse.Obj: TSetActiveReceiptRuleSetResponse;
begin
  Result := Self;
end;

end.
