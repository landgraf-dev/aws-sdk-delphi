unit AWS.SSM.Model.DescribeMaintenanceWindowsForTargetRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.Target;

type
  TDescribeMaintenanceWindowsForTargetRequest = class;
  
  IDescribeMaintenanceWindowsForTargetRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetResourceType: TMaintenanceWindowResourceType;
    procedure SetResourceType(const Value: TMaintenanceWindowResourceType);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function Obj: TDescribeMaintenanceWindowsForTargetRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetTargets: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ResourceType: TMaintenanceWindowResourceType read GetResourceType write SetResourceType;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
  end;
  
  TDescribeMaintenanceWindowsForTargetRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeMaintenanceWindowsForTargetRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FResourceType: Nullable<TMaintenanceWindowResourceType>;
    FTargets: TObjectList<TTarget>;
    FKeepTargets: Boolean;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetResourceType: TMaintenanceWindowResourceType;
    procedure SetResourceType(const Value: TMaintenanceWindowResourceType);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
  strict protected
    function Obj: TDescribeMaintenanceWindowsForTargetRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetTargets: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ResourceType: TMaintenanceWindowResourceType read GetResourceType write SetResourceType;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
  end;
  
implementation

{ TDescribeMaintenanceWindowsForTargetRequest }

constructor TDescribeMaintenanceWindowsForTargetRequest.Create;
begin
  inherited;
  FTargets := TObjectList<TTarget>.Create;
end;

destructor TDescribeMaintenanceWindowsForTargetRequest.Destroy;
begin
  Targets := nil;
  inherited;
end;

function TDescribeMaintenanceWindowsForTargetRequest.Obj: TDescribeMaintenanceWindowsForTargetRequest;
begin
  Result := Self;
end;

function TDescribeMaintenanceWindowsForTargetRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowsForTargetRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeMaintenanceWindowsForTargetRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeMaintenanceWindowsForTargetRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowsForTargetRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeMaintenanceWindowsForTargetRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeMaintenanceWindowsForTargetRequest.GetResourceType: TMaintenanceWindowResourceType;
begin
  Result := FResourceType.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowsForTargetRequest.SetResourceType(const Value: TMaintenanceWindowResourceType);
begin
  FResourceType := Value;
end;

function TDescribeMaintenanceWindowsForTargetRequest.IsSetResourceType: Boolean;
begin
  Result := FResourceType.HasValue;
end;

function TDescribeMaintenanceWindowsForTargetRequest.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TDescribeMaintenanceWindowsForTargetRequest.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TDescribeMaintenanceWindowsForTargetRequest.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TDescribeMaintenanceWindowsForTargetRequest.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TDescribeMaintenanceWindowsForTargetRequest.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

end.
