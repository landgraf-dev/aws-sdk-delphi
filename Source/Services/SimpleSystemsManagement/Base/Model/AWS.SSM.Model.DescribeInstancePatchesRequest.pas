unit AWS.SSM.Model.DescribeInstancePatchesRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.PatchOrchestratorFilter, 
  AWS.Nullable;

type
  TDescribeInstancePatchesRequest = class;
  
  IDescribeInstancePatchesRequest = interface
    function GetFilters: TObjectList<TPatchOrchestratorFilter>;
    procedure SetFilters(const Value: TObjectList<TPatchOrchestratorFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeInstancePatchesRequest;
    function IsSetFilters: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TPatchOrchestratorFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeInstancePatchesRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeInstancePatchesRequest)
  strict private
    FFilters: TObjectList<TPatchOrchestratorFilter>;
    FKeepFilters: Boolean;
    FInstanceId: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetFilters: TObjectList<TPatchOrchestratorFilter>;
    procedure SetFilters(const Value: TObjectList<TPatchOrchestratorFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeInstancePatchesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TPatchOrchestratorFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeInstancePatchesRequest }

constructor TDescribeInstancePatchesRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TPatchOrchestratorFilter>.Create;
end;

destructor TDescribeInstancePatchesRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TDescribeInstancePatchesRequest.Obj: TDescribeInstancePatchesRequest;
begin
  Result := Self;
end;

function TDescribeInstancePatchesRequest.GetFilters: TObjectList<TPatchOrchestratorFilter>;
begin
  Result := FFilters;
end;

procedure TDescribeInstancePatchesRequest.SetFilters(const Value: TObjectList<TPatchOrchestratorFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDescribeInstancePatchesRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDescribeInstancePatchesRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDescribeInstancePatchesRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TDescribeInstancePatchesRequest.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TDescribeInstancePatchesRequest.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TDescribeInstancePatchesRequest.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TDescribeInstancePatchesRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeInstancePatchesRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeInstancePatchesRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeInstancePatchesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeInstancePatchesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeInstancePatchesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
