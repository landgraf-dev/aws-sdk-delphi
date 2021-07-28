unit AWS.SES.Model.DescribeReceiptRuleResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.ReceiptRule;

type
  TDescribeReceiptRuleResponse = class;
  
  IDescribeReceiptRuleResponse = interface
    function GetRule: TReceiptRule;
    procedure SetRule(const Value: TReceiptRule);
    function Obj: TDescribeReceiptRuleResponse;
    function IsSetRule: Boolean;
    property Rule: TReceiptRule read GetRule write SetRule;
  end;
  
  TDescribeReceiptRuleResponse = class(TAmazonWebServiceResponse, IDescribeReceiptRuleResponse)
  strict private
    FRule: TReceiptRule;
    function GetRule: TReceiptRule;
    procedure SetRule(const Value: TReceiptRule);
  strict protected
    function Obj: TDescribeReceiptRuleResponse;
  public
    destructor Destroy; override;
    function IsSetRule: Boolean;
    property Rule: TReceiptRule read GetRule write SetRule;
  end;
  
implementation

{ TDescribeReceiptRuleResponse }

destructor TDescribeReceiptRuleResponse.Destroy;
begin
  FRule.Free;
  inherited;
end;

function TDescribeReceiptRuleResponse.Obj: TDescribeReceiptRuleResponse;
begin
  Result := Self;
end;

function TDescribeReceiptRuleResponse.GetRule: TReceiptRule;
begin
  Result := FRule;
end;

procedure TDescribeReceiptRuleResponse.SetRule(const Value: TReceiptRule);
begin
  if FRule <> Value then
  begin
    FRule.Free;
    FRule := Value;
  end;
end;

function TDescribeReceiptRuleResponse.IsSetRule: Boolean;
begin
  Result := FRule <> nil;
end;

end.
