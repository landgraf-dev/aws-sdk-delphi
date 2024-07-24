unit AWS.SSM.Model.InstancePatchState;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TInstancePatchState = class;
  
  IInstancePatchState = interface
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetCriticalNonCompliantCount: Integer;
    procedure SetCriticalNonCompliantCount(const Value: Integer);
    function GetFailedCount: Integer;
    procedure SetFailedCount(const Value: Integer);
    function GetInstallOverrideList: string;
    procedure SetInstallOverrideList(const Value: string);
    function GetInstalledCount: Integer;
    procedure SetInstalledCount(const Value: Integer);
    function GetInstalledOtherCount: Integer;
    procedure SetInstalledOtherCount(const Value: Integer);
    function GetInstalledPendingRebootCount: Integer;
    procedure SetInstalledPendingRebootCount(const Value: Integer);
    function GetInstalledRejectedCount: Integer;
    procedure SetInstalledRejectedCount(const Value: Integer);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetLastNoRebootInstallOperationTime: TDateTime;
    procedure SetLastNoRebootInstallOperationTime(const Value: TDateTime);
    function GetMissingCount: Integer;
    procedure SetMissingCount(const Value: Integer);
    function GetNotApplicableCount: Integer;
    procedure SetNotApplicableCount(const Value: Integer);
    function GetOperation: TPatchOperationType;
    procedure SetOperation(const Value: TPatchOperationType);
    function GetOperationEndTime: TDateTime;
    procedure SetOperationEndTime(const Value: TDateTime);
    function GetOperationStartTime: TDateTime;
    procedure SetOperationStartTime(const Value: TDateTime);
    function GetOtherNonCompliantCount: Integer;
    procedure SetOtherNonCompliantCount(const Value: Integer);
    function GetOwnerInformation: string;
    procedure SetOwnerInformation(const Value: string);
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
    function GetRebootOption: TRebootOption;
    procedure SetRebootOption(const Value: TRebootOption);
    function GetSecurityNonCompliantCount: Integer;
    procedure SetSecurityNonCompliantCount(const Value: Integer);
    function GetSnapshotId: string;
    procedure SetSnapshotId(const Value: string);
    function GetUnreportedNotApplicableCount: Integer;
    procedure SetUnreportedNotApplicableCount(const Value: Integer);
    function Obj: TInstancePatchState;
    function IsSetBaselineId: Boolean;
    function IsSetCriticalNonCompliantCount: Boolean;
    function IsSetFailedCount: Boolean;
    function IsSetInstallOverrideList: Boolean;
    function IsSetInstalledCount: Boolean;
    function IsSetInstalledOtherCount: Boolean;
    function IsSetInstalledPendingRebootCount: Boolean;
    function IsSetInstalledRejectedCount: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetLastNoRebootInstallOperationTime: Boolean;
    function IsSetMissingCount: Boolean;
    function IsSetNotApplicableCount: Boolean;
    function IsSetOperation: Boolean;
    function IsSetOperationEndTime: Boolean;
    function IsSetOperationStartTime: Boolean;
    function IsSetOtherNonCompliantCount: Boolean;
    function IsSetOwnerInformation: Boolean;
    function IsSetPatchGroup: Boolean;
    function IsSetRebootOption: Boolean;
    function IsSetSecurityNonCompliantCount: Boolean;
    function IsSetSnapshotId: Boolean;
    function IsSetUnreportedNotApplicableCount: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property CriticalNonCompliantCount: Integer read GetCriticalNonCompliantCount write SetCriticalNonCompliantCount;
    property FailedCount: Integer read GetFailedCount write SetFailedCount;
    property InstallOverrideList: string read GetInstallOverrideList write SetInstallOverrideList;
    property InstalledCount: Integer read GetInstalledCount write SetInstalledCount;
    property InstalledOtherCount: Integer read GetInstalledOtherCount write SetInstalledOtherCount;
    property InstalledPendingRebootCount: Integer read GetInstalledPendingRebootCount write SetInstalledPendingRebootCount;
    property InstalledRejectedCount: Integer read GetInstalledRejectedCount write SetInstalledRejectedCount;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property LastNoRebootInstallOperationTime: TDateTime read GetLastNoRebootInstallOperationTime write SetLastNoRebootInstallOperationTime;
    property MissingCount: Integer read GetMissingCount write SetMissingCount;
    property NotApplicableCount: Integer read GetNotApplicableCount write SetNotApplicableCount;
    property Operation: TPatchOperationType read GetOperation write SetOperation;
    property OperationEndTime: TDateTime read GetOperationEndTime write SetOperationEndTime;
    property OperationStartTime: TDateTime read GetOperationStartTime write SetOperationStartTime;
    property OtherNonCompliantCount: Integer read GetOtherNonCompliantCount write SetOtherNonCompliantCount;
    property OwnerInformation: string read GetOwnerInformation write SetOwnerInformation;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
    property RebootOption: TRebootOption read GetRebootOption write SetRebootOption;
    property SecurityNonCompliantCount: Integer read GetSecurityNonCompliantCount write SetSecurityNonCompliantCount;
    property SnapshotId: string read GetSnapshotId write SetSnapshotId;
    property UnreportedNotApplicableCount: Integer read GetUnreportedNotApplicableCount write SetUnreportedNotApplicableCount;
  end;
  
  TInstancePatchState = class
  strict private
    FBaselineId: Nullable<string>;
    FCriticalNonCompliantCount: Nullable<Integer>;
    FFailedCount: Nullable<Integer>;
    FInstallOverrideList: Nullable<string>;
    FInstalledCount: Nullable<Integer>;
    FInstalledOtherCount: Nullable<Integer>;
    FInstalledPendingRebootCount: Nullable<Integer>;
    FInstalledRejectedCount: Nullable<Integer>;
    FInstanceId: Nullable<string>;
    FLastNoRebootInstallOperationTime: Nullable<TDateTime>;
    FMissingCount: Nullable<Integer>;
    FNotApplicableCount: Nullable<Integer>;
    FOperation: Nullable<TPatchOperationType>;
    FOperationEndTime: Nullable<TDateTime>;
    FOperationStartTime: Nullable<TDateTime>;
    FOtherNonCompliantCount: Nullable<Integer>;
    FOwnerInformation: Nullable<string>;
    FPatchGroup: Nullable<string>;
    FRebootOption: Nullable<TRebootOption>;
    FSecurityNonCompliantCount: Nullable<Integer>;
    FSnapshotId: Nullable<string>;
    FUnreportedNotApplicableCount: Nullable<Integer>;
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetCriticalNonCompliantCount: Integer;
    procedure SetCriticalNonCompliantCount(const Value: Integer);
    function GetFailedCount: Integer;
    procedure SetFailedCount(const Value: Integer);
    function GetInstallOverrideList: string;
    procedure SetInstallOverrideList(const Value: string);
    function GetInstalledCount: Integer;
    procedure SetInstalledCount(const Value: Integer);
    function GetInstalledOtherCount: Integer;
    procedure SetInstalledOtherCount(const Value: Integer);
    function GetInstalledPendingRebootCount: Integer;
    procedure SetInstalledPendingRebootCount(const Value: Integer);
    function GetInstalledRejectedCount: Integer;
    procedure SetInstalledRejectedCount(const Value: Integer);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetLastNoRebootInstallOperationTime: TDateTime;
    procedure SetLastNoRebootInstallOperationTime(const Value: TDateTime);
    function GetMissingCount: Integer;
    procedure SetMissingCount(const Value: Integer);
    function GetNotApplicableCount: Integer;
    procedure SetNotApplicableCount(const Value: Integer);
    function GetOperation: TPatchOperationType;
    procedure SetOperation(const Value: TPatchOperationType);
    function GetOperationEndTime: TDateTime;
    procedure SetOperationEndTime(const Value: TDateTime);
    function GetOperationStartTime: TDateTime;
    procedure SetOperationStartTime(const Value: TDateTime);
    function GetOtherNonCompliantCount: Integer;
    procedure SetOtherNonCompliantCount(const Value: Integer);
    function GetOwnerInformation: string;
    procedure SetOwnerInformation(const Value: string);
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
    function GetRebootOption: TRebootOption;
    procedure SetRebootOption(const Value: TRebootOption);
    function GetSecurityNonCompliantCount: Integer;
    procedure SetSecurityNonCompliantCount(const Value: Integer);
    function GetSnapshotId: string;
    procedure SetSnapshotId(const Value: string);
    function GetUnreportedNotApplicableCount: Integer;
    procedure SetUnreportedNotApplicableCount(const Value: Integer);
  strict protected
    function Obj: TInstancePatchState;
  public
    function IsSetBaselineId: Boolean;
    function IsSetCriticalNonCompliantCount: Boolean;
    function IsSetFailedCount: Boolean;
    function IsSetInstallOverrideList: Boolean;
    function IsSetInstalledCount: Boolean;
    function IsSetInstalledOtherCount: Boolean;
    function IsSetInstalledPendingRebootCount: Boolean;
    function IsSetInstalledRejectedCount: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetLastNoRebootInstallOperationTime: Boolean;
    function IsSetMissingCount: Boolean;
    function IsSetNotApplicableCount: Boolean;
    function IsSetOperation: Boolean;
    function IsSetOperationEndTime: Boolean;
    function IsSetOperationStartTime: Boolean;
    function IsSetOtherNonCompliantCount: Boolean;
    function IsSetOwnerInformation: Boolean;
    function IsSetPatchGroup: Boolean;
    function IsSetRebootOption: Boolean;
    function IsSetSecurityNonCompliantCount: Boolean;
    function IsSetSnapshotId: Boolean;
    function IsSetUnreportedNotApplicableCount: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property CriticalNonCompliantCount: Integer read GetCriticalNonCompliantCount write SetCriticalNonCompliantCount;
    property FailedCount: Integer read GetFailedCount write SetFailedCount;
    property InstallOverrideList: string read GetInstallOverrideList write SetInstallOverrideList;
    property InstalledCount: Integer read GetInstalledCount write SetInstalledCount;
    property InstalledOtherCount: Integer read GetInstalledOtherCount write SetInstalledOtherCount;
    property InstalledPendingRebootCount: Integer read GetInstalledPendingRebootCount write SetInstalledPendingRebootCount;
    property InstalledRejectedCount: Integer read GetInstalledRejectedCount write SetInstalledRejectedCount;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property LastNoRebootInstallOperationTime: TDateTime read GetLastNoRebootInstallOperationTime write SetLastNoRebootInstallOperationTime;
    property MissingCount: Integer read GetMissingCount write SetMissingCount;
    property NotApplicableCount: Integer read GetNotApplicableCount write SetNotApplicableCount;
    property Operation: TPatchOperationType read GetOperation write SetOperation;
    property OperationEndTime: TDateTime read GetOperationEndTime write SetOperationEndTime;
    property OperationStartTime: TDateTime read GetOperationStartTime write SetOperationStartTime;
    property OtherNonCompliantCount: Integer read GetOtherNonCompliantCount write SetOtherNonCompliantCount;
    property OwnerInformation: string read GetOwnerInformation write SetOwnerInformation;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
    property RebootOption: TRebootOption read GetRebootOption write SetRebootOption;
    property SecurityNonCompliantCount: Integer read GetSecurityNonCompliantCount write SetSecurityNonCompliantCount;
    property SnapshotId: string read GetSnapshotId write SetSnapshotId;
    property UnreportedNotApplicableCount: Integer read GetUnreportedNotApplicableCount write SetUnreportedNotApplicableCount;
  end;
  
