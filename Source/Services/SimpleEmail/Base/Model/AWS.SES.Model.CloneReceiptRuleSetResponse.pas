unit AWS.SES.Model.CloneReceiptRuleSetResponse;

interface

uses
  AWS.Runtime.Model;

type
  TCloneReceiptRuleSetResponse = class;
  
  ICloneReceiptRuleSetResponse = interface(IAmazonWebServiceResponse)
    function Obj: TCloneReceiptRuleSetResponse;
  end;
  
  TCloneReceiptRuleSetResponse = class(TAmazonWebServiceResponse, ICloneReceiptRuleSetResponse)
  strict protected
    function Obj: TCloneReceiptRuleSetResponse;
  end;
  
implementation

{ TCloneReceiptRuleSetResponse }

function TCloneReceiptRuleSetResponse.Obj: TCloneReceiptRuleSetResponse;
begin
  Result := Self;
end;

end.
