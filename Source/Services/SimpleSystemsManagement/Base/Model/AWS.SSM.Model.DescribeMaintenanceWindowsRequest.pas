unit AWS.SSM.Model.DescribeMaintenanceWindowsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.MaintenanceWindowFilter, 
  AWS.Nullable;

type
  TDescribeMaintenanceWindowsRequest = class;
  
  IDescribeMaintenanceWindowsRequest = interface
    function GetFilters: TObjectList<TMaintenanceWindowFilter>;
    procedure SetFilters(const Value: TObjectList<TMaintenanceWindowFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeMaintenanceWindowsRequest;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TMaintenanceWindowFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeMaintenanceWindowsRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeMaintenanceWindowsRequest)
  strict private
    FFilters: TObjectList<TMaintenanceWindowFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetFilters: TObjectList<TMaintenanceWindowFilter>;
    procedure SetFilters(const Value: TObjectList<TMaintenanceWindowFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeMaintenanceWindowsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TMaintenanceWindowFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeMaintenanceWindowsRequest }

constructor TDescribeMaintenanceWindowsRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TMaintenanceWindowFilter>.Create;
end;

destructor TDescribeMaintenanceWindowsRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TDescribeMaintenanceWindowsRequest.Obj: TDescribeMaintenanceWindowsRequest;
begin
  Result := Self;
end;

function TDescribeMaintenanceWindowsRequest.GetFilters: TObjectList<TMaintenanceWindowFilter>;
begin
  Result := FFilters;
end;

procedure TDescribeMaintenanceWindowsRequest.SetFilters(const Value: TObjectList<TMaintenanceWindowFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDescribeMaintenanceWindowsRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDescribeMaintenanceWindowsRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDescribeMaintenanceWindowsRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TDescribeMaintenanceWindowsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeMaintenanceWindowsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeMaintenanceWindowsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeMaintenanceWindowsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
