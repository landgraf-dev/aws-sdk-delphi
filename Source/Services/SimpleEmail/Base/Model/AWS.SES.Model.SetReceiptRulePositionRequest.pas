unit AWS.SES.Model.SetReceiptRulePositionRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TSetReceiptRulePositionRequest = class;
  
  ISetReceiptRulePositionRequest = interface
    function GetAfter: string;
    procedure SetAfter(const Value: string);
    function GetRuleName: string;
    procedure SetRuleName(const Value: string);
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
    function Obj: TSetReceiptRulePositionRequest;
    function IsSetAfter: Boolean;
    function IsSetRuleName: Boolean;
    function IsSetRuleSetName: Boolean;
    property After: string read GetAfter write SetAfter;
    property RuleName: string read GetRuleName write SetRuleName;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
  TSetReceiptRulePositionRequest = class(TAmazonSimpleEmailServiceRequest, ISetReceiptRulePositionRequest)
  strict private
    FAfter: Nullable<string>;
    FRuleName: Nullable<string>;
    FRuleSetName: Nullable<string>;
    function GetAfter: string;
    procedure SetAfter(const Value: string);
    function GetRuleName: string;
    procedure SetRuleName(const Value: string);
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
  strict protected
    function Obj: TSetReceiptRulePositionRequest;
  public
    function IsSetAfter: Boolean;
    function IsSetRuleName: Boolean;
    function IsSetRuleSetName: Boolean;
    property After: string read GetAfter write SetAfter;
    property RuleName: string read GetRuleName write SetRuleName;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
implementation

{ TSetReceiptRulePositionRequest }

function TSetReceiptRulePositionRequest.Obj: TSetReceiptRulePositionRequest;
begin
  Result := Self;
end;

function TSetReceiptRulePositionRequest.GetAfter: string;
begin
  Result := FAfter.ValueOrDefault;
end;

procedure TSetReceiptRulePositionRequest.SetAfter(const Value: string);
begin
  FAfter := Value;
end;

function TSetReceiptRulePositionRequest.IsSetAfter: Boolean;
begin
  Result := FAfter.HasValue;
end;

function TSetReceiptRulePositionRequest.GetRuleName: string;
begin
  Result := FRuleName.ValueOrDefault;
end;

procedure TSetReceiptRulePositionRequest.SetRuleName(const Value: string);
begin
  FRuleName := Value;
end;

function TSetReceiptRulePositionRequest.IsSetRuleName: Boolean;
begin
  Result := FRuleName.HasValue;
end;

function TSetReceiptRulePositionRequest.GetRuleSetName: string;
begin
  Result := FRuleSetName.ValueOrDefault;
end;

procedure TSetReceiptRulePositionRequest.SetRuleSetName(const Value: string);
begin
  FRuleSetName := Value;
end;

function TSetReceiptRulePositionRequest.IsSetRuleSetName: Boolean;
begin
  Result := FRuleSetName.HasValue;
end;

end.