implementation

{ TInstancePatchState }

function TInstancePatchState.Obj: TInstancePatchState;
begin
  Result := Self;
end;

function TInstancePatchState.GetBaselineId: string;
begin
  Result := FBaselineId.ValueOrDefault;
end;

procedure TInstancePatchState.SetBaselineId(const Value: string);
begin
  FBaselineId := Value;
end;

function TInstancePatchState.IsSetBaselineId: Boolean;
begin
  Result := FBaselineId.HasValue;
end;

function TInstancePatchState.GetCriticalNonCompliantCount: Integer;
begin
  Result := FCriticalNonCompliantCount.ValueOrDefault;
end;

procedure TInstancePatchState.SetCriticalNonCompliantCount(const Value: Integer);
begin
  FCriticalNonCompliantCount := Value;
end;

function TInstancePatchState.IsSetCriticalNonCompliantCount: Boolean;
begin
  Result := FCriticalNonCompliantCount.HasValue;
end;

function TInstancePatchState.GetFailedCount: Integer;
begin
  Result := FFailedCount.ValueOrDefault;
end;

procedure TInstancePatchState.SetFailedCount(const Value: Integer);
begin
  FFailedCount := Value;
end;

function TInstancePatchState.IsSetFailedCount: Boolean;
begin
  Result := FFailedCount.HasValue;
