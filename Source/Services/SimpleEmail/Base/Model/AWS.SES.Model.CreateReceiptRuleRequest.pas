unit AWS.SES.Model.CreateReceiptRuleRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.Nullable, 
  AWS.SES.Model.ReceiptRule;

type
  TCreateReceiptRuleRequest = class;
  
  ICreateReceiptRuleRequest = interface
    function GetAfter: string;
    procedure SetAfter(const Value: string);
    function GetRule: TReceiptRule;
    procedure SetRule(const Value: TReceiptRule);
    function GetKeepRule: Boolean;
    procedure SetKeepRule(const Value: Boolean);
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
    function Obj: TCreateReceiptRuleRequest;
    function IsSetAfter: Boolean;
    function IsSetRule: Boolean;
    function IsSetRuleSetName: Boolean;
    property After: string read GetAfter write SetAfter;
    property Rule: TReceiptRule read GetRule write SetRule;
    property KeepRule: Boolean read GetKeepRule write SetKeepRule;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
  TCreateReceiptRuleRequest = class(TAmazonSimpleEmailServiceRequest, ICreateReceiptRuleRequest)
  strict private
    FAfter: Nullable<string>;
    FRule: TReceiptRule;
    FKeepRule: Boolean;
    FRuleSetName: Nullable<string>;
    function GetAfter: string;
    procedure SetAfter(const Value: string);
    function GetRule: TReceiptRule;
    procedure SetRule(const Value: TReceiptRule);
    function GetKeepRule: Boolean;
    procedure SetKeepRule(const Value: Boolean);
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
    property KeepRule: Boolean read GetKeepRule write SetKeepRule;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
implementation

{ TCreateReceiptRuleRequest }

destructor TCreateReceiptRuleRequest.Destroy;
begin
  Rule := nil;
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
    if not KeepRule then
      FRule.Free;
    FRule := Value;
  end;
end;

function TCreateReceiptRuleRequest.GetKeepRule: Boolean;
begin
  Result := FKeepRule;
end;

procedure TCreateReceiptRuleRequest.SetKeepRule(const Value: Boolean);
begin
  FKeepRule := Value;
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
