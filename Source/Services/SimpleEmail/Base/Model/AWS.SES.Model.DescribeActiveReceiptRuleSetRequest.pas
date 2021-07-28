unit AWS.SES.Model.DescribeActiveReceiptRuleSetRequest;

interface

uses
  AWS.SES.Model.Request;

type
  TDescribeActiveReceiptRuleSetRequest = class;
  
  IDescribeActiveReceiptRuleSetRequest = interface
    function Obj: TDescribeActiveReceiptRuleSetRequest;
  end;
  
  TDescribeActiveReceiptRuleSetRequest = class(TAmazonSimpleEmailServiceRequest, IDescribeActiveReceiptRuleSetRequest)
  strict protected
    function Obj: TDescribeActiveReceiptRuleSetRequest;
  end;
  
implementation

{ TDescribeActiveReceiptRuleSetRequest }

function TDescribeActiveReceiptRuleSetRequest.Obj: TDescribeActiveReceiptRuleSetRequest;
begin
  Result := Self;
end;

end.
