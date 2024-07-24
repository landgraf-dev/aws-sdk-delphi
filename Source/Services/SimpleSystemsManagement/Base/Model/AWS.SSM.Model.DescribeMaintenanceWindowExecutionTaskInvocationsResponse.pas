unit AWS.SSM.Model.DescribeMaintenanceWindowExecutionTaskInvocationsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.MaintenanceWindowExecutionTaskInvocationIdentity;

type
  TDescribeMaintenanceWindowExecutionTaskInvocationsResponse = class;
  
  IDescribeMaintenanceWindowExecutionTaskInvocationsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetWindowExecutionTaskInvocationIdentities: TObjectList<TMaintenanceWindowExecutionTaskInvocationIdentity>;
    procedure SetWindowExecutionTaskInvocationIdentities(const Value: TObjectList<TMaintenanceWindowExecutionTaskInvocationIdentity>);
    function GetKeepWindowExecutionTaskInvocationIdentities: Boolean;
    procedure SetKeepWindowExecutionTaskInvocationIdentities(const Value: Boolean);
    function Obj: TDescribeMaintenanceWindowExecutionTaskInvocationsResponse;
    function IsSetNextToken: Boolean;
    function IsSetWindowExecutionTaskInvocationIdentities: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property WindowExecutionTaskInvocationIdentities: TObjectList<TMaintenanceWindowExecutionTaskInvocationIdentity> read GetWindowExecutionTaskInvocationIdentities write SetWindowExecutionTaskInvocationIdentities;
    property KeepWindowExecutionTaskInvocationIdentities: Boolean read GetKeepWindowExecutionTaskInvocationIdentities write SetKeepWindowExecutionTaskInvocationIdentities;
  end;
  
  TDescribeMaintenanceWindowExecutionTaskInvocationsResponse = class(TAmazonWebServiceResponse, IDescribeMaintenanceWindowExecutionTaskInvocationsResponse)
  strict private
    FNextToken: Nullable<string>;
    FWindowExecutionTaskInvocationIdentities: TObjectList<TMaintenanceWindowExecutionTaskInvocationIdentity>;
    FKeepWindowExecutionTaskInvocationIdentities: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetWindowExecutionTaskInvocationIdentities: TObjectList<TMaintenanceWindowExecutionTaskInvocationIdentity>;
    procedure SetWindowExecutionTaskInvocationIdentities(const Value: TObjectList<TMaintenanceWindowExecutionTaskInvocationIdentity>);
    function GetKeepWindowExecutionTaskInvocationIdentities: Boolean;
    procedure SetKeepWindowExecutionTaskInvocationIdentities(const Value: Boolean);
  strict protected
    function Obj: TDescribeMaintenanceWindowExecutionTaskInvocationsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetWindowExecutionTaskInvocationIdentities: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property WindowExecutionTaskInvocationIdentities: TObjectList<TMaintenanceWindowExecutionTaskInvocationIdentity> read GetWindowExecutionTaskInvocationIdentities write SetWindowExecutionTaskInvocationIdentities;
    property KeepWindowExecutionTaskInvocationIdentities: Boolean read GetKeepWindowExecutionTaskInvocationIdentities write SetKeepWindowExecutionTaskInvocationIdentities;
  end;
  
implementation

{ TDescribeMaintenanceWindowExecutionTaskInvocationsResponse }

constructor TDescribeMaintenanceWindowExecutionTaskInvocationsResponse.Create;
begin
  inherited;
  FWindowExecutionTaskInvocationIdentities := TObjectList<TMaintenanceWindowExecutionTaskInvocationIdentity>.Create;
end;

destructor TDescribeMaintenanceWindowExecutionTaskInvocationsResponse.Destroy;
begin
  WindowExecutionTaskInvocationIdentities := nil;
  inherited;
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsResponse.Obj: TDescribeMaintenanceWindowExecutionTaskInvocationsResponse;
begin
  Result := Self;
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowExecutionTaskInvocationsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsResponse.GetWindowExecutionTaskInvocationIdentities: TObjectList<TMaintenanceWindowExecutionTaskInvocationIdentity>;
begin
  Result := FWindowExecutionTaskInvocationIdentities;
end;

procedure TDescribeMaintenanceWindowExecutionTaskInvocationsResponse.SetWindowExecutionTaskInvocationIdentities(const Value: TObjectList<TMaintenanceWindowExecutionTaskInvocationIdentity>);
begin
  if FWindowExecutionTaskInvocationIdentities <> Value then
  begin
    if not KeepWindowExecutionTaskInvocationIdentities then
      FWindowExecutionTaskInvocationIdentities.Free;
    FWindowExecutionTaskInvocationIdentities := Value;
  end;
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsResponse.GetKeepWindowExecutionTaskInvocationIdentities: Boolean;
begin
  Result := FKeepWindowExecutionTaskInvocationIdentities;
end;

procedure TDescribeMaintenanceWindowExecutionTaskInvocationsResponse.SetKeepWindowExecutionTaskInvocationIdentities(const Value: Boolean);
begin
  FKeepWindowExecutionTaskInvocationIdentities := Value;
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsResponse.IsSetWindowExecutionTaskInvocationIdentities: Boolean;
begin
  Result := (FWindowExecutionTaskInvocationIdentities <> nil) and (FWindowExecutionTaskInvocationIdentities.Count > 0);
end;

end.
