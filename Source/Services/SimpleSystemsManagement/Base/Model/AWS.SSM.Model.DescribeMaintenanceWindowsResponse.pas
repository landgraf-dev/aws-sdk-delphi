unit AWS.SSM.Model.DescribeMaintenanceWindowsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.MaintenanceWindowIdentity;

type
  TDescribeMaintenanceWindowsResponse = class;
  
  IDescribeMaintenanceWindowsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetWindowIdentities: TObjectList<TMaintenanceWindowIdentity>;
    procedure SetWindowIdentities(const Value: TObjectList<TMaintenanceWindowIdentity>);
    function GetKeepWindowIdentities: Boolean;
    procedure SetKeepWindowIdentities(const Value: Boolean);
    function Obj: TDescribeMaintenanceWindowsResponse;
    function IsSetNextToken: Boolean;
    function IsSetWindowIdentities: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property WindowIdentities: TObjectList<TMaintenanceWindowIdentity> read GetWindowIdentities write SetWindowIdentities;
    property KeepWindowIdentities: Boolean read GetKeepWindowIdentities write SetKeepWindowIdentities;
  end;
  
  TDescribeMaintenanceWindowsResponse = class(TAmazonWebServiceResponse, IDescribeMaintenanceWindowsResponse)
  strict private
    FNextToken: Nullable<string>;
    FWindowIdentities: TObjectList<TMaintenanceWindowIdentity>;
    FKeepWindowIdentities: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetWindowIdentities: TObjectList<TMaintenanceWindowIdentity>;
    procedure SetWindowIdentities(const Value: TObjectList<TMaintenanceWindowIdentity>);
    function GetKeepWindowIdentities: Boolean;
    procedure SetKeepWindowIdentities(const Value: Boolean);
  strict protected
    function Obj: TDescribeMaintenanceWindowsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetWindowIdentities: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property WindowIdentities: TObjectList<TMaintenanceWindowIdentity> read GetWindowIdentities write SetWindowIdentities;
    property KeepWindowIdentities: Boolean read GetKeepWindowIdentities write SetKeepWindowIdentities;
  end;
  
implementation

{ TDescribeMaintenanceWindowsResponse }

constructor TDescribeMaintenanceWindowsResponse.Create;
begin
  inherited;
  FWindowIdentities := TObjectList<TMaintenanceWindowIdentity>.Create;
end;

destructor TDescribeMaintenanceWindowsResponse.Destroy;
begin
  WindowIdentities := nil;
  inherited;
end;

function TDescribeMaintenanceWindowsResponse.Obj: TDescribeMaintenanceWindowsResponse;
begin
  Result := Self;
end;

function TDescribeMaintenanceWindowsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeMaintenanceWindowsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeMaintenanceWindowsResponse.GetWindowIdentities: TObjectList<TMaintenanceWindowIdentity>;
begin
  Result := FWindowIdentities;
end;

procedure TDescribeMaintenanceWindowsResponse.SetWindowIdentities(const Value: TObjectList<TMaintenanceWindowIdentity>);
begin
  if FWindowIdentities <> Value then
  begin
    if not KeepWindowIdentities then
      FWindowIdentities.Free;
    FWindowIdentities := Value;
  end;
end;

function TDescribeMaintenanceWindowsResponse.GetKeepWindowIdentities: Boolean;
begin
  Result := FKeepWindowIdentities;
end;

procedure TDescribeMaintenanceWindowsResponse.SetKeepWindowIdentities(const Value: Boolean);
begin
  FKeepWindowIdentities := Value;
end;

function TDescribeMaintenanceWindowsResponse.IsSetWindowIdentities: Boolean;
begin
  Result := (FWindowIdentities <> nil) and (FWindowIdentities.Count > 0);
end;

end.
