unit AWS.SSM.Model.DescribeAvailablePatchesRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.PatchOrchestratorFilter, 
  AWS.Nullable;

type
  TDescribeAvailablePatchesRequest = class;
  
  IDescribeAvailablePatchesRequest = interface
    function GetFilters: TObjectList<TPatchOrchestratorFilter>;
    procedure SetFilters(const Value: TObjectList<TPatchOrchestratorFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeAvailablePatchesRequest;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TPatchOrchestratorFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeAvailablePatchesRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeAvailablePatchesRequest)
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
    function Obj: TDescribeAvailablePatchesRequest;
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

{ TDescribeAvailablePatchesRequest }

constructor TDescribeAvailablePatchesRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TPatchOrchestratorFilter>.Create;
end;

destructor TDescribeAvailablePatchesRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TDescribeAvailablePatchesRequest.Obj: TDescribeAvailablePatchesRequest;
begin
  Result := Self;
end;

function TDescribeAvailablePatchesRequest.GetFilters: TObjectList<TPatchOrchestratorFilter>;
begin
  Result := FFilters;
end;

procedure TDescribeAvailablePatchesRequest.SetFilters(const Value: TObjectList<TPatchOrchestratorFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDescribeAvailablePatchesRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDescribeAvailablePatchesRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDescribeAvailablePatchesRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TDescribeAvailablePatchesRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeAvailablePatchesRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeAvailablePatchesRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeAvailablePatchesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeAvailablePatchesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeAvailablePatchesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
