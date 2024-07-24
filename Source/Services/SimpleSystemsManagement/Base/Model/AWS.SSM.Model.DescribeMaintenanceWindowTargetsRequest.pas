unit AWS.SSM.Model.DescribeMaintenanceWindowTargetsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.MaintenanceWindowFilter, 
  AWS.Nullable;

type
  TDescribeMaintenanceWindowTargetsRequest = class;
  
  IDescribeMaintenanceWindowTargetsRequest = interface
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
    function Obj: TDescribeMaintenanceWindowTargetsRequest;
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
  
  TDescribeMaintenanceWindowTargetsRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeMaintenanceWindowTargetsRequest)
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
    function Obj: TDescribeMaintenanceWindowTargetsRequest;
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

{ TDescribeMaintenanceWindowTargetsRequest }

constructor TDescribeMaintenanceWindowTargetsRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TMaintenanceWindowFilter>.Create;
end;

destructor TDescribeMaintenanceWindowTargetsRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TDescribeMaintenanceWindowTargetsRequest.Obj: TDescribeMaintenanceWindowTargetsRequest;
begin
  Result := Self;
end;

function TDescribeMaintenanceWindowTargetsRequest.GetFilters: TObjectList<TMaintenanceWindowFilter>;
begin
  Result := FFilters;
end;

procedure TDescribeMaintenanceWindowTargetsRequest.SetFilters(const Value: TObjectList<TMaintenanceWindowFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDescribeMaintenanceWindowTargetsRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDescribeMaintenanceWindowTargetsRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDescribeMaintenanceWindowTargetsRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TDescribeMaintenanceWindowTargetsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowTargetsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeMaintenanceWindowTargetsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeMaintenanceWindowTargetsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowTargetsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeMaintenanceWindowTargetsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeMaintenanceWindowTargetsRequest.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowTargetsRequest.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TDescribeMaintenanceWindowTargetsRequest.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

end.
