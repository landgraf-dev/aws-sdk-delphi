unit AWS.SSM.Model.DescribeMaintenanceWindowsForTargetResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.MaintenanceWindowIdentityForTarget;

type
  TDescribeMaintenanceWindowsForTargetResponse = class;
  
  IDescribeMaintenanceWindowsForTargetResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetWindowIdentities: TObjectList<TMaintenanceWindowIdentityForTarget>;
    procedure SetWindowIdentities(const Value: TObjectList<TMaintenanceWindowIdentityForTarget>);
    function GetKeepWindowIdentities: Boolean;
    procedure SetKeepWindowIdentities(const Value: Boolean);
    function Obj: TDescribeMaintenanceWindowsForTargetResponse;
    function IsSetNextToken: Boolean;
    function IsSetWindowIdentities: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property WindowIdentities: TObjectList<TMaintenanceWindowIdentityForTarget> read GetWindowIdentities write SetWindowIdentities;
    property KeepWindowIdentities: Boolean read GetKeepWindowIdentities write SetKeepWindowIdentities;
  end;
  
  TDescribeMaintenanceWindowsForTargetResponse = class(TAmazonWebServiceResponse, IDescribeMaintenanceWindowsForTargetResponse)
  strict private
    FNextToken: Nullable<string>;
    FWindowIdentities: TObjectList<TMaintenanceWindowIdentityForTarget>;
    FKeepWindowIdentities: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetWindowIdentities: TObjectList<TMaintenanceWindowIdentityForTarget>;
    procedure SetWindowIdentities(const Value: TObjectList<TMaintenanceWindowIdentityForTarget>);
    function GetKeepWindowIdentities: Boolean;
    procedure SetKeepWindowIdentities(const Value: Boolean);
  strict protected
    function Obj: TDescribeMaintenanceWindowsForTargetResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetWindowIdentities: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property WindowIdentities: TObjectList<TMaintenanceWindowIdentityForTarget> read GetWindowIdentities write SetWindowIdentities;
    property KeepWindowIdentities: Boolean read GetKeepWindowIdentities write SetKeepWindowIdentities;
  end;
  
implementation

{ TDescribeMaintenanceWindowsForTargetResponse }

constructor TDescribeMaintenanceWindowsForTargetResponse.Create;
begin
  inherited;
  FWindowIdentities := TObjectList<TMaintenanceWindowIdentityForTarget>.Create;
end;

destructor TDescribeMaintenanceWindowsForTargetResponse.Destroy;
begin
  WindowIdentities := nil;
  inherited;
end;

function TDescribeMaintenanceWindowsForTargetResponse.Obj: TDescribeMaintenanceWindowsForTargetResponse;
begin
  Result := Self;
end;

function TDescribeMaintenanceWindowsForTargetResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowsForTargetResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeMaintenanceWindowsForTargetResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeMaintenanceWindowsForTargetResponse.GetWindowIdentities: TObjectList<TMaintenanceWindowIdentityForTarget>;
begin
  Result := FWindowIdentities;
end;

procedure TDescribeMaintenanceWindowsForTargetResponse.SetWindowIdentities(const Value: TObjectList<TMaintenanceWindowIdentityForTarget>);
begin
  if FWindowIdentities <> Value then
  begin
    if not KeepWindowIdentities then
      FWindowIdentities.Free;
    FWindowIdentities := Value;
  end;
end;

function TDescribeMaintenanceWindowsForTargetResponse.GetKeepWindowIdentities: Boolean;
begin
  Result := FKeepWindowIdentities;
end;

procedure TDescribeMaintenanceWindowsForTargetResponse.SetKeepWindowIdentities(const Value: Boolean);
begin
  FKeepWindowIdentities := Value;
end;

function TDescribeMaintenanceWindowsForTargetResponse.IsSetWindowIdentities: Boolean;
begin
  Result := (FWindowIdentities <> nil) and (FWindowIdentities.Count > 0);
end;

end.
