unit AWS.SES.Model.DeleteReceiptRuleSetRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.Nullable;

type
  TDeleteReceiptRuleSetRequest = class;
  
  IDeleteReceiptRuleSetRequest = interface
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
    function Obj: TDeleteReceiptRuleSetRequest;
    function IsSetRuleSetName: Boolean;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
  TDeleteReceiptRuleSetRequest = class(TAmazonSimpleEmailServiceRequest, IDeleteReceiptRuleSetRequest)
  strict private
    FRuleSetName: Nullable<string>;
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
  strict protected
    function Obj: TDeleteReceiptRuleSetRequest;
  public
    function IsSetRuleSetName: Boolean;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
implementation

{ TDeleteReceiptRuleSetRequest }

function TDeleteReceiptRuleSetRequest.Obj: TDeleteReceiptRuleSetRequest;
begin
  Result := Self;
end;

function TDeleteReceiptRuleSetRequest.GetRuleSetName: string;
begin
  Result := FRuleSetName.ValueOrDefault;
end;

procedure TDeleteReceiptRuleSetRequest.SetRuleSetName(const Value: string);
begin
  FRuleSetName := Value;
end;

function TDeleteReceiptRuleSetRequest.IsSetRuleSetName: Boolean;
begin
  Result := FRuleSetName.HasValue;
end;

end.
