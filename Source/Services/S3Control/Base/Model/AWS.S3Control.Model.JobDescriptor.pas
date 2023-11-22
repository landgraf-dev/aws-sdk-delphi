unit AWS.S3Control.Model.JobDescriptor;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.S3Control.Model.JobFailure, 
  AWS.S3Control.Model.JobManifest, 
  AWS.S3Control.Model.JobOperation, 
  AWS.S3Control.Model.JobProgressSummary, 
  AWS.S3Control.Model.JobReport, 
  AWS.S3Control.Enums;

type
  TJobDescriptor = class;
  
  IJobDescriptor = interface
    function GetConfirmationRequired: Boolean;
    procedure SetConfirmationRequired(const Value: Boolean);
    function GetCreationTime: TDateTime;
    procedure SetCreationTime(const Value: TDateTime);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetFailureReasons: TObjectList<TJobFailure>;
    procedure SetFailureReasons(const Value: TObjectList<TJobFailure>);
    function GetKeepFailureReasons: Boolean;
    procedure SetKeepFailureReasons(const Value: Boolean);
    function GetJobArn: string;
    procedure SetJobArn(const Value: string);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetManifest: TJobManifest;
    procedure SetManifest(const Value: TJobManifest);
    function GetKeepManifest: Boolean;
    procedure SetKeepManifest(const Value: Boolean);
    function GetOperation: TJobOperation;
    procedure SetOperation(const Value: TJobOperation);
    function GetKeepOperation: Boolean;
    procedure SetKeepOperation(const Value: Boolean);
    function GetPriority: Integer;
    procedure SetPriority(const Value: Integer);
    function GetProgressSummary: TJobProgressSummary;
    procedure SetProgressSummary(const Value: TJobProgressSummary);
    function GetKeepProgressSummary: Boolean;
    procedure SetKeepProgressSummary(const Value: Boolean);
    function GetReport: TJobReport;
    procedure SetReport(const Value: TJobReport);
    function GetKeepReport: Boolean;
    procedure SetKeepReport(const Value: Boolean);
    function GetRoleArn: string;
    procedure SetRoleArn(const Value: string);
    function GetStatus: TJobStatus;
    procedure SetStatus(const Value: TJobStatus);
    function GetStatusUpdateReason: string;
    procedure SetStatusUpdateReason(const Value: string);
    function GetSuspendedCause: string;
    procedure SetSuspendedCause(const Value: string);
    function GetSuspendedDate: TDateTime;
    procedure SetSuspendedDate(const Value: TDateTime);
    function GetTerminationDate: TDateTime;
    procedure SetTerminationDate(const Value: TDateTime);
    function Obj: TJobDescriptor;
    function IsSetConfirmationRequired: Boolean;
    function IsSetCreationTime: Boolean;
    function IsSetDescription: Boolean;
    function IsSetFailureReasons: Boolean;
    function IsSetJobArn: Boolean;
    function IsSetJobId: Boolean;
    function IsSetManifest: Boolean;
    function IsSetOperation: Boolean;
    function IsSetPriority: Boolean;
    function IsSetProgressSummary: Boolean;
    function IsSetReport: Boolean;
    function IsSetRoleArn: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusUpdateReason: Boolean;
    function IsSetSuspendedCause: Boolean;
    function IsSetSuspendedDate: Boolean;
    function IsSetTerminationDate: Boolean;
    property ConfirmationRequired: Boolean read GetConfirmationRequired write SetConfirmationRequired;
    property CreationTime: TDateTime read GetCreationTime write SetCreationTime;
    property Description: string read GetDescription write SetDescription;
    property FailureReasons: TObjectList<TJobFailure> read GetFailureReasons write SetFailureReasons;
    property KeepFailureReasons: Boolean read GetKeepFailureReasons write SetKeepFailureReasons;
    property JobArn: string read GetJobArn write SetJobArn;
    property JobId: string read GetJobId write SetJobId;
    property Manifest: TJobManifest read GetManifest write SetManifest;
    property KeepManifest: Boolean read GetKeepManifest write SetKeepManifest;
    property Operation: TJobOperation read GetOperation write SetOperation;
    property KeepOperation: Boolean read GetKeepOperation write SetKeepOperation;
    property Priority: Integer read GetPriority write SetPriority;
    property ProgressSummary: TJobProgressSummary read GetProgressSummary write SetProgressSummary;
    property KeepProgressSummary: Boolean read GetKeepProgressSummary write SetKeepProgressSummary;
    property Report: TJobReport read GetReport write SetReport;
    property KeepReport: Boolean read GetKeepReport write SetKeepReport;
    property RoleArn: string read GetRoleArn write SetRoleArn;
    property Status: TJobStatus read GetStatus write SetStatus;
    property StatusUpdateReason: string read GetStatusUpdateReason write SetStatusUpdateReason;
    property SuspendedCause: string read GetSuspendedCause write SetSuspendedCause;
    property SuspendedDate: TDateTime read GetSuspendedDate write SetSuspendedDate;
    property TerminationDate: TDateTime read GetTerminationDate write SetTerminationDate;
  end;
  
  TJobDescriptor = class
  strict private
    FConfirmationRequired: Nullable<Boolean>;
    FCreationTime: Nullable<TDateTime>;
    FDescription: Nullable<string>;
    FFailureReasons: TObjectList<TJobFailure>;
    FKeepFailureReasons: Boolean;
    FJobArn: Nullable<string>;
    FJobId: Nullable<string>;
    FManifest: TJobManifest;
    FKeepManifest: Boolean;
    FOperation: TJobOperation;
    FKeepOperation: Boolean;
    FPriority: Nullable<Integer>;
    FProgressSummary: TJobProgressSummary;
    FKeepProgressSummary: Boolean;
    FReport: TJobReport;
    FKeepReport: Boolean;
    FRoleArn: Nullable<string>;
    FStatus: Nullable<TJobStatus>;
    FStatusUpdateReason: Nullable<string>;
    FSuspendedCause: Nullable<string>;
    FSuspendedDate: Nullable<TDateTime>;
    FTerminationDate: Nullable<TDateTime>;
    function GetConfirmationRequired: Boolean;
    procedure SetConfirmationRequired(const Value: Boolean);
    function GetCreationTime: TDateTime;
    procedure SetCreationTime(const Value: TDateTime);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetFailureReasons: TObjectList<TJobFailure>;
    procedure SetFailureReasons(const Value: TObjectList<TJobFailure>);
    function GetKeepFailureReasons: Boolean;
    procedure SetKeepFailureReasons(const Value: Boolean);
    function GetJobArn: string;
    procedure SetJobArn(const Value: string);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetManifest: TJobManifest;
    procedure SetManifest(const Value: TJobManifest);
    function GetKeepManifest: Boolean;
    procedure SetKeepManifest(const Value: Boolean);
    function GetOperation: TJobOperation;
    procedure SetOperation(const Value: TJobOperation);
    function GetKeepOperation: Boolean;
    procedure SetKeepOperation(const Value: Boolean);
    function GetPriority: Integer;
    procedure SetPriority(const Value: Integer);
    function GetProgressSummary: TJobProgressSummary;
    procedure SetProgressSummary(const Value: TJobProgressSummary);
    function GetKeepProgressSummary: Boolean;
    procedure SetKeepProgressSummary(const Value: Boolean);
    function GetReport: TJobReport;
    procedure SetReport(const Value: TJobReport);
    function GetKeepReport: Boolean;
    procedure SetKeepReport(const Value: Boolean);
    function GetRoleArn: string;
    procedure SetRoleArn(const Value: string);
    function GetStatus: TJobStatus;
    procedure SetStatus(const Value: TJobStatus);
    function GetStatusUpdateReason: string;
    procedure SetStatusUpdateReason(const Value: string);
    function GetSuspendedCause: string;
    procedure SetSuspendedCause(const Value: string);
    function GetSuspendedDate: TDateTime;
    procedure SetSuspendedDate(const Value: TDateTime);
    function GetTerminationDate: TDateTime;
    procedure SetTerminationDate(const Value: TDateTime);
  strict protected
    function Obj: TJobDescriptor;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetConfirmationRequired: Boolean;
    function IsSetCreationTime: Boolean;
    function IsSetDescription: Boolean;
    function IsSetFailureReasons: Boolean;
    function IsSetJobArn: Boolean;
    function IsSetJobId: Boolean;
    function IsSetManifest: Boolean;
    function IsSetOperation: Boolean;
    function IsSetPriority: Boolean;
    function IsSetProgressSummary: Boolean;
    function IsSetReport: Boolean;
    function IsSetRoleArn: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusUpdateReason: Boolean;
    function IsSetSuspendedCause: Boolean;
    function IsSetSuspendedDate: Boolean;
    function IsSetTerminationDate: Boolean;
    property ConfirmationRequired: Boolean read GetConfirmationRequired write SetConfirmationRequired;
    property CreationTime: TDateTime read GetCreationTime write SetCreationTime;
    property Description: string read GetDescription write SetDescription;
    property FailureReasons: TObjectList<TJobFailure> read GetFailureReasons write SetFailureReasons;
    property KeepFailureReasons: Boolean read GetKeepFailureReasons write SetKeepFailureReasons;
    property JobArn: string read GetJobArn write SetJobArn;
    property JobId: string read GetJobId write SetJobId;
    property Manifest: TJobManifest read GetManifest write SetManifest;
    property KeepManifest: Boolean read GetKeepManifest write SetKeepManifest;
    property Operation: TJobOperation read GetOperation write SetOperation;
    property KeepOperation: Boolean read GetKeepOperation write SetKeepOperation;
    property Priority: Integer read GetPriority write SetPriority;
    property ProgressSummary: TJobProgressSummary read GetProgressSummary write SetProgressSummary;
    property KeepProgressSummary: Boolean read GetKeepProgressSummary write SetKeepProgressSummary;
    property Report: TJobReport read GetReport write SetReport;
    property KeepReport: Boolean read GetKeepReport write SetKeepReport;
    property RoleArn: string read GetRoleArn write SetRoleArn;
    property Status: TJobStatus read GetStatus write SetStatus;
    property StatusUpdateReason: string read GetStatusUpdateReason write SetStatusUpdateReason;
    property SuspendedCause: string read GetSuspendedCause write SetSuspendedCause;
    property SuspendedDate: TDateTime read GetSuspendedDate write SetSuspendedDate;
    property TerminationDate: TDateTime read GetTerminationDate write SetTerminationDate;
  end;
  
