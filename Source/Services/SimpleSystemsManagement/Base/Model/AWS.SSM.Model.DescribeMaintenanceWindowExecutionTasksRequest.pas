unit AWS.SSM.Model.DescribeMaintenanceWindowExecutionTasksRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.MaintenanceWindowFilter, 
  AWS.Nullable;

type
  TDescribeMaintenanceWindowExecutionTasksRequest = class;
  
  IDescribeMaintenanceWindowExecutionTasksRequest = interface
    function GetFilters: TObjectList<TMaintenanceWindowFilter>;
    procedure SetFilters(const Value: TObjectList<TMaintenanceWindowFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
    function Obj: TDescribeMaintenanceWindowExecutionTasksRequest;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetWindowExecutionId: Boolean;
    property Filters: TObjectList<TMaintenanceWindowFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
  TDescribeMaintenanceWindowExecutionTasksRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeMaintenanceWindowExecutionTasksRequest)
  strict private
    FFilters: TObjectList<TMaintenanceWindowFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FWindowExecutionId: Nullable<string>;
    function GetFilters: TObjectList<TMaintenanceWindowFilter>;
    procedure SetFilters(const Value: TObjectList<TMaintenanceWindowFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
  strict protected
    function Obj: TDescribeMaintenanceWindowExecutionTasksRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetWindowExecutionId: Boolean;
    property Filters: TObjectList<TMaintenanceWindowFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
implementation

{ TDescribeMaintenanceWindowExecutionTasksRequest }

constructor TDescribeMaintenanceWindowExecutionTasksRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TMaintenanceWindowFilter>.Create;
end;

destructor TDescribeMaintenanceWindowExecutionTasksRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TDescribeMaintenanceWindowExecutionTasksRequest.Obj: TDescribeMaintenanceWindowExecutionTasksRequest;
begin
  Result := Self;
end;

function TDescribeMaintenanceWindowExecutionTasksRequest.GetFilters: TObjectList<TMaintenanceWindowFilter>;
begin
  Result := FFilters;
end;

procedure TDescribeMaintenanceWindowExecutionTasksRequest.SetFilters(const Value: TObjectList<TMaintenanceWindowFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDescribeMaintenanceWindowExecutionTasksRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDescribeMaintenanceWindowExecutionTasksRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDescribeMaintenanceWindowExecutionTasksRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TDescribeMaintenanceWindowExecutionTasksRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowExecutionTasksRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeMaintenanceWindowExecutionTasksRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeMaintenanceWindowExecutionTasksRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowExecutionTasksRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeMaintenanceWindowExecutionTasksRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeMaintenanceWindowExecutionTasksRequest.GetWindowExecutionId: string;
begin
  Result := FWindowExecutionId.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowExecutionTasksRequest.SetWindowExecutionId(const Value: string);
begin
  FWindowExecutionId := Value;
end;

function TDescribeMaintenanceWindowExecutionTasksRequest.IsSetWindowExecutionId: Boolean;
begin
  Result := FWindowExecutionId.HasValue;
end;

end.
