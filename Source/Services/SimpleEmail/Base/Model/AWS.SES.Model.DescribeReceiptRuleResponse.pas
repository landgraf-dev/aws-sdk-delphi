unit AWS.SES.Model.DescribeReceiptRuleResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.ReceiptRule;

type
  TDescribeReceiptRuleResponse = class;
  
  IDescribeReceiptRuleResponse = interface(IAmazonWebServiceResponse)
    function GetRule: TReceiptRule;
    procedure SetRule(const Value: TReceiptRule);
    function GetKeepRule: Boolean;
    procedure SetKeepRule(const Value: Boolean);
    function Obj: TDescribeReceiptRuleResponse;
    function IsSetRule: Boolean;
    property Rule: TReceiptRule read GetRule write SetRule;
    property KeepRule: Boolean read GetKeepRule write SetKeepRule;
  end;
  
  TDescribeReceiptRuleResponse = class(TAmazonWebServiceResponse, IDescribeReceiptRuleResponse)
  strict private
    FRule: TReceiptRule;
    FKeepRule: Boolean;
    function GetRule: TReceiptRule;
    procedure SetRule(const Value: TReceiptRule);
    function GetKeepRule: Boolean;
    procedure SetKeepRule(const Value: Boolean);
  strict protected
    function Obj: TDescribeReceiptRuleResponse;
  public
    destructor Destroy; override;
    function IsSetRule: Boolean;
    property Rule: TReceiptRule read GetRule write SetRule;
    property KeepRule: Boolean read GetKeepRule write SetKeepRule;
  end;
  
implementation

{ TDescribeReceiptRuleResponse }

destructor TDescribeReceiptRuleResponse.Destroy;
begin
  Rule := nil;
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
    if not KeepRule then
      FRule.Free;
    FRule := Value;
  end;
end;

function TDescribeReceiptRuleResponse.GetKeepRule: Boolean;
begin
  Result := FKeepRule;
end;

procedure TDescribeReceiptRuleResponse.SetKeepRule(const Value: Boolean);
begin
  FKeepRule := Value;
end;

function TDescribeReceiptRuleResponse.IsSetRule: Boolean;
begin
  Result := FRule <> nil;
end;

end.
