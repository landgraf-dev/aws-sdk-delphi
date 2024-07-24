unit AWS.SSM.Model.GetDeployablePatchSnapshotForInstanceRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.BaselineOverride, 
  AWS.Nullable;

type
  TGetDeployablePatchSnapshotForInstanceRequest = class;
  
  IGetDeployablePatchSnapshotForInstanceRequest = interface
    function GetBaselineOverride: TBaselineOverride;
    procedure SetBaselineOverride(const Value: TBaselineOverride);
    function GetKeepBaselineOverride: Boolean;
    procedure SetKeepBaselineOverride(const Value: Boolean);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetSnapshotId: string;
    procedure SetSnapshotId(const Value: string);
    function Obj: TGetDeployablePatchSnapshotForInstanceRequest;
    function IsSetBaselineOverride: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetSnapshotId: Boolean;
    property BaselineOverride: TBaselineOverride read GetBaselineOverride write SetBaselineOverride;
    property KeepBaselineOverride: Boolean read GetKeepBaselineOverride write SetKeepBaselineOverride;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property SnapshotId: string read GetSnapshotId write SetSnapshotId;
  end;
  
  TGetDeployablePatchSnapshotForInstanceRequest = class(TAmazonSimpleSystemsManagementRequest, IGetDeployablePatchSnapshotForInstanceRequest)
  strict private
    FBaselineOverride: TBaselineOverride;
    FKeepBaselineOverride: Boolean;
    FInstanceId: Nullable<string>;
    FSnapshotId: Nullable<string>;
    function GetBaselineOverride: TBaselineOverride;
    procedure SetBaselineOverride(const Value: TBaselineOverride);
    function GetKeepBaselineOverride: Boolean;
    procedure SetKeepBaselineOverride(const Value: Boolean);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetSnapshotId: string;
    procedure SetSnapshotId(const Value: string);
  strict protected
    function Obj: TGetDeployablePatchSnapshotForInstanceRequest;
  public
    destructor Destroy; override;
    function IsSetBaselineOverride: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetSnapshotId: Boolean;
    property BaselineOverride: TBaselineOverride read GetBaselineOverride write SetBaselineOverride;
    property KeepBaselineOverride: Boolean read GetKeepBaselineOverride write SetKeepBaselineOverride;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property SnapshotId: string read GetSnapshotId write SetSnapshotId;
  end;
  
implementation

{ TGetDeployablePatchSnapshotForInstanceRequest }

destructor TGetDeployablePatchSnapshotForInstanceRequest.Destroy;
begin
  BaselineOverride := nil;
  inherited;
end;

function TGetDeployablePatchSnapshotForInstanceRequest.Obj: TGetDeployablePatchSnapshotForInstanceRequest;
begin
  Result := Self;
end;

function TGetDeployablePatchSnapshotForInstanceRequest.GetBaselineOverride: TBaselineOverride;
begin
  Result := FBaselineOverride;
end;

procedure TGetDeployablePatchSnapshotForInstanceRequest.SetBaselineOverride(const Value: TBaselineOverride);
begin
  if FBaselineOverride <> Value then
  begin
    if not KeepBaselineOverride then
      FBaselineOverride.Free;
    FBaselineOverride := Value;
  end;
end;

function TGetDeployablePatchSnapshotForInstanceRequest.GetKeepBaselineOverride: Boolean;
begin
  Result := FKeepBaselineOverride;
end;

procedure TGetDeployablePatchSnapshotForInstanceRequest.SetKeepBaselineOverride(const Value: Boolean);
begin
  FKeepBaselineOverride := Value;
end;

function TGetDeployablePatchSnapshotForInstanceRequest.IsSetBaselineOverride: Boolean;
begin
  Result := FBaselineOverride <> nil;
end;

function TGetDeployablePatchSnapshotForInstanceRequest.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TGetDeployablePatchSnapshotForInstanceRequest.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TGetDeployablePatchSnapshotForInstanceRequest.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TGetDeployablePatchSnapshotForInstanceRequest.GetSnapshotId: string;
begin
  Result := FSnapshotId.ValueOrDefault;
end;

procedure TGetDeployablePatchSnapshotForInstanceRequest.SetSnapshotId(const Value: string);
begin
  FSnapshotId := Value;
end;

function TGetDeployablePatchSnapshotForInstanceRequest.IsSetSnapshotId: Boolean;
begin
  Result := FSnapshotId.HasValue;
end;

end.
