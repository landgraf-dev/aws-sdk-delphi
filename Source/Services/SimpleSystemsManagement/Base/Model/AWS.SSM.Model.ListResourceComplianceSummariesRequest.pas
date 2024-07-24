unit AWS.SSM.Model.ListResourceComplianceSummariesRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.ComplianceStringFilter, 
  AWS.Nullable;

type
  TListResourceComplianceSummariesRequest = class;
  
  IListResourceComplianceSummariesRequest = interface
    function GetFilters: TObjectList<TComplianceStringFilter>;
    procedure SetFilters(const Value: TObjectList<TComplianceStringFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListResourceComplianceSummariesRequest;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TComplianceStringFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListResourceComplianceSummariesRequest = class(TAmazonSimpleSystemsManagementRequest, IListResourceComplianceSummariesRequest)
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
    function Obj: TListResourceComplianceSummariesRequest;
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

{ TListResourceComplianceSummariesRequest }

constructor TListResourceComplianceSummariesRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TComplianceStringFilter>.Create;
end;

destructor TListResourceComplianceSummariesRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TListResourceComplianceSummariesRequest.Obj: TListResourceComplianceSummariesRequest;
begin
  Result := Self;
end;

function TListResourceComplianceSummariesRequest.GetFilters: TObjectList<TComplianceStringFilter>;
begin
  Result := FFilters;
end;

procedure TListResourceComplianceSummariesRequest.SetFilters(const Value: TObjectList<TComplianceStringFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TListResourceComplianceSummariesRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TListResourceComplianceSummariesRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TListResourceComplianceSummariesRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TListResourceComplianceSummariesRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListResourceComplianceSummariesRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListResourceComplianceSummariesRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListResourceComplianceSummariesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListResourceComplianceSummariesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListResourceComplianceSummariesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
