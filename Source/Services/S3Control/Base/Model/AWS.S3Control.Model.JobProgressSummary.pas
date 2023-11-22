unit AWS.S3Control.Model.JobProgressSummary;

interface

uses
  Bcl.Types.Nullable;

type
  TJobProgressSummary = class;
  
  IJobProgressSummary = interface
    function GetNumberOfTasksFailed: Int64;
    procedure SetNumberOfTasksFailed(const Value: Int64);
    function GetNumberOfTasksSucceeded: Int64;
    procedure SetNumberOfTasksSucceeded(const Value: Int64);
    function GetTotalNumberOfTasks: Int64;
    procedure SetTotalNumberOfTasks(const Value: Int64);
    function Obj: TJobProgressSummary;
    function IsSetNumberOfTasksFailed: Boolean;
    function IsSetNumberOfTasksSucceeded: Boolean;
    function IsSetTotalNumberOfTasks: Boolean;
    property NumberOfTasksFailed: Int64 read GetNumberOfTasksFailed write SetNumberOfTasksFailed;
    property NumberOfTasksSucceeded: Int64 read GetNumberOfTasksSucceeded write SetNumberOfTasksSucceeded;
    property TotalNumberOfTasks: Int64 read GetTotalNumberOfTasks write SetTotalNumberOfTasks;
  end;
  
  TJobProgressSummary = class
  strict private
    FNumberOfTasksFailed: Nullable<Int64>;
    FNumberOfTasksSucceeded: Nullable<Int64>;
    FTotalNumberOfTasks: Nullable<Int64>;
    function GetNumberOfTasksFailed: Int64;
    procedure SetNumberOfTasksFailed(const Value: Int64);
    function GetNumberOfTasksSucceeded: Int64;
    procedure SetNumberOfTasksSucceeded(const Value: Int64);
    function GetTotalNumberOfTasks: Int64;
    procedure SetTotalNumberOfTasks(const Value: Int64);
  strict protected
    function Obj: TJobProgressSummary;
  public
    function IsSetNumberOfTasksFailed: Boolean;
    function IsSetNumberOfTasksSucceeded: Boolean;
    function IsSetTotalNumberOfTasks: Boolean;
    property NumberOfTasksFailed: Int64 read GetNumberOfTasksFailed write SetNumberOfTasksFailed;
    property NumberOfTasksSucceeded: Int64 read GetNumberOfTasksSucceeded write SetNumberOfTasksSucceeded;
    property TotalNumberOfTasks: Int64 read GetTotalNumberOfTasks write SetTotalNumberOfTasks;
  end;
  
implementation

{ TJobProgressSummary }

function TJobProgressSummary.Obj: TJobProgressSummary;
begin
  Result := Self;
end;

function TJobProgressSummary.GetNumberOfTasksFailed: Int64;
begin
  Result := FNumberOfTasksFailed.ValueOrDefault;
end;

procedure TJobProgressSummary.SetNumberOfTasksFailed(const Value: Int64);
begin
  FNumberOfTasksFailed := Value;
end;

function TJobProgressSummary.IsSetNumberOfTasksFailed: Boolean;
begin
  Result := FNumberOfTasksFailed.HasValue;
end;

function TJobProgressSummary.GetNumberOfTasksSucceeded: Int64;
begin
  Result := FNumberOfTasksSucceeded.ValueOrDefault;
end;

procedure TJobProgressSummary.SetNumberOfTasksSucceeded(const Value: Int64);
begin
  FNumberOfTasksSucceeded := Value;
end;

function TJobProgressSummary.IsSetNumberOfTasksSucceeded: Boolean;
begin
  Result := FNumberOfTasksSucceeded.HasValue;
end;

function TJobProgressSummary.GetTotalNumberOfTasks: Int64;
begin
  Result := FTotalNumberOfTasks.ValueOrDefault;
end;

procedure TJobProgressSummary.SetTotalNumberOfTasks(const Value: Int64);
begin
  FTotalNumberOfTasks := Value;
end;

function TJobProgressSummary.IsSetTotalNumberOfTasks: Boolean;
begin
  Result := FTotalNumberOfTasks.HasValue;
end;

end.
