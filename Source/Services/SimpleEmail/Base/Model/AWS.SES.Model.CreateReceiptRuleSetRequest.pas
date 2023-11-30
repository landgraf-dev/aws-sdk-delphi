unit AWS.SES.Model.CreateReceiptRuleSetRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.Nullable;

type
  TCreateReceiptRuleSetRequest = class;
  
  ICreateReceiptRuleSetRequest = interface
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
    function Obj: TCreateReceiptRuleSetRequest;
    function IsSetRuleSetName: Boolean;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
  TCreateReceiptRuleSetRequest = class(TAmazonSimpleEmailServiceRequest, ICreateReceiptRuleSetRequest)
  strict private
    FRuleSetName: Nullable<string>;
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
  strict protected
    function Obj: TCreateReceiptRuleSetRequest;
  public
    function IsSetRuleSetName: Boolean;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
implementation

{ TCreateReceiptRuleSetRequest }

function TCreateReceiptRuleSetRequest.Obj: TCreateReceiptRuleSetRequest;
begin
  Result := Self;
end;

function TCreateReceiptRuleSetRequest.GetRuleSetName: string;
begin
  Result := FRuleSetName.ValueOrDefault;
end;

procedure TCreateReceiptRuleSetRequest.SetRuleSetName(const Value: string);
begin
  FRuleSetName := Value;
end;

function TCreateReceiptRuleSetRequest.IsSetRuleSetName: Boolean;
begin
  Result := FRuleSetName.HasValue;
end;

end.