implementation

{ TJobDescriptor }

constructor TJobDescriptor.Create;
begin
  inherited;
  FFailureReasons := TObjectList<TJobFailure>.Create;
end;

destructor TJobDescriptor.Destroy;
begin
  Report := nil;
  ProgressSummary := nil;
  Operation := nil;
  Manifest := nil;
  FailureReasons := nil;
  inherited;
end;

function TJobDescriptor.Obj: TJobDescriptor;
begin
  Result := Self;
end;

function TJobDescriptor.GetConfirmationRequired: Boolean;
begin
  Result := FConfirmationRequired.ValueOrDefault;
end;

procedure TJobDescriptor.SetConfirmationRequired(const Value: Boolean);
begin
  FConfirmationRequired := Value;
end;

function TJobDescriptor.IsSetConfirmationRequired: Boolean;
begin
  Result := FConfirmationRequired.HasValue;
end;

function TJobDescriptor.GetCreationTime: TDateTime;
begin
  Result := FCreationTime.ValueOrDefault;
end;

procedure TJobDescriptor.SetCreationTime(const Value: TDateTime);
begin
  FCreationTime := Value;
end;

function TJobDescriptor.IsSetCreationTime: Boolean;
begin
  Result := FCreationTime.HasValue;
end;

function TJobDescriptor.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TJobDescriptor.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TJobDescriptor.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TJobDescriptor.GetFailureReasons: TObjectList<TJobFailure>;
begin
  Result := FFailureReasons;
