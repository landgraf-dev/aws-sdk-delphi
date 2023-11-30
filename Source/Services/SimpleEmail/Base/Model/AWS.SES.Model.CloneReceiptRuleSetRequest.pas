unit AWS.SES.Model.CloneReceiptRuleSetRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.Nullable;

type
  TCloneReceiptRuleSetRequest = class;
  
  ICloneReceiptRuleSetRequest = interface
    function GetOriginalRuleSetName: string;
    procedure SetOriginalRuleSetName(const Value: string);
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
    function Obj: TCloneReceiptRuleSetRequest;
    function IsSetOriginalRuleSetName: Boolean;
    function IsSetRuleSetName: Boolean;
    property OriginalRuleSetName: string read GetOriginalRuleSetName write SetOriginalRuleSetName;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
  TCloneReceiptRuleSetRequest = class(TAmazonSimpleEmailServiceRequest, ICloneReceiptRuleSetRequest)
  strict private
    FOriginalRuleSetName: Nullable<string>;
    FRuleSetName: Nullable<string>;
    function GetOriginalRuleSetName: string;
    procedure SetOriginalRuleSetName(const Value: string);
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
  strict protected
    function Obj: TCloneReceiptRuleSetRequest;
  public
    function IsSetOriginalRuleSetName: Boolean;
    function IsSetRuleSetName: Boolean;
    property OriginalRuleSetName: string read GetOriginalRuleSetName write SetOriginalRuleSetName;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
implementation

{ TCloneReceiptRuleSetRequest }

function TCloneReceiptRuleSetRequest.Obj: TCloneReceiptRuleSetRequest;
begin
  Result := Self;
end;

function TCloneReceiptRuleSetRequest.GetOriginalRuleSetName: string;
begin
  Result := FOriginalRuleSetName.ValueOrDefault;
end;

procedure TCloneReceiptRuleSetRequest.SetOriginalRuleSetName(const Value: string);
begin
  FOriginalRuleSetName := Value;
end;

function TCloneReceiptRuleSetRequest.IsSetOriginalRuleSetName: Boolean;
begin
  Result := FOriginalRuleSetName.HasValue;
end;

function TCloneReceiptRuleSetRequest.GetRuleSetName: string;
begin
  Result := FRuleSetName.ValueOrDefault;
end;

procedure TCloneReceiptRuleSetRequest.SetRuleSetName(const Value: string);
begin
  FRuleSetName := Value;
end;

function TCloneReceiptRuleSetRequest.IsSetRuleSetName: Boolean;
begin
  Result := FRuleSetName.HasValue;
end;

end.
