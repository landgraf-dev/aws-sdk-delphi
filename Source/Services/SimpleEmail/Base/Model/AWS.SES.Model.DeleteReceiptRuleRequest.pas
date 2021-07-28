unit AWS.SES.Model.DeleteReceiptRuleRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TDeleteReceiptRuleRequest = class;
  
  IDeleteReceiptRuleRequest = interface
    function GetRuleName: string;
    procedure SetRuleName(const Value: string);
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
    function Obj: TDeleteReceiptRuleRequest;
    function IsSetRuleName: Boolean;
    function IsSetRuleSetName: Boolean;
    property RuleName: string read GetRuleName write SetRuleName;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
  TDeleteReceiptRuleRequest = class(TAmazonSimpleEmailServiceRequest, IDeleteReceiptRuleRequest)
  strict private
    FRuleName: Nullable<string>;
    FRuleSetName: Nullable<string>;
    function GetRuleName: string;
    procedure SetRuleName(const Value: string);
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
  strict protected
    function Obj: TDeleteReceiptRuleRequest;
  public
    function IsSetRuleName: Boolean;
    function IsSetRuleSetName: Boolean;
    property RuleName: string read GetRuleName write SetRuleName;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
implementation

{ TDeleteReceiptRuleRequest }

function TDeleteReceiptRuleRequest.Obj: TDeleteReceiptRuleRequest;
begin
  Result := Self;
end;

function TDeleteReceiptRuleRequest.GetRuleName: string;
begin
  Result := FRuleName.ValueOrDefault;
end;

procedure TDeleteReceiptRuleRequest.SetRuleName(const Value: string);
begin
  FRuleName := Value;
end;

function TDeleteReceiptRuleRequest.IsSetRuleName: Boolean;
begin
  Result := FRuleName.HasValue;
end;

function TDeleteReceiptRuleRequest.GetRuleSetName: string;
begin
  Result := FRuleSetName.ValueOrDefault;
end;

procedure TDeleteReceiptRuleRequest.SetRuleSetName(const Value: string);
begin
  FRuleSetName := Value;
end;

function TDeleteReceiptRuleRequest.IsSetRuleSetName: Boolean;
begin
  Result := FRuleSetName.HasValue;
end;

end.