end;

procedure TJobDescriptor.SetFailureReasons(const Value: TObjectList<TJobFailure>);
begin
  if FFailureReasons <> Value then
  begin
    if not KeepFailureReasons then
      FFailureReasons.Free;
    FFailureReasons := Value;
  end;
end;

function TJobDescriptor.GetKeepFailureReasons: Boolean;
begin
  Result := FKeepFailureReasons;
end;

procedure TJobDescriptor.SetKeepFailureReasons(const Value: Boolean);
begin
  FKeepFailureReasons := Value;
end;

function TJobDescriptor.IsSetFailureReasons: Boolean;
begin
  Result := (FFailureReasons <> nil) and (FFailureReasons.Count > 0);
end;

function TJobDescriptor.GetJobArn: string;
begin
  Result := FJobArn.ValueOrDefault;
end;

procedure TJobDescriptor.SetJobArn(const Value: string);
begin
  FJobArn := Value;
end;

function TJobDescriptor.IsSetJobArn: Boolean;
begin
  Result := FJobArn.HasValue;
end;

function TJobDescriptor.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TJobDescriptor.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TJobDescriptor.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TJobDescriptor.GetManifest: TJobManifest;
begin
  Result := FManifest;
end;

procedure TJobDescriptor.SetManifest(const Value: TJobManifest);
begin
  if FManifest <> Value then
  begin
    if not KeepManifest then
      FManifest.Free;
    FManifest := Value;
  end;
end;

function TJobDescriptor.GetKeepManifest: Boolean;
begin
  Result := FKeepManifest;
end;

procedure TJobDescriptor.SetKeepManifest(const Value: Boolean);
begin
  FKeepManifest := Value;
end;

function TJobDescriptor.IsSetManifest: Boolean;
begin
  Result := FManifest <> nil;
