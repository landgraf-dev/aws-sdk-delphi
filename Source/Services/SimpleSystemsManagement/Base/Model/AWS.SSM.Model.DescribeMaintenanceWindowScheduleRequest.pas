unit AWS.SSM.Model.DescribeMaintenanceWindowScheduleRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.PatchOrchestratorFilter, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.Target;

type
  TDescribeMaintenanceWindowScheduleRequest = class;
  
  IDescribeMaintenanceWindowScheduleRequest = interface
    function GetFilters: TObjectList<TPatchOrchestratorFilter>;
    procedure SetFilters(const Value: TObjectList<TPatchOrchestratorFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetResourceType: TMaintenanceWindowResourceType;
    procedure SetResourceType(const Value: TMaintenanceWindowResourceType);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function Obj: TDescribeMaintenanceWindowScheduleRequest;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetTargets: Boolean;
    function IsSetWindowId: Boolean;
    property Filters: TObjectList<TPatchOrchestratorFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ResourceType: TMaintenanceWindowResourceType read GetResourceType write SetResourceType;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
  TDescribeMaintenanceWindowScheduleRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeMaintenanceWindowScheduleRequest)
  strict private
    FFilters: TObjectList<TPatchOrchestratorFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FResourceType: Nullable<TMaintenanceWindowResourceType>;
    FTargets: TObjectList<TTarget>;
    FKeepTargets: Boolean;
    FWindowId: Nullable<string>;
    function GetFilters: TObjectList<TPatchOrchestratorFilter>;
    procedure SetFilters(const Value: TObjectList<TPatchOrchestratorFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetResourceType: TMaintenanceWindowResourceType;
    procedure SetResourceType(const Value: TMaintenanceWindowResourceType);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
  strict protected
    function Obj: TDescribeMaintenanceWindowScheduleRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetTargets: Boolean;
    function IsSetWindowId: Boolean;
    property Filters: TObjectList<TPatchOrchestratorFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ResourceType: TMaintenanceWindowResourceType read GetResourceType write SetResourceType;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
implementation

{ TDescribeMaintenanceWindowScheduleRequest }

constructor TDescribeMaintenanceWindowScheduleRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TPatchOrchestratorFilter>.Create;
  FTargets := TObjectList<TTarget>.Create;
end;

destructor TDescribeMaintenanceWindowScheduleRequest.Destroy;
begin
  Targets := nil;
  Filters := nil;
  inherited;
end;

function TDescribeMaintenanceWindowScheduleRequest.Obj: TDescribeMaintenanceWindowScheduleRequest;
begin
  Result := Self;
end;

function TDescribeMaintenanceWindowScheduleRequest.GetFilters: TObjectList<TPatchOrchestratorFilter>;
begin
  Result := FFilters;
end;

procedure TDescribeMaintenanceWindowScheduleRequest.SetFilters(const Value: TObjectList<TPatchOrchestratorFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDescribeMaintenanceWindowScheduleRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDescribeMaintenanceWindowScheduleRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDescribeMaintenanceWindowScheduleRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TDescribeMaintenanceWindowScheduleRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowScheduleRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeMaintenanceWindowScheduleRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeMaintenanceWindowScheduleRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowScheduleRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeMaintenanceWindowScheduleRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeMaintenanceWindowScheduleRequest.GetResourceType: TMaintenanceWindowResourceType;
begin
  Result := FResourceType.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowScheduleRequest.SetResourceType(const Value: TMaintenanceWindowResourceType);
begin
  FResourceType := Value;
end;

function TDescribeMaintenanceWindowScheduleRequest.IsSetResourceType: Boolean;
begin
  Result := FResourceType.HasValue;
end;

function TDescribeMaintenanceWindowScheduleRequest.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TDescribeMaintenanceWindowScheduleRequest.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TDescribeMaintenanceWindowScheduleRequest.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TDescribeMaintenanceWindowScheduleRequest.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TDescribeMaintenanceWindowScheduleRequest.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

function TDescribeMaintenanceWindowScheduleRequest.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowScheduleRequest.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TDescribeMaintenanceWindowScheduleRequest.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

end.
