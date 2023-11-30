unit AWS.SES.Model.ListReceiptRuleSetsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SES.Model.ReceiptRuleSetMetadata;

type
  TListReceiptRuleSetsResponse = class;
  
  IListReceiptRuleSetsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetRuleSets: TObjectList<TReceiptRuleSetMetadata>;
    procedure SetRuleSets(const Value: TObjectList<TReceiptRuleSetMetadata>);
    function GetKeepRuleSets: Boolean;
    procedure SetKeepRuleSets(const Value: Boolean);
    function Obj: TListReceiptRuleSetsResponse;
    function IsSetNextToken: Boolean;
    function IsSetRuleSets: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property RuleSets: TObjectList<TReceiptRuleSetMetadata> read GetRuleSets write SetRuleSets;
    property KeepRuleSets: Boolean read GetKeepRuleSets write SetKeepRuleSets;
  end;
  
  TListReceiptRuleSetsResponse = class(TAmazonWebServiceResponse, IListReceiptRuleSetsResponse)
  strict private
    FNextToken: Nullable<string>;
    FRuleSets: TObjectList<TReceiptRuleSetMetadata>;
    FKeepRuleSets: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetRuleSets: TObjectList<TReceiptRuleSetMetadata>;
    procedure SetRuleSets(const Value: TObjectList<TReceiptRuleSetMetadata>);
    function GetKeepRuleSets: Boolean;
    procedure SetKeepRuleSets(const Value: Boolean);
  strict protected
    function Obj: TListReceiptRuleSetsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetRuleSets: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property RuleSets: TObjectList<TReceiptRuleSetMetadata> read GetRuleSets write SetRuleSets;
    property KeepRuleSets: Boolean read GetKeepRuleSets write SetKeepRuleSets;
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
  RuleSets := nil;
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
    if not KeepRuleSets then
      FRuleSets.Free;
    FRuleSets := Value;
  end;
end;

function TListReceiptRuleSetsResponse.GetKeepRuleSets: Boolean;
begin
  Result := FKeepRuleSets;
end;

procedure TListReceiptRuleSetsResponse.SetKeepRuleSets(const Value: Boolean);
begin
  FKeepRuleSets := Value;
end;

function TListReceiptRuleSetsResponse.IsSetRuleSets: Boolean;
begin
  Result := (FRuleSets <> nil) and (FRuleSets.Count > 0);
end;

end.