end;

function TInstancePatchState.GetInstallOverrideList: string;
begin
  Result := FInstallOverrideList.ValueOrDefault;
end;

procedure TInstancePatchState.SetInstallOverrideList(const Value: string);
begin
  FInstallOverrideList := Value;
end;

function TInstancePatchState.IsSetInstallOverrideList: Boolean;
begin
  Result := FInstallOverrideList.HasValue;
end;

function TInstancePatchState.GetInstalledCount: Integer;
begin
  Result := FInstalledCount.ValueOrDefault;
end;

procedure TInstancePatchState.SetInstalledCount(const Value: Integer);
begin
  FInstalledCount := Value;
end;

function TInstancePatchState.IsSetInstalledCount: Boolean;
begin
  Result := FInstalledCount.HasValue;
end;

function TInstancePatchState.GetInstalledOtherCount: Integer;
begin
  Result := FInstalledOtherCount.ValueOrDefault;
end;

procedure TInstancePatchState.SetInstalledOtherCount(const Value: Integer);
begin
  FInstalledOtherCount := Value;
end;

function TInstancePatchState.IsSetInstalledOtherCount: Boolean;
begin
  Result := FInstalledOtherCount.HasValue;
end;

function TInstancePatchState.GetInstalledPendingRebootCount: Integer;
begin
  Result := FInstalledPendingRebootCount.ValueOrDefault;
