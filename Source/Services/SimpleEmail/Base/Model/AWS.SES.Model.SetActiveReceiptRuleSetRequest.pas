unit AWS.SES.Model.SetActiveReceiptRuleSetRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.Nullable;

type
  TSetActiveReceiptRuleSetRequest = class;
  
  ISetActiveReceiptRuleSetRequest = interface
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
    function Obj: TSetActiveReceiptRuleSetRequest;
    function IsSetRuleSetName: Boolean;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
  TSetActiveReceiptRuleSetRequest = class(TAmazonSimpleEmailServiceRequest, ISetActiveReceiptRuleSetRequest)
  strict private
    FRuleSetName: Nullable<string>;
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
  strict protected
    function Obj: TSetActiveReceiptRuleSetRequest;
  public
    function IsSetRuleSetName: Boolean;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
implementation

{ TSetActiveReceiptRuleSetRequest }

function TSetActiveReceiptRuleSetRequest.Obj: TSetActiveReceiptRuleSetRequest;
begin
  Result := Self;
end;

function TSetActiveReceiptRuleSetRequest.GetRuleSetName: string;
begin
  Result := FRuleSetName.ValueOrDefault;
end;

procedure TSetActiveReceiptRuleSetRequest.SetRuleSetName(const Value: string);
begin
  FRuleSetName := Value;
end;

function TSetActiveReceiptRuleSetRequest.IsSetRuleSetName: Boolean;
begin
  Result := FRuleSetName.HasValue;
end;

end.
