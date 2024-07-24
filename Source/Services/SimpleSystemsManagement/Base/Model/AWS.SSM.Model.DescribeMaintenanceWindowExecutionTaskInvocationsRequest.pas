unit AWS.SSM.Model.DescribeMaintenanceWindowExecutionTaskInvocationsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.MaintenanceWindowFilter, 
  AWS.Nullable;

type
  TDescribeMaintenanceWindowExecutionTaskInvocationsRequest = class;
  
  IDescribeMaintenanceWindowExecutionTaskInvocationsRequest = interface
    function GetFilters: TObjectList<TMaintenanceWindowFilter>;
    procedure SetFilters(const Value: TObjectList<TMaintenanceWindowFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTaskId: string;
    procedure SetTaskId(const Value: string);
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
    function Obj: TDescribeMaintenanceWindowExecutionTaskInvocationsRequest;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetTaskId: Boolean;
    function IsSetWindowExecutionId: Boolean;
    property Filters: TObjectList<TMaintenanceWindowFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property TaskId: string read GetTaskId write SetTaskId;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
  TDescribeMaintenanceWindowExecutionTaskInvocationsRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeMaintenanceWindowExecutionTaskInvocationsRequest)
  strict private
    FFilters: TObjectList<TMaintenanceWindowFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FTaskId: Nullable<string>;
    FWindowExecutionId: Nullable<string>;
    function GetFilters: TObjectList<TMaintenanceWindowFilter>;
    procedure SetFilters(const Value: TObjectList<TMaintenanceWindowFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTaskId: string;
    procedure SetTaskId(const Value: string);
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
  strict protected
    function Obj: TDescribeMaintenanceWindowExecutionTaskInvocationsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetTaskId: Boolean;
    function IsSetWindowExecutionId: Boolean;
    property Filters: TObjectList<TMaintenanceWindowFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property TaskId: string read GetTaskId write SetTaskId;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
implementation

{ TDescribeMaintenanceWindowExecutionTaskInvocationsRequest }

constructor TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TMaintenanceWindowFilter>.Create;
end;

destructor TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.Obj: TDescribeMaintenanceWindowExecutionTaskInvocationsRequest;
begin
  Result := Self;
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.GetFilters: TObjectList<TMaintenanceWindowFilter>;
begin
  Result := FFilters;
end;

procedure TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.SetFilters(const Value: TObjectList<TMaintenanceWindowFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.GetTaskId: string;
begin
  Result := FTaskId.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.SetTaskId(const Value: string);
begin
  FTaskId := Value;
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.IsSetTaskId: Boolean;
begin
  Result := FTaskId.HasValue;
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.GetWindowExecutionId: string;
begin
  Result := FWindowExecutionId.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.SetWindowExecutionId(const Value: string);
begin
  FWindowExecutionId := Value;
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsRequest.IsSetWindowExecutionId: Boolean;
begin
  Result := FWindowExecutionId.HasValue;
end;

end.
