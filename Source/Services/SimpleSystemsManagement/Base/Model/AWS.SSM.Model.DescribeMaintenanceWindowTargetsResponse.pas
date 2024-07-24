unit AWS.SSM.Model.DescribeMaintenanceWindowTargetsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.MaintenanceWindowTarget;

type
  TDescribeMaintenanceWindowTargetsResponse = class;
  
  IDescribeMaintenanceWindowTargetsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTargets: TObjectList<TMaintenanceWindowTarget>;
    procedure SetTargets(const Value: TObjectList<TMaintenanceWindowTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function Obj: TDescribeMaintenanceWindowTargetsResponse;
    function IsSetNextToken: Boolean;
    function IsSetTargets: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Targets: TObjectList<TMaintenanceWindowTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
  end;
  
  TDescribeMaintenanceWindowTargetsResponse = class(TAmazonWebServiceResponse, IDescribeMaintenanceWindowTargetsResponse)
  strict private
    FNextToken: Nullable<string>;
    FTargets: TObjectList<TMaintenanceWindowTarget>;
    FKeepTargets: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTargets: TObjectList<TMaintenanceWindowTarget>;
    procedure SetTargets(const Value: TObjectList<TMaintenanceWindowTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
  strict protected
    function Obj: TDescribeMaintenanceWindowTargetsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetTargets: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Targets: TObjectList<TMaintenanceWindowTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
  end;
  
implementation

{ TDescribeMaintenanceWindowTargetsResponse }

constructor TDescribeMaintenanceWindowTargetsResponse.Create;
begin
  inherited;
  FTargets := TObjectList<TMaintenanceWindowTarget>.Create;
end;

destructor TDescribeMaintenanceWindowTargetsResponse.Destroy;
begin
  Targets := nil;
  inherited;
end;

function TDescribeMaintenanceWindowTargetsResponse.Obj: TDescribeMaintenanceWindowTargetsResponse;
begin
  Result := Self;
end;

function TDescribeMaintenanceWindowTargetsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeMaintenanceWindowTargetsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeMaintenanceWindowTargetsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeMaintenanceWindowTargetsResponse.GetTargets: TObjectList<TMaintenanceWindowTarget>;
begin
  Result := FTargets;
end;

procedure TDescribeMaintenanceWindowTargetsResponse.SetTargets(const Value: TObjectList<TMaintenanceWindowTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TDescribeMaintenanceWindowTargetsResponse.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TDescribeMaintenanceWindowTargetsResponse.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TDescribeMaintenanceWindowTargetsResponse.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

end.