end;

procedure TInstancePatchState.SetInstalledPendingRebootCount(const Value: Integer);
begin
  FInstalledPendingRebootCount := Value;
end;

function TInstancePatchState.IsSetInstalledPendingRebootCount: Boolean;
begin
  Result := FInstalledPendingRebootCount.HasValue;
end;

function TInstancePatchState.GetInstalledRejectedCount: Integer;
begin
  Result := FInstalledRejectedCount.ValueOrDefault;
end;

procedure TInstancePatchState.SetInstalledRejectedCount(const Value: Integer);
begin
  FInstalledRejectedCount := Value;
end;

function TInstancePatchState.IsSetInstalledRejectedCount: Boolean;
begin
  Result := FInstalledRejectedCount.HasValue;
end;

function TInstancePatchState.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TInstancePatchState.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TInstancePatchState.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TInstancePatchState.GetLastNoRebootInstallOperationTime: TDateTime;
begin
  Result := FLastNoRebootInstallOperationTime.ValueOrDefault;
end;

procedure TInstancePatchState.SetLastNoRebootInstallOperationTime(const Value: TDateTime);
begin
  FLastNoRebootInstallOperationTime := Value;
end;

function TInstancePatchState.IsSetLastNoRebootInstallOperationTime: Boolean;
begin
  Result := FLastNoRebootInstallOperationTime.HasValue;
end;

function TInstancePatchState.GetMissingCount: Integer;
begin
  Result := FMissingCount.ValueOrDefault;
end;

procedure TInstancePatchState.SetMissingCount(const Value: Integer);
begin
  FMissingCount := Value;
end;

function TInstancePatchState.IsSetMissingCount: Boolean;
begin
  Result := FMissingCount.HasValue;
end;

function TInstancePatchState.GetNotApplicableCount: Integer;
begin
  Result := FNotApplicableCount.ValueOrDefault;
end;

procedure TInstancePatchState.SetNotApplicableCount(const Value: Integer);
begin
  FNotApplicableCount := Value;
end;

function TInstancePatchState.IsSetNotApplicableCount: Boolean;
begin
  Result := FNotApplicableCount.HasValue;
