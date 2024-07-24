unit AWS.SSM.Model.DescribePatchGroupStateResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TDescribePatchGroupStateResponse = class;
  
  IDescribePatchGroupStateResponse = interface(IAmazonWebServiceResponse)
    function GetInstances: Integer;
    procedure SetInstances(const Value: Integer);
    function GetInstancesWithCriticalNonCompliantPatches: Integer;
    procedure SetInstancesWithCriticalNonCompliantPatches(const Value: Integer);
    function GetInstancesWithFailedPatches: Integer;
    procedure SetInstancesWithFailedPatches(const Value: Integer);
    function GetInstancesWithInstalledOtherPatches: Integer;
    procedure SetInstancesWithInstalledOtherPatches(const Value: Integer);
    function GetInstancesWithInstalledPatches: Integer;
    procedure SetInstancesWithInstalledPatches(const Value: Integer);
    function GetInstancesWithInstalledPendingRebootPatches: Integer;
    procedure SetInstancesWithInstalledPendingRebootPatches(const Value: Integer);
    function GetInstancesWithInstalledRejectedPatches: Integer;
    procedure SetInstancesWithInstalledRejectedPatches(const Value: Integer);
    function GetInstancesWithMissingPatches: Integer;
    procedure SetInstancesWithMissingPatches(const Value: Integer);
    function GetInstancesWithNotApplicablePatches: Integer;
    procedure SetInstancesWithNotApplicablePatches(const Value: Integer);
    function GetInstancesWithOtherNonCompliantPatches: Integer;
    procedure SetInstancesWithOtherNonCompliantPatches(const Value: Integer);
    function GetInstancesWithSecurityNonCompliantPatches: Integer;
    procedure SetInstancesWithSecurityNonCompliantPatches(const Value: Integer);
    function GetInstancesWithUnreportedNotApplicablePatches: Integer;
    procedure SetInstancesWithUnreportedNotApplicablePatches(const Value: Integer);
    function Obj: TDescribePatchGroupStateResponse;
    function IsSetInstances: Boolean;
    function IsSetInstancesWithCriticalNonCompliantPatches: Boolean;
    function IsSetInstancesWithFailedPatches: Boolean;
    function IsSetInstancesWithInstalledOtherPatches: Boolean;
    function IsSetInstancesWithInstalledPatches: Boolean;
    function IsSetInstancesWithInstalledPendingRebootPatches: Boolean;
    function IsSetInstancesWithInstalledRejectedPatches: Boolean;
    function IsSetInstancesWithMissingPatches: Boolean;
    function IsSetInstancesWithNotApplicablePatches: Boolean;
    function IsSetInstancesWithOtherNonCompliantPatches: Boolean;
    function IsSetInstancesWithSecurityNonCompliantPatches: Boolean;
    function IsSetInstancesWithUnreportedNotApplicablePatches: Boolean;
    property Instances: Integer read GetInstances write SetInstances;
    property InstancesWithCriticalNonCompliantPatches: Integer read GetInstancesWithCriticalNonCompliantPatches write SetInstancesWithCriticalNonCompliantPatches;
    property InstancesWithFailedPatches: Integer read GetInstancesWithFailedPatches write SetInstancesWithFailedPatches;
    property InstancesWithInstalledOtherPatches: Integer read GetInstancesWithInstalledOtherPatches write SetInstancesWithInstalledOtherPatches;
    property InstancesWithInstalledPatches: Integer read GetInstancesWithInstalledPatches write SetInstancesWithInstalledPatches;
    property InstancesWithInstalledPendingRebootPatches: Integer read GetInstancesWithInstalledPendingRebootPatches write SetInstancesWithInstalledPendingRebootPatches;
    property InstancesWithInstalledRejectedPatches: Integer read GetInstancesWithInstalledRejectedPatches write SetInstancesWithInstalledRejectedPatches;
    property InstancesWithMissingPatches: Integer read GetInstancesWithMissingPatches write SetInstancesWithMissingPatches;
    property InstancesWithNotApplicablePatches: Integer read GetInstancesWithNotApplicablePatches write SetInstancesWithNotApplicablePatches;
    property InstancesWithOtherNonCompliantPatches: Integer read GetInstancesWithOtherNonCompliantPatches write SetInstancesWithOtherNonCompliantPatches;
    property InstancesWithSecurityNonCompliantPatches: Integer read GetInstancesWithSecurityNonCompliantPatches write SetInstancesWithSecurityNonCompliantPatches;
    property InstancesWithUnreportedNotApplicablePatches: Integer read GetInstancesWithUnreportedNotApplicablePatches write SetInstancesWithUnreportedNotApplicablePatches;
  end;
  
  TDescribePatchGroupStateResponse = class(TAmazonWebServiceResponse, IDescribePatchGroupStateResponse)
  strict private
    FInstances: Nullable<Integer>;
    FInstancesWithCriticalNonCompliantPatches: Nullable<Integer>;
    FInstancesWithFailedPatches: Nullable<Integer>;
    FInstancesWithInstalledOtherPatches: Nullable<Integer>;
    FInstancesWithInstalledPatches: Nullable<Integer>;
    FInstancesWithInstalledPendingRebootPatches: Nullable<Integer>;
    FInstancesWithInstalledRejectedPatches: Nullable<Integer>;
    FInstancesWithMissingPatches: Nullable<Integer>;
    FInstancesWithNotApplicablePatches: Nullable<Integer>;
    FInstancesWithOtherNonCompliantPatches: Nullable<Integer>;
    FInstancesWithSecurityNonCompliantPatches: Nullable<Integer>;
    FInstancesWithUnreportedNotApplicablePatches: Nullable<Integer>;
    function GetInstances: Integer;
    procedure SetInstances(const Value: Integer);
    function GetInstancesWithCriticalNonCompliantPatches: Integer;
    procedure SetInstancesWithCriticalNonCompliantPatches(const Value: Integer);
    function GetInstancesWithFailedPatches: Integer;
    procedure SetInstancesWithFailedPatches(const Value: Integer);
    function GetInstancesWithInstalledOtherPatches: Integer;
    procedure SetInstancesWithInstalledOtherPatches(const Value: Integer);
    function GetInstancesWithInstalledPatches: Integer;
    procedure SetInstancesWithInstalledPatches(const Value: Integer);
    function GetInstancesWithInstalledPendingRebootPatches: Integer;
    procedure SetInstancesWithInstalledPendingRebootPatches(const Value: Integer);
    function GetInstancesWithInstalledRejectedPatches: Integer;
    procedure SetInstancesWithInstalledRejectedPatches(const Value: Integer);
    function GetInstancesWithMissingPatches: Integer;
    procedure SetInstancesWithMissingPatches(const Value: Integer);
    function GetInstancesWithNotApplicablePatches: Integer;
    procedure SetInstancesWithNotApplicablePatches(const Value: Integer);
    function GetInstancesWithOtherNonCompliantPatches: Integer;
    procedure SetInstancesWithOtherNonCompliantPatches(const Value: Integer);
    function GetInstancesWithSecurityNonCompliantPatches: Integer;
    procedure SetInstancesWithSecurityNonCompliantPatches(const Value: Integer);
    function GetInstancesWithUnreportedNotApplicablePatches: Integer;
    procedure SetInstancesWithUnreportedNotApplicablePatches(const Value: Integer);
  strict protected
    function Obj: TDescribePatchGroupStateResponse;
  public
    function IsSetInstances: Boolean;
    function IsSetInstancesWithCriticalNonCompliantPatches: Boolean;
    function IsSetInstancesWithFailedPatches: Boolean;
    function IsSetInstancesWithInstalledOtherPatches: Boolean;
    function IsSetInstancesWithInstalledPatches: Boolean;
    function IsSetInstancesWithInstalledPendingRebootPatches: Boolean;
    function IsSetInstancesWithInstalledRejectedPatches: Boolean;
    function IsSetInstancesWithMissingPatches: Boolean;
    function IsSetInstancesWithNotApplicablePatches: Boolean;
    function IsSetInstancesWithOtherNonCompliantPatches: Boolean;
    function IsSetInstancesWithSecurityNonCompliantPatches: Boolean;
    function IsSetInstancesWithUnreportedNotApplicablePatches: Boolean;
    property Instances: Integer read GetInstances write SetInstances;
    property InstancesWithCriticalNonCompliantPatches: Integer read GetInstancesWithCriticalNonCompliantPatches write SetInstancesWithCriticalNonCompliantPatches;
    property InstancesWithFailedPatches: Integer read GetInstancesWithFailedPatches write SetInstancesWithFailedPatches;
    property InstancesWithInstalledOtherPatches: Integer read GetInstancesWithInstalledOtherPatches write SetInstancesWithInstalledOtherPatches;
    property InstancesWithInstalledPatches: Integer read GetInstancesWithInstalledPatches write SetInstancesWithInstalledPatches;
    property InstancesWithInstalledPendingRebootPatches: Integer read GetInstancesWithInstalledPendingRebootPatches write SetInstancesWithInstalledPendingRebootPatches;
    property InstancesWithInstalledRejectedPatches: Integer read GetInstancesWithInstalledRejectedPatches write SetInstancesWithInstalledRejectedPatches;
    property InstancesWithMissingPatches: Integer read GetInstancesWithMissingPatches write SetInstancesWithMissingPatches;
    property InstancesWithNotApplicablePatches: Integer read GetInstancesWithNotApplicablePatches write SetInstancesWithNotApplicablePatches;
    property InstancesWithOtherNonCompliantPatches: Integer read GetInstancesWithOtherNonCompliantPatches write SetInstancesWithOtherNonCompliantPatches;
    property InstancesWithSecurityNonCompliantPatches: Integer read GetInstancesWithSecurityNonCompliantPatches write SetInstancesWithSecurityNonCompliantPatches;
    property InstancesWithUnreportedNotApplicablePatches: Integer read GetInstancesWithUnreportedNotApplicablePatches write SetInstancesWithUnreportedNotApplicablePatches;
  end;
  
