unit AWS.SSM.Model.DescribeInstancePatchStatesForPatchGroupRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.InstancePatchStateFilter, 
  AWS.Nullable;

type
  TDescribeInstancePatchStatesForPatchGroupRequest = class;
  
  IDescribeInstancePatchStatesForPatchGroupRequest = interface
    function GetFilters: TObjectList<TInstancePatchStateFilter>;
    procedure SetFilters(const Value: TObjectList<TInstancePatchStateFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
    function Obj: TDescribeInstancePatchStatesForPatchGroupRequest;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetPatchGroup: Boolean;
    property Filters: TObjectList<TInstancePatchStateFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
  end;
  
  TDescribeInstancePatchStatesForPatchGroupRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeInstancePatchStatesForPatchGroupRequest)
  strict private
    FFilters: TObjectList<TInstancePatchStateFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FPatchGroup: Nullable<string>;
    function GetFilters: TObjectList<TInstancePatchStateFilter>;
    procedure SetFilters(const Value: TObjectList<TInstancePatchStateFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
  strict protected
    function Obj: TDescribeInstancePatchStatesForPatchGroupRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetPatchGroup: Boolean;
    property Filters: TObjectList<TInstancePatchStateFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
  end;
  
implementation

{ TDescribeInstancePatchStatesForPatchGroupRequest }

constructor TDescribeInstancePatchStatesForPatchGroupRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TInstancePatchStateFilter>.Create;
end;

destructor TDescribeInstancePatchStatesForPatchGroupRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TDescribeInstancePatchStatesForPatchGroupRequest.Obj: TDescribeInstancePatchStatesForPatchGroupRequest;
begin
  Result := Self;
end;

function TDescribeInstancePatchStatesForPatchGroupRequest.GetFilters: TObjectList<TInstancePatchStateFilter>;
begin
  Result := FFilters;
end;

procedure TDescribeInstancePatchStatesForPatchGroupRequest.SetFilters(const Value: TObjectList<TInstancePatchStateFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDescribeInstancePatchStatesForPatchGroupRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDescribeInstancePatchStatesForPatchGroupRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDescribeInstancePatchStatesForPatchGroupRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TDescribeInstancePatchStatesForPatchGroupRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeInstancePatchStatesForPatchGroupRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeInstancePatchStatesForPatchGroupRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeInstancePatchStatesForPatchGroupRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeInstancePatchStatesForPatchGroupRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeInstancePatchStatesForPatchGroupRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeInstancePatchStatesForPatchGroupRequest.GetPatchGroup: string;
begin
  Result := FPatchGroup.ValueOrDefault;
end;

procedure TDescribeInstancePatchStatesForPatchGroupRequest.SetPatchGroup(const Value: string);
begin
  FPatchGroup := Value;
end;

function TDescribeInstancePatchStatesForPatchGroupRequest.IsSetPatchGroup: Boolean;
begin
  Result := FPatchGroup.HasValue;
end;

end.