end;

function TInstancePatchState.GetOperation: TPatchOperationType;
begin
  Result := FOperation.ValueOrDefault;
end;

procedure TInstancePatchState.SetOperation(const Value: TPatchOperationType);
begin
  FOperation := Value;
end;

function TInstancePatchState.IsSetOperation: Boolean;
begin
  Result := FOperation.HasValue;
end;

function TInstancePatchState.GetOperationEndTime: TDateTime;
begin
  Result := FOperationEndTime.ValueOrDefault;
end;

procedure TInstancePatchState.SetOperationEndTime(const Value: TDateTime);
begin
  FOperationEndTime := Value;
end;

function TInstancePatchState.IsSetOperationEndTime: Boolean;
begin
  Result := FOperationEndTime.HasValue;
end;

function TInstancePatchState.GetOperationStartTime: TDateTime;
begin
  Result := FOperationStartTime.ValueOrDefault;
end;

procedure TInstancePatchState.SetOperationStartTime(const Value: TDateTime);
begin
  FOperationStartTime := Value;
end;

function TInstancePatchState.IsSetOperationStartTime: Boolean;
begin
  Result := FOperationStartTime.HasValue;
end;

function TInstancePatchState.GetOtherNonCompliantCount: Integer;
begin
  Result := FOtherNonCompliantCount.ValueOrDefault;
end;

procedure TInstancePatchState.SetOtherNonCompliantCount(const Value: Integer);
begin
  FOtherNonCompliantCount := Value;
end;

function TInstancePatchState.IsSetOtherNonCompliantCount: Boolean;
begin
  Result := FOtherNonCompliantCount.HasValue;
end;

function TInstancePatchState.GetOwnerInformation: string;
begin
  Result := FOwnerInformation.ValueOrDefault;
end;

procedure TInstancePatchState.SetOwnerInformation(const Value: string);
begin
  FOwnerInformation := Value;
end;

function TInstancePatchState.IsSetOwnerInformation: Boolean;
begin
  Result := FOwnerInformation.HasValue;
end;

function TInstancePatchState.GetPatchGroup: string;
begin
  Result := FPatchGroup.ValueOrDefault;
end;

procedure TInstancePatchState.SetPatchGroup(const Value: string);
begin
  FPatchGroup := Value;
end;

function TInstancePatchState.IsSetPatchGroup: Boolean;
begin
  Result := FPatchGroup.HasValue;
end;

function TInstancePatchState.GetRebootOption: TRebootOption;
begin
  Result := FRebootOption.ValueOrDefault;
end;

procedure TInstancePatchState.SetRebootOption(const Value: TRebootOption);
begin
  FRebootOption := Value;
end;

function TInstancePatchState.IsSetRebootOption: Boolean;
begin
  Result := FRebootOption.HasValue;
end;

function TInstancePatchState.GetSecurityNonCompliantCount: Integer;
begin
  Result := FSecurityNonCompliantCount.ValueOrDefault;
end;

procedure TInstancePatchState.SetSecurityNonCompliantCount(const Value: Integer);
begin
  FSecurityNonCompliantCount := Value;
end;

function TInstancePatchState.IsSetSecurityNonCompliantCount: Boolean;
begin
  Result := FSecurityNonCompliantCount.HasValue;
end;

function TInstancePatchState.GetSnapshotId: string;
begin
  Result := FSnapshotId.ValueOrDefault;
end;

procedure TInstancePatchState.SetSnapshotId(const Value: string);
begin
  FSnapshotId := Value;
end;

function TInstancePatchState.IsSetSnapshotId: Boolean;
begin
  Result := FSnapshotId.HasValue;
end;

function TInstancePatchState.GetUnreportedNotApplicableCount: Integer;
begin
  Result := FUnreportedNotApplicableCount.ValueOrDefault;
end;

procedure TInstancePatchState.SetUnreportedNotApplicableCount(const Value: Integer);
begin
  FUnreportedNotApplicableCount := Value;
end;

function TInstancePatchState.IsSetUnreportedNotApplicableCount: Boolean;
begin
  Result := FUnreportedNotApplicableCount.HasValue;
end;

end.
