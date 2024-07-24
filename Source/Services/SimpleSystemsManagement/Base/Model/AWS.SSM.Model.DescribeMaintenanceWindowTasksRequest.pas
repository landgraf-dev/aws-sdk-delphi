unit AWS.SSM.Model.DescribeMaintenanceWindowTasksRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.MaintenanceWindowFilter, 
  AWS.Nullable;

type
  TDescribeMaintenanceWindowTasksRequest = class;
  
  IDescribeMaintenanceWindowTasksRequest = interface
    function GetFilters: TObjectList<TMaintenanceWindowFilter>;
    procedure SetFilters(const Value: TObjectList<TMaintenanceWindowFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function Obj: TDescribeMaintenanceWindowTasksRequest;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetWindowId: Boolean;
    property Filters: TObjectList<TMaintenanceWindowFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
  TDescribeMaintenanceWindowTasksRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeMaintenanceWindowTasksRequest)
  strict private
    FFilters: TObjectList<TMaintenanceWindowFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FWindowId: Nullable<string>;
    function GetFilters: TObjectList<TMaintenanceWindowFilter>;
    procedure SetFilters(const Value: TObjectList<TMaintenanceWindowFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
  strict protected
    function Obj: TDescribeMaintenanceWindowTasksRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetWindowId: Boolean;
    property Filters: TObjectList<TMaintenanceWindowFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
implementation

{ TDescribeMaintenanceWindowTasksRequest }

constructor TDescribeMaintenanceWindowTasksRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TMaintenanceWindowFilter>.Create;
end;

destructor TDescribeMaintenanceWindowTasksRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TDescribeMaintenanceWindowTasksRequest.Obj: TDescribeMaintenanceWindowTasksRequest;
begin
  Result := Self;
end;

function TDescribeMaintenanceWindowTasksRequest.GetFilters: TObjectList<TMaintenanceWindowFilter>;
begin
  Result := FFilters;
end;

procedure TDescribeMaintenanceWindowTasksRequest.SetFilters(const Value: TObjectList<TMaintenanceWindowFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDescribeMaintenanceWindowTasksRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDescribeMaintenanceWindowTasksRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDescribeMaintenanceWindowTasksRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TDescribeMaintenanceWindowTasksRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowTasksRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeMaintenanceWindowTasksRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeMaintenanceWindowTasksRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowTasksRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeMaintenanceWindowTasksRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeMaintenanceWindowTasksRequest.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowTasksRequest.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TDescribeMaintenanceWindowTasksRequest.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

end.
