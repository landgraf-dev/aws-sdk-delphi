unit AWS.SES.Model.UpdateReceiptRuleRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request, 
  AWS.SES.Model.ReceiptRule;

type
  TUpdateReceiptRuleRequest = class;
  
  IUpdateReceiptRuleRequest = interface
    function GetRule: TReceiptRule;
    procedure SetRule(const Value: TReceiptRule);
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
    function Obj: TUpdateReceiptRuleRequest;
    function IsSetRule: Boolean;
    function IsSetRuleSetName: Boolean;
    property Rule: TReceiptRule read GetRule write SetRule;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
  TUpdateReceiptRuleRequest = class(TAmazonSimpleEmailServiceRequest, IUpdateReceiptRuleRequest)
  strict private
    FRule: TReceiptRule;
    FRuleSetName: Nullable<string>;
    function GetRule: TReceiptRule;
    procedure SetRule(const Value: TReceiptRule);
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
  strict protected
    function Obj: TUpdateReceiptRuleRequest;
  public
    destructor Destroy; override;
    function IsSetRule: Boolean;
    function IsSetRuleSetName: Boolean;
    property Rule: TReceiptRule read GetRule write SetRule;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
implementation

{ TUpdateReceiptRuleRequest }

destructor TUpdateReceiptRuleRequest.Destroy;
begin
  FRule.Free;
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
    FRule.Free;
    FRule := Value;
  end;
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
