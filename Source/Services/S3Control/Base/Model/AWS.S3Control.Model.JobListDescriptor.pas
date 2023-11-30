unit AWS.S3Control.Model.JobListDescriptor;

interface

uses
  AWS.Nullable, 
  AWS.S3Control.Enums, 
  AWS.S3Control.Model.JobProgressSummary;

type
  TJobListDescriptor = class;
  
  IJobListDescriptor = interface
    function GetCreationTime: TDateTime;
    procedure SetCreationTime(const Value: TDateTime);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetOperation: TOperationName;
    procedure SetOperation(const Value: TOperationName);
    function GetPriority: Integer;
    procedure SetPriority(const Value: Integer);
    function GetProgressSummary: TJobProgressSummary;
    procedure SetProgressSummary(const Value: TJobProgressSummary);
    function GetKeepProgressSummary: Boolean;
    procedure SetKeepProgressSummary(const Value: Boolean);
    function GetStatus: TJobStatus;
    procedure SetStatus(const Value: TJobStatus);
    function GetTerminationDate: TDateTime;
    procedure SetTerminationDate(const Value: TDateTime);
    function Obj: TJobListDescriptor;
    function IsSetCreationTime: Boolean;
    function IsSetDescription: Boolean;
    function IsSetJobId: Boolean;
    function IsSetOperation: Boolean;
    function IsSetPriority: Boolean;
    function IsSetProgressSummary: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTerminationDate: Boolean;
    property CreationTime: TDateTime read GetCreationTime write SetCreationTime;
    property Description: string read GetDescription write SetDescription;
    property JobId: string read GetJobId write SetJobId;
    property Operation: TOperationName read GetOperation write SetOperation;
    property Priority: Integer read GetPriority write SetPriority;
    property ProgressSummary: TJobProgressSummary read GetProgressSummary write SetProgressSummary;
    property KeepProgressSummary: Boolean read GetKeepProgressSummary write SetKeepProgressSummary;
    property Status: TJobStatus read GetStatus write SetStatus;
    property TerminationDate: TDateTime read GetTerminationDate write SetTerminationDate;
  end;
  
  TJobListDescriptor = class
  strict private
    FCreationTime: Nullable<TDateTime>;
    FDescription: Nullable<string>;
    FJobId: Nullable<string>;
    FOperation: Nullable<TOperationName>;
    FPriority: Nullable<Integer>;
    FProgressSummary: TJobProgressSummary;
    FKeepProgressSummary: Boolean;
    FStatus: Nullable<TJobStatus>;
    FTerminationDate: Nullable<TDateTime>;
    function GetCreationTime: TDateTime;
    procedure SetCreationTime(const Value: TDateTime);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetOperation: TOperationName;
    procedure SetOperation(const Value: TOperationName);
    function GetPriority: Integer;
    procedure SetPriority(const Value: Integer);
    function GetProgressSummary: TJobProgressSummary;
    procedure SetProgressSummary(const Value: TJobProgressSummary);
    function GetKeepProgressSummary: Boolean;
    procedure SetKeepProgressSummary(const Value: Boolean);
    function GetStatus: TJobStatus;
    procedure SetStatus(const Value: TJobStatus);
    function GetTerminationDate: TDateTime;
    procedure SetTerminationDate(const Value: TDateTime);
  strict protected
    function Obj: TJobListDescriptor;
  public
    destructor Destroy; override;
    function IsSetCreationTime: Boolean;
    function IsSetDescription: Boolean;
    function IsSetJobId: Boolean;
    function IsSetOperation: Boolean;
    function IsSetPriority: Boolean;
    function IsSetProgressSummary: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTerminationDate: Boolean;
    property CreationTime: TDateTime read GetCreationTime write SetCreationTime;
    property Description: string read GetDescription write SetDescription;
    property JobId: string read GetJobId write SetJobId;
    property Operation: TOperationName read GetOperation write SetOperation;
    property Priority: Integer read GetPriority write SetPriority;
    property ProgressSummary: TJobProgressSummary read GetProgressSummary write SetProgressSummary;
    property KeepProgressSummary: Boolean read GetKeepProgressSummary write SetKeepProgressSummary;
    property Status: TJobStatus read GetStatus write SetStatus;
    property TerminationDate: TDateTime read GetTerminationDate write SetTerminationDate;
  end;
  
implementation

{ TJobListDescriptor }

destructor TJobListDescriptor.Destroy;
begin
  ProgressSummary := nil;
  inherited;
end;

function TJobListDescriptor.Obj: TJobListDescriptor;
begin
  Result := Self;
end;

function TJobListDescriptor.GetCreationTime: TDateTime;
begin
  Result := FCreationTime.ValueOrDefault;
end;

procedure TJobListDescriptor.SetCreationTime(const Value: TDateTime);
begin
  FCreationTime := Value;
end;

function TJobListDescriptor.IsSetCreationTime: Boolean;
begin
  Result := FCreationTime.HasValue;
end;

function TJobListDescriptor.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TJobListDescriptor.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TJobListDescriptor.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TJobListDescriptor.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TJobListDescriptor.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TJobListDescriptor.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TJobListDescriptor.GetOperation: TOperationName;
begin
  Result := FOperation.ValueOrDefault;
end;

procedure TJobListDescriptor.SetOperation(const Value: TOperationName);
begin
  FOperation := Value;
end;

function TJobListDescriptor.IsSetOperation: Boolean;
begin
  Result := FOperation.HasValue;
end;

function TJobListDescriptor.GetPriority: Integer;
begin
  Result := FPriority.ValueOrDefault;
end;

procedure TJobListDescriptor.SetPriority(const Value: Integer);
begin
  FPriority := Value;
end;

function TJobListDescriptor.IsSetPriority: Boolean;
begin
  Result := FPriority.HasValue;
end;

function TJobListDescriptor.GetProgressSummary: TJobProgressSummary;
begin
  Result := FProgressSummary;
end;

procedure TJobListDescriptor.SetProgressSummary(const Value: TJobProgressSummary);
begin
  if FProgressSummary <> Value then
  begin
    if not KeepProgressSummary then
      FProgressSummary.Free;
    FProgressSummary := Value;
  end;
end;

function TJobListDescriptor.GetKeepProgressSummary: Boolean;
begin
  Result := FKeepProgressSummary;
end;

procedure TJobListDescriptor.SetKeepProgressSummary(const Value: Boolean);
begin
  FKeepProgressSummary := Value;
end;

function TJobListDescriptor.IsSetProgressSummary: Boolean;
begin
  Result := FProgressSummary <> nil;
end;

function TJobListDescriptor.GetStatus: TJobStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TJobListDescriptor.SetStatus(const Value: TJobStatus);
begin
  FStatus := Value;
end;

function TJobListDescriptor.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TJobListDescriptor.GetTerminationDate: TDateTime;
begin
  Result := FTerminationDate.ValueOrDefault;
end;

procedure TJobListDescriptor.SetTerminationDate(const Value: TDateTime);
begin
  FTerminationDate := Value;
end;

function TJobListDescriptor.IsSetTerminationDate: Boolean;
begin
  Result := FTerminationDate.HasValue;
end;

end.
