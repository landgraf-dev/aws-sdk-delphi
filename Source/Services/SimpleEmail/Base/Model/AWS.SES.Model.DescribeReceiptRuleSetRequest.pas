unit AWS.SES.Model.DescribeReceiptRuleSetRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TDescribeReceiptRuleSetRequest = class;
  
  IDescribeReceiptRuleSetRequest = interface
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
    function Obj: TDescribeReceiptRuleSetRequest;
    function IsSetRuleSetName: Boolean;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
  TDescribeReceiptRuleSetRequest = class(TAmazonSimpleEmailServiceRequest, IDescribeReceiptRuleSetRequest)
  strict private
    FRuleSetName: Nullable<string>;
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
  strict protected
    function Obj: TDescribeReceiptRuleSetRequest;
  public
    function IsSetRuleSetName: Boolean;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
implementation

{ TDescribeReceiptRuleSetRequest }

function TDescribeReceiptRuleSetRequest.Obj: TDescribeReceiptRuleSetRequest;
begin
  Result := Self;
end;

function TDescribeReceiptRuleSetRequest.GetRuleSetName: string;
begin
  Result := FRuleSetName.ValueOrDefault;
end;

procedure TDescribeReceiptRuleSetRequest.SetRuleSetName(const Value: string);
begin
  FRuleSetName := Value;
end;

function TDescribeReceiptRuleSetRequest.IsSetRuleSetName: Boolean;
begin
  Result := FRuleSetName.HasValue;
end;

end.
