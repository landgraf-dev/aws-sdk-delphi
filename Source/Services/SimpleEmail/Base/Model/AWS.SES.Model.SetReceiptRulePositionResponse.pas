unit AWS.SES.Model.SetReceiptRulePositionResponse;

interface

uses
  AWS.Runtime.Model;

type
  TSetReceiptRulePositionResponse = class;
  
  ISetReceiptRulePositionResponse = interface(IAmazonWebServiceResponse)
    function Obj: TSetReceiptRulePositionResponse;
  end;
  
  TSetReceiptRulePositionResponse = class(TAmazonWebServiceResponse, ISetReceiptRulePositionResponse)
  strict protected
    function Obj: TSetReceiptRulePositionResponse;
  end;
  
implementation

{ TSetReceiptRulePositionResponse }

function TSetReceiptRulePositionResponse.Obj: TSetReceiptRulePositionResponse;
begin
  Result := Self;
end;

end.
