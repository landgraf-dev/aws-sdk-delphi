unit AWS.SES.Model.ListReceiptRuleSetsRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.Nullable;

type
  TListReceiptRuleSetsRequest = class;
  
  IListReceiptRuleSetsRequest = interface
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListReceiptRuleSetsRequest;
    function IsSetNextToken: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListReceiptRuleSetsRequest = class(TAmazonSimpleEmailServiceRequest, IListReceiptRuleSetsRequest)
  strict private
    FNextToken: Nullable<string>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListReceiptRuleSetsRequest;
  public
    function IsSetNextToken: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListReceiptRuleSetsRequest }

function TListReceiptRuleSetsRequest.Obj: TListReceiptRuleSetsRequest;
begin
  Result := Self;
end;

function TListReceiptRuleSetsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListReceiptRuleSetsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListReceiptRuleSetsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
