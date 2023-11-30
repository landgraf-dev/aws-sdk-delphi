unit AWS.SES.Model.UpdateReceiptRuleRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.SES.Model.ReceiptRule, 
  AWS.Nullable;

type
  TUpdateReceiptRuleRequest = class;
  
  IUpdateReceiptRuleRequest = interface
    function GetRule: TReceiptRule;
    procedure SetRule(const Value: TReceiptRule);
    function GetKeepRule: Boolean;
    procedure SetKeepRule(const Value: Boolean);
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
    function Obj: TUpdateReceiptRuleRequest;
    function IsSetRule: Boolean;
    function IsSetRuleSetName: Boolean;
    property Rule: TReceiptRule read GetRule write SetRule;
    property KeepRule: Boolean read GetKeepRule write SetKeepRule;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
  TUpdateReceiptRuleRequest = class(TAmazonSimpleEmailServiceRequest, IUpdateReceiptRuleRequest)
  strict private
    FRule: TReceiptRule;
    FKeepRule: Boolean;
    FRuleSetName: Nullable<string>;
    function GetRule: TReceiptRule;
    procedure SetRule(const Value: TReceiptRule);
    function GetKeepRule: Boolean;
    procedure SetKeepRule(const Value: Boolean);
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
  strict protected
    function Obj: TUpdateReceiptRuleRequest;
  public
    destructor Destroy; override;
    function IsSetRule: Boolean;
    function IsSetRuleSetName: Boolean;
    property Rule: TReceiptRule read GetRule write SetRule;
    property KeepRule: Boolean read GetKeepRule write SetKeepRule;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
implementation

{ TUpdateReceiptRuleRequest }

destructor TUpdateReceiptRuleRequest.Destroy;
begin
  Rule := nil;
  inherited;
end;

function TUpdateReceiptRuleRequest.Obj: TUpdateReceiptRuleRequest;
begin
  Result := Self;
end;

function TUpdateReceiptRuleRequest.GetRule: TReceiptRule;
begin
  Result := FRule;
end;

procedure TUpdateReceiptRuleRequest.SetRule(const Value: TReceiptRule);
begin
  if FRule <> Value then
  begin
    if not KeepRule then
      FRule.Free;
    FRule := Value;
  end;
end;

function TUpdateReceiptRuleRequest.GetKeepRule: Boolean;
begin
  Result := FKeepRule;
end;

procedure TUpdateReceiptRuleRequest.SetKeepRule(const Value: Boolean);
begin
  FKeepRule := Value;
end;

function TUpdateReceiptRuleRequest.IsSetRule: Boolean;
begin
  Result := FRule <> nil;
end;

function TUpdateReceiptRuleRequest.GetRuleSetName: string;
begin
  Result := FRuleSetName.ValueOrDefault;
end;

procedure TUpdateReceiptRuleRequest.SetRuleSetName(const Value: string);
begin
  FRuleSetName := Value;
end;

function TUpdateReceiptRuleRequest.IsSetRuleSetName: Boolean;
begin
  Result := FRuleSetName.HasValue;
end;

end.
