unit AWS.SSM.Model.ListComplianceSummariesRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.ComplianceStringFilter, 
  AWS.Nullable;

type
  TListComplianceSummariesRequest = class;
  
  IListComplianceSummariesRequest = interface
    function GetFilters: TObjectList<TComplianceStringFilter>;
    procedure SetFilters(const Value: TObjectList<TComplianceStringFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListComplianceSummariesRequest;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TComplianceStringFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListComplianceSummariesRequest = class(TAmazonSimpleSystemsManagementRequest, IListComplianceSummariesRequest)
  strict private
    FFilters: TObjectList<TComplianceStringFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetFilters: TObjectList<TComplianceStringFilter>;
    procedure SetFilters(const Value: TObjectList<TComplianceStringFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListComplianceSummariesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TComplianceStringFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListComplianceSummariesRequest }

constructor TListComplianceSummariesRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TComplianceStringFilter>.Create;
end;

destructor TListComplianceSummariesRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TListComplianceSummariesRequest.Obj: TListComplianceSummariesRequest;
begin
  Result := Self;
end;

function TListComplianceSummariesRequest.GetFilters: TObjectList<TComplianceStringFilter>;
begin
  Result := FFilters;
end;

procedure TListComplianceSummariesRequest.SetFilters(const Value: TObjectList<TComplianceStringFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TListComplianceSummariesRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TListComplianceSummariesRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TListComplianceSummariesRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TListComplianceSummariesRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListComplianceSummariesRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListComplianceSummariesRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListComplianceSummariesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListComplianceSummariesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListComplianceSummariesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
