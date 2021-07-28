unit AWS.SES.Model.ListReceiptRuleSetsResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SES.Model.ReceiptRuleSetMetadata;

type
  TListReceiptRuleSetsResponse = class;
  
  IListReceiptRuleSetsResponse = interface
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetRuleSets: TObjectList<TReceiptRuleSetMetadata>;
    procedure SetRuleSets(const Value: TObjectList<TReceiptRuleSetMetadata>);
    function Obj: TListReceiptRuleSetsResponse;
    function IsSetNextToken: Boolean;
    function IsSetRuleSets: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property RuleSets: TObjectList<TReceiptRuleSetMetadata> read GetRuleSets write SetRuleSets;
  end;
  
  TListReceiptRuleSetsResponse = class(TAmazonWebServiceResponse, IListReceiptRuleSetsResponse)
  strict private
    FNextToken: Nullable<string>;
    FRuleSets: TObjectList<TReceiptRuleSetMetadata>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetRuleSets: TObjectList<TReceiptRuleSetMetadata>;
    procedure SetRuleSets(const Value: TObjectList<TReceiptRuleSetMetadata>);
  strict protected
    function Obj: TListReceiptRuleSetsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetRuleSets: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property RuleSets: TObjectList<TReceiptRuleSetMetadata> read GetRuleSets write SetRuleSets;
  end;
  
implementation

{ TListReceiptRuleSetsResponse }

constructor TListReceiptRuleSetsResponse.Create;
begin
  inherited;
  FRuleSets := TObjectList<TReceiptRuleSetMetadata>.Create;
end;

destructor TListReceiptRuleSetsResponse.Destroy;
begin
  FRuleSets.Free;
  inherited;
end;

function TListReceiptRuleSetsResponse.Obj: TListReceiptRuleSetsResponse;
begin
  Result := Self;
end;

function TListReceiptRuleSetsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListReceiptRuleSetsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListReceiptRuleSetsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListReceiptRuleSetsResponse.GetRuleSets: TObjectList<TReceiptRuleSetMetadata>;
begin
  Result := FRuleSets;
end;

procedure TListReceiptRuleSetsResponse.SetRuleSets(const Value: TObjectList<TReceiptRuleSetMetadata>);
begin
  if FRuleSets <> Value then
  begin
    FRuleSets.Free;
    FRuleSets := Value;
  end;
end;

function TListReceiptRuleSetsResponse.IsSetRuleSets: Boolean;
begin
  Result := (FRuleSets <> nil) and (FRuleSets.Count > 0);
end;

end.
