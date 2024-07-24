unit AWS.SSM.Model.DescribePatchGroupsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.PatchOrchestratorFilter, 
  AWS.Nullable;

type
  TDescribePatchGroupsRequest = class;
  
  IDescribePatchGroupsRequest = interface
    function GetFilters: TObjectList<TPatchOrchestratorFilter>;
    procedure SetFilters(const Value: TObjectList<TPatchOrchestratorFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribePatchGroupsRequest;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TPatchOrchestratorFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribePatchGroupsRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribePatchGroupsRequest)
  strict private
    FFilters: TObjectList<TPatchOrchestratorFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetFilters: TObjectList<TPatchOrchestratorFilter>;
    procedure SetFilters(const Value: TObjectList<TPatchOrchestratorFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribePatchGroupsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TPatchOrchestratorFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribePatchGroupsRequest }

constructor TDescribePatchGroupsRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TPatchOrchestratorFilter>.Create;
end;

destructor TDescribePatchGroupsRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TDescribePatchGroupsRequest.Obj: TDescribePatchGroupsRequest;
begin
  Result := Self;
end;

function TDescribePatchGroupsRequest.GetFilters: TObjectList<TPatchOrchestratorFilter>;
begin
  Result := FFilters;
end;

procedure TDescribePatchGroupsRequest.SetFilters(const Value: TObjectList<TPatchOrchestratorFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDescribePatchGroupsRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDescribePatchGroupsRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDescribePatchGroupsRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TDescribePatchGroupsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribePatchGroupsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribePatchGroupsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribePatchGroupsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribePatchGroupsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribePatchGroupsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
