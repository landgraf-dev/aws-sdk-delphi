unit AWS.SES.Model.CreateReceiptRuleRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request, 
  AWS.SES.Model.ReceiptRule;

type
  TCreateReceiptRuleRequest = class;
  
  ICreateReceiptRuleRequest = interface
    function GetAfter: string;
    procedure SetAfter(const Value: string);
    function GetRule: TReceiptRule;
    procedure SetRule(const Value: TReceiptRule);
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
    function Obj: TCreateReceiptRuleRequest;
    function IsSetAfter: Boolean;
    function IsSetRule: Boolean;
    function IsSetRuleSetName: Boolean;
    property After: string read GetAfter write SetAfter;
    property Rule: TReceiptRule read GetRule write SetRule;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
  TCreateReceiptRuleRequest = class(TAmazonSimpleEmailServiceRequest, ICreateReceiptRuleRequest)
  strict private
    FAfter: Nullable<string>;
    FRule: TReceiptRule;
    FRuleSetName: Nullable<string>;
    function GetAfter: string;
    procedure SetAfter(const Value: string);
    function GetRule: TReceiptRule;
    procedure SetRule(const Value: TReceiptRule);
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
  strict protected
    function Obj: TCreateReceiptRuleRequest;
  public
    destructor Destroy; override;
    function IsSetAfter: Boolean;
    function IsSetRule: Boolean;
    function IsSetRuleSetName: Boolean;
    property After: string read GetAfter write SetAfter;
    property Rule: TReceiptRule read GetRule write SetRule;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
implementation

{ TCreateReceiptRuleRequest }

destructor TCreateReceiptRuleRequest.Destroy;
begin
  FRule.Free;
  inherited;
end;

function TCreateReceiptRuleRequest.Obj: TCreateReceiptRuleRequest;
begin
  Result := Self;
end;

function TCreateReceiptRuleRequest.GetAfter: string;
begin
  Result := FAfter.ValueOrDefault;
end;

procedure TCreateReceiptRuleRequest.SetAfter(const Value: string);
begin
  FAfter := Value;
end;

function TCreateReceiptRuleRequest.IsSetAfter: Boolean;
begin
  Result := FAfter.HasValue;
end;

function TCreateReceiptRuleRequest.GetRule: TReceiptRule;
begin
  Result := FRule;
end;

procedure TCreateReceiptRuleRequest.SetRule(const Value: TReceiptRule);
begin
  if FRule <> Value then
  begin
    FRule.Free;
    FRule := Value;
  end;
end;

function TCreateReceiptRuleRequest.IsSetRule: Boolean;
begin
  Result := FRule <> nil;
end;

function TCreateReceiptRuleRequest.GetRuleSetName: string;
begin
  Result := FRuleSetName.ValueOrDefault;
end;

procedure TCreateReceiptRuleRequest.SetRuleSetName(const Value: string);
begin
  FRuleSetName := Value;
end;

function TCreateReceiptRuleRequest.IsSetRuleSetName: Boolean;
begin
  Result := FRuleSetName.HasValue;
end;

end.
