unit AWS.SSM.Model.DescribePatchBaselinesRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.PatchOrchestratorFilter, 
  AWS.Nullable;

type
  TDescribePatchBaselinesRequest = class;
  
  IDescribePatchBaselinesRequest = interface
    function GetFilters: TObjectList<TPatchOrchestratorFilter>;
    procedure SetFilters(const Value: TObjectList<TPatchOrchestratorFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribePatchBaselinesRequest;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TPatchOrchestratorFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribePatchBaselinesRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribePatchBaselinesRequest)
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
    function Obj: TDescribePatchBaselinesRequest;
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

{ TDescribePatchBaselinesRequest }

constructor TDescribePatchBaselinesRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TPatchOrchestratorFilter>.Create;
end;

destructor TDescribePatchBaselinesRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TDescribePatchBaselinesRequest.Obj: TDescribePatchBaselinesRequest;
begin
  Result := Self;
end;

function TDescribePatchBaselinesRequest.GetFilters: TObjectList<TPatchOrchestratorFilter>;
begin
  Result := FFilters;
end;

procedure TDescribePatchBaselinesRequest.SetFilters(const Value: TObjectList<TPatchOrchestratorFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDescribePatchBaselinesRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDescribePatchBaselinesRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDescribePatchBaselinesRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TDescribePatchBaselinesRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribePatchBaselinesRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribePatchBaselinesRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribePatchBaselinesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribePatchBaselinesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribePatchBaselinesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
