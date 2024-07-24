unit AWS.SSM.Model.DescribeMaintenanceWindowScheduleResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.ScheduledWindowExecution;

type
  TDescribeMaintenanceWindowScheduleResponse = class;
  
  IDescribeMaintenanceWindowScheduleResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetScheduledWindowExecutions: TObjectList<TScheduledWindowExecution>;
    procedure SetScheduledWindowExecutions(const Value: TObjectList<TScheduledWindowExecution>);
    function GetKeepScheduledWindowExecutions: Boolean;
    procedure SetKeepScheduledWindowExecutions(const Value: Boolean);
    function Obj: TDescribeMaintenanceWindowScheduleResponse;
    function IsSetNextToken: Boolean;
    function IsSetScheduledWindowExecutions: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property ScheduledWindowExecutions: TObjectList<TScheduledWindowExecution> read GetScheduledWindowExecutions write SetScheduledWindowExecutions;
    property KeepScheduledWindowExecutions: Boolean read GetKeepScheduledWindowExecutions write SetKeepScheduledWindowExecutions;
  end;
  
  TDescribeMaintenanceWindowScheduleResponse = class(TAmazonWebServiceResponse, IDescribeMaintenanceWindowScheduleResponse)
  strict private
    FNextToken: Nullable<string>;
    FScheduledWindowExecutions: TObjectList<TScheduledWindowExecution>;
    FKeepScheduledWindowExecutions: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetScheduledWindowExecutions: TObjectList<TScheduledWindowExecution>;
    procedure SetScheduledWindowExecutions(const Value: TObjectList<TScheduledWindowExecution>);
    function GetKeepScheduledWindowExecutions: Boolean;
    procedure SetKeepScheduledWindowExecutions(const Value: Boolean);
  strict protected
    function Obj: TDescribeMaintenanceWindowScheduleResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetScheduledWindowExecutions: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property ScheduledWindowExecutions: TObjectList<TScheduledWindowExecution> read GetScheduledWindowExecutions write SetScheduledWindowExecutions;
    property KeepScheduledWindowExecutions: Boolean read GetKeepScheduledWindowExecutions write SetKeepScheduledWindowExecutions;
  end;
  
implementation

{ TDescribeMaintenanceWindowScheduleResponse }

constructor TDescribeMaintenanceWindowScheduleResponse.Create;
begin
  inherited;
  FScheduledWindowExecutions := TObjectList<TScheduledWindowExecution>.Create;
end;

destructor TDescribeMaintenanceWindowScheduleResponse.Destroy;
begin
  ScheduledWindowExecutions := nil;
  inherited;
end;

function TDescribeMaintenanceWindowScheduleResponse.Obj: TDescribeMaintenanceWindowScheduleResponse;
begin
  Result := Self;
end;

function TDescribeMaintenanceWindowScheduleResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowScheduleResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeMaintenanceWindowScheduleResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeMaintenanceWindowScheduleResponse.GetScheduledWindowExecutions: TObjectList<TScheduledWindowExecution>;
begin
  Result := FScheduledWindowExecutions;
end;

procedure TDescribeMaintenanceWindowScheduleResponse.SetScheduledWindowExecutions(const Value: TObjectList<TScheduledWindowExecution>);
begin
  if FScheduledWindowExecutions <> Value then
  begin
    if not KeepScheduledWindowExecutions then
      FScheduledWindowExecutions.Free;
    FScheduledWindowExecutions := Value;
  end;
end;

function TDescribeMaintenanceWindowScheduleResponse.GetKeepScheduledWindowExecutions: Boolean;
begin
  Result := FKeepScheduledWindowExecutions;
end;

procedure TDescribeMaintenanceWindowScheduleResponse.SetKeepScheduledWindowExecutions(const Value: Boolean);
begin
  FKeepScheduledWindowExecutions := Value;
end;

function TDescribeMaintenanceWindowScheduleResponse.IsSetScheduledWindowExecutions: Boolean;
begin
  Result := (FScheduledWindowExecutions <> nil) and (FScheduledWindowExecutions.Count > 0);
end;

end.