implementation

{ TDescribePatchGroupStateResponse }

function TDescribePatchGroupStateResponse.Obj: TDescribePatchGroupStateResponse;
begin
  Result := Self;
end;

function TDescribePatchGroupStateResponse.GetInstances: Integer;
begin
  Result := FInstances.ValueOrDefault;
end;

procedure TDescribePatchGroupStateResponse.SetInstances(const Value: Integer);
begin
  FInstances := Value;
end;

function TDescribePatchGroupStateResponse.IsSetInstances: Boolean;
begin
  Result := FInstances.HasValue;
end;

function TDescribePatchGroupStateResponse.GetInstancesWithCriticalNonCompliantPatches: Integer;
begin
  Result := FInstancesWithCriticalNonCompliantPatches.ValueOrDefault;
end;

procedure TDescribePatchGroupStateResponse.SetInstancesWithCriticalNonCompliantPatches(const Value: Integer);
begin
  FInstancesWithCriticalNonCompliantPatches := Value;
end;

function TDescribePatchGroupStateResponse.IsSetInstancesWithCriticalNonCompliantPatches: Boolean;
begin
  Result := FInstancesWithCriticalNonCompliantPatches.HasValue;
end;

function TDescribePatchGroupStateResponse.GetInstancesWithFailedPatches: Integer;
begin
  Result := FInstancesWithFailedPatches.ValueOrDefault;
