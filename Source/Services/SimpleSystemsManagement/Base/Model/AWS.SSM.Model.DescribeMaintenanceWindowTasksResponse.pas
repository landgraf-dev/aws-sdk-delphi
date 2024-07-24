unit AWS.SSM.Model.DescribeMaintenanceWindowTasksResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.MaintenanceWindowTask;

type
  TDescribeMaintenanceWindowTasksResponse = class;
  
  IDescribeMaintenanceWindowTasksResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTasks: TObjectList<TMaintenanceWindowTask>;
    procedure SetTasks(const Value: TObjectList<TMaintenanceWindowTask>);
    function GetKeepTasks: Boolean;
    procedure SetKeepTasks(const Value: Boolean);
    function Obj: TDescribeMaintenanceWindowTasksResponse;
    function IsSetNextToken: Boolean;
    function IsSetTasks: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Tasks: TObjectList<TMaintenanceWindowTask> read GetTasks write SetTasks;
    property KeepTasks: Boolean read GetKeepTasks write SetKeepTasks;
  end;
  
  TDescribeMaintenanceWindowTasksResponse = class(TAmazonWebServiceResponse, IDescribeMaintenanceWindowTasksResponse)
  strict private
    FNextToken: Nullable<string>;
    FTasks: TObjectList<TMaintenanceWindowTask>;
    FKeepTasks: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTasks: TObjectList<TMaintenanceWindowTask>;
    procedure SetTasks(const Value: TObjectList<TMaintenanceWindowTask>);
    function GetKeepTasks: Boolean;
    procedure SetKeepTasks(const Value: Boolean);
  strict protected
    function Obj: TDescribeMaintenanceWindowTasksResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetTasks: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Tasks: TObjectList<TMaintenanceWindowTask> read GetTasks write SetTasks;
    property KeepTasks: Boolean read GetKeepTasks write SetKeepTasks;
  end;
  
implementation

{ TDescribeMaintenanceWindowTasksResponse }

constructor TDescribeMaintenanceWindowTasksResponse.Create;
begin
  inherited;
  FTasks := TObjectList<TMaintenanceWindowTask>.Create;
end;

destructor TDescribeMaintenanceWindowTasksResponse.Destroy;
begin
  Tasks := nil;
  inherited;
end;

function TDescribeMaintenanceWindowTasksResponse.Obj: TDescribeMaintenanceWindowTasksResponse;
begin
  Result := Self;
end;

function TDescribeMaintenanceWindowTasksResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowTasksResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeMaintenanceWindowTasksResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeMaintenanceWindowTasksResponse.GetTasks: TObjectList<TMaintenanceWindowTask>;
begin
  Result := FTasks;
end;

procedure TDescribeMaintenanceWindowTasksResponse.SetTasks(const Value: TObjectList<TMaintenanceWindowTask>);
begin
  if FTasks <> Value then
  begin
    if not KeepTasks then
      FTasks.Free;
    FTasks := Value;
  end;
end;

function TDescribeMaintenanceWindowTasksResponse.GetKeepTasks: Boolean;
begin
  Result := FKeepTasks;
end;

procedure TDescribeMaintenanceWindowTasksResponse.SetKeepTasks(const Value: Boolean);
begin
  FKeepTasks := Value;
end;

function TDescribeMaintenanceWindowTasksResponse.IsSetTasks: Boolean;
begin
  Result := (FTasks <> nil) and (FTasks.Count > 0);
end;

end.
