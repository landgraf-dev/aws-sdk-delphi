unit AWS.SSM.Model.DescribeMaintenanceWindowExecutionsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.MaintenanceWindowExecution;

type
  TDescribeMaintenanceWindowExecutionsResponse = class;
  
  IDescribeMaintenanceWindowExecutionsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetWindowExecutions: TObjectList<TMaintenanceWindowExecution>;
    procedure SetWindowExecutions(const Value: TObjectList<TMaintenanceWindowExecution>);
    function GetKeepWindowExecutions: Boolean;
    procedure SetKeepWindowExecutions(const Value: Boolean);
    function Obj: TDescribeMaintenanceWindowExecutionsResponse;
    function IsSetNextToken: Boolean;
    function IsSetWindowExecutions: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property WindowExecutions: TObjectList<TMaintenanceWindowExecution> read GetWindowExecutions write SetWindowExecutions;
    property KeepWindowExecutions: Boolean read GetKeepWindowExecutions write SetKeepWindowExecutions;
  end;
  
  TDescribeMaintenanceWindowExecutionsResponse = class(TAmazonWebServiceResponse, IDescribeMaintenanceWindowExecutionsResponse)
  strict private
    FNextToken: Nullable<string>;
    FWindowExecutions: TObjectList<TMaintenanceWindowExecution>;
    FKeepWindowExecutions: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetWindowExecutions: TObjectList<TMaintenanceWindowExecution>;
    procedure SetWindowExecutions(const Value: TObjectList<TMaintenanceWindowExecution>);
    function GetKeepWindowExecutions: Boolean;
    procedure SetKeepWindowExecutions(const Value: Boolean);
  strict protected
    function Obj: TDescribeMaintenanceWindowExecutionsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetWindowExecutions: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property WindowExecutions: TObjectList<TMaintenanceWindowExecution> read GetWindowExecutions write SetWindowExecutions;
    property KeepWindowExecutions: Boolean read GetKeepWindowExecutions write SetKeepWindowExecutions;
  end;
  
implementation

{ TDescribeMaintenanceWindowExecutionsResponse }

constructor TDescribeMaintenanceWindowExecutionsResponse.Create;
begin
  inherited;
  FWindowExecutions := TObjectList<TMaintenanceWindowExecution>.Create;
end;

destructor TDescribeMaintenanceWindowExecutionsResponse.Destroy;
begin
  WindowExecutions := nil;
  inherited;
end;

function TDescribeMaintenanceWindowExecutionsResponse.Obj: TDescribeMaintenanceWindowExecutionsResponse;
begin
  Result := Self;
end;

function TDescribeMaintenanceWindowExecutionsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowExecutionsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeMaintenanceWindowExecutionsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeMaintenanceWindowExecutionsResponse.GetWindowExecutions: TObjectList<TMaintenanceWindowExecution>;
begin
  Result := FWindowExecutions;
end;

procedure TDescribeMaintenanceWindowExecutionsResponse.SetWindowExecutions(const Value: TObjectList<TMaintenanceWindowExecution>);
begin
  if FWindowExecutions <> Value then
  begin
    if not KeepWindowExecutions then
      FWindowExecutions.Free;
    FWindowExecutions := Value;
  end;
end;

function TDescribeMaintenanceWindowExecutionsResponse.GetKeepWindowExecutions: Boolean;
begin
  Result := FKeepWindowExecutions;
end;

procedure TDescribeMaintenanceWindowExecutionsResponse.SetKeepWindowExecutions(const Value: Boolean);
begin
  FKeepWindowExecutions := Value;
end;

function TDescribeMaintenanceWindowExecutionsResponse.IsSetWindowExecutions: Boolean;
begin
  Result := (FWindowExecutions <> nil) and (FWindowExecutions.Count > 0);
end;

end.