end;

function TJobDescriptor.GetOperation: TJobOperation;
begin
  Result := FOperation;
end;

procedure TJobDescriptor.SetOperation(const Value: TJobOperation);
begin
  if FOperation <> Value then
  begin
    if not KeepOperation then
      FOperation.Free;
    FOperation := Value;
  end;
end;

function TJobDescriptor.GetKeepOperation: Boolean;
begin
  Result := FKeepOperation;
end;

procedure TJobDescriptor.SetKeepOperation(const Value: Boolean);
begin
  FKeepOperation := Value;
end;

function TJobDescriptor.IsSetOperation: Boolean;
begin
  Result := FOperation <> nil;
end;

function TJobDescriptor.GetPriority: Integer;
begin
  Result := FPriority.ValueOrDefault;
end;

procedure TJobDescriptor.SetPriority(const Value: Integer);
begin
  FPriority := Value;
end;

function TJobDescriptor.IsSetPriority: Boolean;
begin
  Result := FPriority.HasValue;
end;

function TJobDescriptor.GetProgressSummary: TJobProgressSummary;
begin
  Result := FProgressSummary;
end;

procedure TJobDescriptor.SetProgressSummary(const Value: TJobProgressSummary);
begin
  if FProgressSummary <> Value then
  begin
    if not KeepProgressSummary then
      FProgressSummary.Free;
    FProgressSummary := Value;
  end;
end;

function TJobDescriptor.GetKeepProgressSummary: Boolean;
begin
  Result := FKeepProgressSummary;
end;

procedure TJobDescriptor.SetKeepProgressSummary(const Value: Boolean);
begin
  FKeepProgressSummary := Value;
end;

function TJobDescriptor.IsSetProgressSummary: Boolean;
begin
  Result := FProgressSummary <> nil;
end;

function TJobDescriptor.GetReport: TJobReport;
begin
  Result := FReport;
end;

procedure TJobDescriptor.SetReport(const Value: TJobReport);
begin
  if FReport <> Value then
  begin
    if not KeepReport then
      FReport.Free;
    FReport := Value;
  end;
end;

function TJobDescriptor.GetKeepReport: Boolean;
begin
  Result := FKeepReport;
end;

procedure TJobDescriptor.SetKeepReport(const Value: Boolean);
begin
  FKeepReport := Value;
end;

function TJobDescriptor.IsSetReport: Boolean;
begin
  Result := FReport <> nil;
end;

function TJobDescriptor.GetRoleArn: string;
begin
  Result := FRoleArn.ValueOrDefault;
end;

procedure TJobDescriptor.SetRoleArn(const Value: string);
begin
  FRoleArn := Value;
end;

function TJobDescriptor.IsSetRoleArn: Boolean;
begin
  Result := FRoleArn.HasValue;
end;

function TJobDescriptor.GetStatus: TJobStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TJobDescriptor.SetStatus(const Value: TJobStatus);
begin
  FStatus := Value;
end;

function TJobDescriptor.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TJobDescriptor.GetStatusUpdateReason: string;
begin
  Result := FStatusUpdateReason.ValueOrDefault;
end;

procedure TJobDescriptor.SetStatusUpdateReason(const Value: string);
begin
  FStatusUpdateReason := Value;
end;

function TJobDescriptor.IsSetStatusUpdateReason: Boolean;
begin
  Result := FStatusUpdateReason.HasValue;
end;

function TJobDescriptor.GetSuspendedCause: string;
begin
  Result := FSuspendedCause.ValueOrDefault;
end;

procedure TJobDescriptor.SetSuspendedCause(const Value: string);
begin
  FSuspendedCause := Value;
end;

function TJobDescriptor.IsSetSuspendedCause: Boolean;
begin
  Result := FSuspendedCause.HasValue;
end;

function TJobDescriptor.GetSuspendedDate: TDateTime;
begin
  Result := FSuspendedDate.ValueOrDefault;
end;

procedure TJobDescriptor.SetSuspendedDate(const Value: TDateTime);
begin
  FSuspendedDate := Value;
end;

function TJobDescriptor.IsSetSuspendedDate: Boolean;
begin
  Result := FSuspendedDate.HasValue;
end;

function TJobDescriptor.GetTerminationDate: TDateTime;
begin
  Result := FTerminationDate.ValueOrDefault;
end;

procedure TJobDescriptor.SetTerminationDate(const Value: TDateTime);
begin
  FTerminationDate := Value;
end;

function TJobDescriptor.IsSetTerminationDate: Boolean;
begin
  Result := FTerminationDate.HasValue;
end;

end.
