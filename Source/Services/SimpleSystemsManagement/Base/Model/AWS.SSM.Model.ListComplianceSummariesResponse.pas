unit AWS.SSM.Model.ListComplianceSummariesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.ComplianceSummaryItem, 
  AWS.Nullable;

type
  TListComplianceSummariesResponse = class;
  
  IListComplianceSummariesResponse = interface(IAmazonWebServiceResponse)
    function GetComplianceSummaryItems: TObjectList<TComplianceSummaryItem>;
    procedure SetComplianceSummaryItems(const Value: TObjectList<TComplianceSummaryItem>);
    function GetKeepComplianceSummaryItems: Boolean;
    procedure SetKeepComplianceSummaryItems(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListComplianceSummariesResponse;
    function IsSetComplianceSummaryItems: Boolean;
    function IsSetNextToken: Boolean;
    property ComplianceSummaryItems: TObjectList<TComplianceSummaryItem> read GetComplianceSummaryItems write SetComplianceSummaryItems;
    property KeepComplianceSummaryItems: Boolean read GetKeepComplianceSummaryItems write SetKeepComplianceSummaryItems;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListComplianceSummariesResponse = class(TAmazonWebServiceResponse, IListComplianceSummariesResponse)
  strict private
    FComplianceSummaryItems: TObjectList<TComplianceSummaryItem>;
    FKeepComplianceSummaryItems: Boolean;
    FNextToken: Nullable<string>;
    function GetComplianceSummaryItems: TObjectList<TComplianceSummaryItem>;
    procedure SetComplianceSummaryItems(const Value: TObjectList<TComplianceSummaryItem>);
    function GetKeepComplianceSummaryItems: Boolean;
    procedure SetKeepComplianceSummaryItems(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListComplianceSummariesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetComplianceSummaryItems: Boolean;
    function IsSetNextToken: Boolean;
    property ComplianceSummaryItems: TObjectList<TComplianceSummaryItem> read GetComplianceSummaryItems write SetComplianceSummaryItems;
    property KeepComplianceSummaryItems: Boolean read GetKeepComplianceSummaryItems write SetKeepComplianceSummaryItems;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListComplianceSummariesResponse }

constructor TListComplianceSummariesResponse.Create;
begin
  inherited;
  FComplianceSummaryItems := TObjectList<TComplianceSummaryItem>.Create;
end;

destructor TListComplianceSummariesResponse.Destroy;
begin
  ComplianceSummaryItems := nil;
  inherited;
end;

function TListComplianceSummariesResponse.Obj: TListComplianceSummariesResponse;
begin
  Result := Self;
end;

function TListComplianceSummariesResponse.GetComplianceSummaryItems: TObjectList<TComplianceSummaryItem>;
begin
  Result := FComplianceSummaryItems;
end;

procedure TListComplianceSummariesResponse.SetComplianceSummaryItems(const Value: TObjectList<TComplianceSummaryItem>);
begin
  if FComplianceSummaryItems <> Value then
  begin
    if not KeepComplianceSummaryItems then
      FComplianceSummaryItems.Free;
    FComplianceSummaryItems := Value;
  end;
end;

function TListComplianceSummariesResponse.GetKeepComplianceSummaryItems: Boolean;
begin
  Result := FKeepComplianceSummaryItems;
end;

procedure TListComplianceSummariesResponse.SetKeepComplianceSummaryItems(const Value: Boolean);
begin
  FKeepComplianceSummaryItems := Value;
end;

function TListComplianceSummariesResponse.IsSetComplianceSummaryItems: Boolean;
begin
  Result := (FComplianceSummaryItems <> nil) and (FComplianceSummaryItems.Count > 0);
end;

function TListComplianceSummariesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListComplianceSummariesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListComplianceSummariesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