end;

procedure TDescribePatchGroupStateResponse.SetInstancesWithFailedPatches(const Value: Integer);
begin
  FInstancesWithFailedPatches := Value;
end;

function TDescribePatchGroupStateResponse.IsSetInstancesWithFailedPatches: Boolean;
begin
  Result := FInstancesWithFailedPatches.HasValue;
end;

function TDescribePatchGroupStateResponse.GetInstancesWithInstalledOtherPatches: Integer;
begin
  Result := FInstancesWithInstalledOtherPatches.ValueOrDefault;
end;

procedure TDescribePatchGroupStateResponse.SetInstancesWithInstalledOtherPatches(const Value: Integer);
begin
  FInstancesWithInstalledOtherPatches := Value;
end;

function TDescribePatchGroupStateResponse.IsSetInstancesWithInstalledOtherPatches: Boolean;
begin
  Result := FInstancesWithInstalledOtherPatches.HasValue;
end;

function TDescribePatchGroupStateResponse.GetInstancesWithInstalledPatches: Integer;
begin
  Result := FInstancesWithInstalledPatches.ValueOrDefault;
end;

procedure TDescribePatchGroupStateResponse.SetInstancesWithInstalledPatches(const Value: Integer);
begin
  FInstancesWithInstalledPatches := Value;
end;

function TDescribePatchGroupStateResponse.IsSetInstancesWithInstalledPatches: Boolean;
begin
  Result := FInstancesWithInstalledPatches.HasValue;
