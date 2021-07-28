unit AWS.SES.Model.DescribeReceiptRuleRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TDescribeReceiptRuleRequest = class;
  
  IDescribeReceiptRuleRequest = interface
    function GetRuleName: string;
    procedure SetRuleName(const Value: string);
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
    function Obj: TDescribeReceiptRuleRequest;
    function IsSetRuleName: Boolean;
    function IsSetRuleSetName: Boolean;
    property RuleName: string read GetRuleName write SetRuleName;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
  TDescribeReceiptRuleRequest = class(TAmazonSimpleEmailServiceRequest, IDescribeReceiptRuleRequest)
  strict private
    FRuleName: Nullable<string>;
    FRuleSetName: Nullable<string>;
    function GetRuleName: string;
    procedure SetRuleName(const Value: string);
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
  strict protected
    function Obj: TDescribeReceiptRuleRequest;
  public
    function IsSetRuleName: Boolean;
    function IsSetRuleSetName: Boolean;
    property RuleName: string read GetRuleName write SetRuleName;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
implementation

{ TDescribeReceiptRuleRequest }

function TDescribeReceiptRuleRequest.Obj: TDescribeReceiptRuleRequest;
begin
  Result := Self;
end;

function TDescribeReceiptRuleRequest.GetRuleName: string;
begin
  Result := FRuleName.ValueOrDefault;
end;

procedure TDescribeReceiptRuleRequest.SetRuleName(const Value: string);
begin
  FRuleName := Value;
end;

function TDescribeReceiptRuleRequest.IsSetRuleName: Boolean;
begin
  Result := FRuleName.HasValue;
end;

function TDescribeReceiptRuleRequest.GetRuleSetName: string;
begin
  Result := FRuleSetName.ValueOrDefault;
end;

procedure TDescribeReceiptRuleRequest.SetRuleSetName(const Value: string);
begin
  FRuleSetName := Value;
end;

function TDescribeReceiptRuleRequest.IsSetRuleSetName: Boolean;
begin
  Result := FRuleSetName.HasValue;
end;

end.
