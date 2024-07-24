unit AWS.SSM.Model.DescribeMaintenanceWindowExecutionTasksResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.MaintenanceWindowExecutionTaskIdentity;

type
  TDescribeMaintenanceWindowExecutionTasksResponse = class;
  
  IDescribeMaintenanceWindowExecutionTasksResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetWindowExecutionTaskIdentities: TObjectList<TMaintenanceWindowExecutionTaskIdentity>;
    procedure SetWindowExecutionTaskIdentities(const Value: TObjectList<TMaintenanceWindowExecutionTaskIdentity>);
    function GetKeepWindowExecutionTaskIdentities: Boolean;
    procedure SetKeepWindowExecutionTaskIdentities(const Value: Boolean);
    function Obj: TDescribeMaintenanceWindowExecutionTasksResponse;
    function IsSetNextToken: Boolean;
    function IsSetWindowExecutionTaskIdentities: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property WindowExecutionTaskIdentities: TObjectList<TMaintenanceWindowExecutionTaskIdentity> read GetWindowExecutionTaskIdentities write SetWindowExecutionTaskIdentities;
    property KeepWindowExecutionTaskIdentities: Boolean read GetKeepWindowExecutionTaskIdentities write SetKeepWindowExecutionTaskIdentities;
  end;
  
  TDescribeMaintenanceWindowExecutionTasksResponse = class(TAmazonWebServiceResponse, IDescribeMaintenanceWindowExecutionTasksResponse)
  strict private
    FNextToken: Nullable<string>;
    FWindowExecutionTaskIdentities: TObjectList<TMaintenanceWindowExecutionTaskIdentity>;
    FKeepWindowExecutionTaskIdentities: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetWindowExecutionTaskIdentities: TObjectList<TMaintenanceWindowExecutionTaskIdentity>;
    procedure SetWindowExecutionTaskIdentities(const Value: TObjectList<TMaintenanceWindowExecutionTaskIdentity>);
    function GetKeepWindowExecutionTaskIdentities: Boolean;
    procedure SetKeepWindowExecutionTaskIdentities(const Value: Boolean);
  strict protected
    function Obj: TDescribeMaintenanceWindowExecutionTasksResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetWindowExecutionTaskIdentities: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property WindowExecutionTaskIdentities: TObjectList<TMaintenanceWindowExecutionTaskIdentity> read GetWindowExecutionTaskIdentities write SetWindowExecutionTaskIdentities;
    property KeepWindowExecutionTaskIdentities: Boolean read GetKeepWindowExecutionTaskIdentities write SetKeepWindowExecutionTaskIdentities;
  end;
  
implementation

{ TDescribeMaintenanceWindowExecutionTasksResponse }

constructor TDescribeMaintenanceWindowExecutionTasksResponse.Create;
begin
  inherited;
  FWindowExecutionTaskIdentities := TObjectList<TMaintenanceWindowExecutionTaskIdentity>.Create;
end;

destructor TDescribeMaintenanceWindowExecutionTasksResponse.Destroy;
begin
  WindowExecutionTaskIdentities := nil;
  inherited;
end;

function TDescribeMaintenanceWindowExecutionTasksResponse.Obj: TDescribeMaintenanceWindowExecutionTasksResponse;
begin
  Result := Self;
end;

function TDescribeMaintenanceWindowExecutionTasksResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowExecutionTasksResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeMaintenanceWindowExecutionTasksResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeMaintenanceWindowExecutionTasksResponse.GetWindowExecutionTaskIdentities: TObjectList<TMaintenanceWindowExecutionTaskIdentity>;
begin
  Result := FWindowExecutionTaskIdentities;
end;

procedure TDescribeMaintenanceWindowExecutionTasksResponse.SetWindowExecutionTaskIdentities(const Value: TObjectList<TMaintenanceWindowExecutionTaskIdentity>);
begin
  if FWindowExecutionTaskIdentities <> Value then
  begin
    if not KeepWindowExecutionTaskIdentities then
      FWindowExecutionTaskIdentities.Free;
    FWindowExecutionTaskIdentities := Value;
  end;
end;

function TDescribeMaintenanceWindowExecutionTasksResponse.GetKeepWindowExecutionTaskIdentities: Boolean;
begin
  Result := FKeepWindowExecutionTaskIdentities;
end;

procedure TDescribeMaintenanceWindowExecutionTasksResponse.SetKeepWindowExecutionTaskIdentities(const Value: Boolean);
begin
  FKeepWindowExecutionTaskIdentities := Value;
end;

function TDescribeMaintenanceWindowExecutionTasksResponse.IsSetWindowExecutionTaskIdentities: Boolean;
begin
  Result := (FWindowExecutionTaskIdentities <> nil) and (FWindowExecutionTaskIdentities.Count > 0);
end;

end.