end;

function TDescribePatchGroupStateResponse.GetInstancesWithInstalledPendingRebootPatches: Integer;
begin
  Result := FInstancesWithInstalledPendingRebootPatches.ValueOrDefault;
end;

procedure TDescribePatchGroupStateResponse.SetInstancesWithInstalledPendingRebootPatches(const Value: Integer);
begin
  FInstancesWithInstalledPendingRebootPatches := Value;
end;

function TDescribePatchGroupStateResponse.IsSetInstancesWithInstalledPendingRebootPatches: Boolean;
begin
  Result := FInstancesWithInstalledPendingRebootPatches.HasValue;
end;

function TDescribePatchGroupStateResponse.GetInstancesWithInstalledRejectedPatches: Integer;
begin
  Result := FInstancesWithInstalledRejectedPatches.ValueOrDefault;
end;

procedure TDescribePatchGroupStateResponse.SetInstancesWithInstalledRejectedPatches(const Value: Integer);
begin
  FInstancesWithInstalledRejectedPatches := Value;
end;

function TDescribePatchGroupStateResponse.IsSetInstancesWithInstalledRejectedPatches: Boolean;
begin
  Result := FInstancesWithInstalledRejectedPatches.HasValue;
end;

function TDescribePatchGroupStateResponse.GetInstancesWithMissingPatches: Integer;
begin
  Result := FInstancesWithMissingPatches.ValueOrDefault;
end;

procedure TDescribePatchGroupStateResponse.SetInstancesWithMissingPatches(const Value: Integer);
begin
  FInstancesWithMissingPatches := Value;
end;

function TDescribePatchGroupStateResponse.IsSetInstancesWithMissingPatches: Boolean;
begin
  Result := FInstancesWithMissingPatches.HasValue;
end;

function TDescribePatchGroupStateResponse.GetInstancesWithNotApplicablePatches: Integer;
begin
  Result := FInstancesWithNotApplicablePatches.ValueOrDefault;
end;

procedure TDescribePatchGroupStateResponse.SetInstancesWithNotApplicablePatches(const Value: Integer);
begin
  FInstancesWithNotApplicablePatches := Value;
end;

function TDescribePatchGroupStateResponse.IsSetInstancesWithNotApplicablePatches: Boolean;
begin
  Result := FInstancesWithNotApplicablePatches.HasValue;
end;

function TDescribePatchGroupStateResponse.GetInstancesWithOtherNonCompliantPatches: Integer;
begin
  Result := FInstancesWithOtherNonCompliantPatches.ValueOrDefault;
end;

procedure TDescribePatchGroupStateResponse.SetInstancesWithOtherNonCompliantPatches(const Value: Integer);
begin
  FInstancesWithOtherNonCompliantPatches := Value;
end;

function TDescribePatchGroupStateResponse.IsSetInstancesWithOtherNonCompliantPatches: Boolean;
begin
  Result := FInstancesWithOtherNonCompliantPatches.HasValue;
end;

function TDescribePatchGroupStateResponse.GetInstancesWithSecurityNonCompliantPatches: Integer;
begin
  Result := FInstancesWithSecurityNonCompliantPatches.ValueOrDefault;
end;

procedure TDescribePatchGroupStateResponse.SetInstancesWithSecurityNonCompliantPatches(const Value: Integer);
begin
  FInstancesWithSecurityNonCompliantPatches := Value;
end;

function TDescribePatchGroupStateResponse.IsSetInstancesWithSecurityNonCompliantPatches: Boolean;
begin
  Result := FInstancesWithSecurityNonCompliantPatches.HasValue;
end;

function TDescribePatchGroupStateResponse.GetInstancesWithUnreportedNotApplicablePatches: Integer;
begin
  Result := FInstancesWithUnreportedNotApplicablePatches.ValueOrDefault;
end;

procedure TDescribePatchGroupStateResponse.SetInstancesWithUnreportedNotApplicablePatches(const Value: Integer);
begin
  FInstancesWithUnreportedNotApplicablePatches := Value;
end;

function TDescribePatchGroupStateResponse.IsSetInstancesWithUnreportedNotApplicablePatches: Boolean;
begin
  Result := FInstancesWithUnreportedNotApplicablePatches.HasValue;
end;

end.
