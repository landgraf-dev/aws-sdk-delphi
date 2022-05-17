unit AWS.Transcribe.Model.JobExecutionSettings;

interface

uses
  Bcl.Types.Nullable;

type
  TJobExecutionSettings = class;
  
  IJobExecutionSettings = interface
    function GetAllowDeferredExecution: Boolean;
    procedure SetAllowDeferredExecution(const Value: Boolean);
    function GetDataAccessRoleArn: string;
    procedure SetDataAccessRoleArn(const Value: string);
    function Obj: TJobExecutionSettings;
    function IsSetAllowDeferredExecution: Boolean;
    function IsSetDataAccessRoleArn: Boolean;
    property AllowDeferredExecution: Boolean read GetAllowDeferredExecution write SetAllowDeferredExecution;
    property DataAccessRoleArn: string read GetDataAccessRoleArn write SetDataAccessRoleArn;
  end;
  
  TJobExecutionSettings = class
  strict private
    FAllowDeferredExecution: Nullable<Boolean>;
    FDataAccessRoleArn: Nullable<string>;
    function GetAllowDeferredExecution: Boolean;
    procedure SetAllowDeferredExecution(const Value: Boolean);
    function GetDataAccessRoleArn: string;
    procedure SetDataAccessRoleArn(const Value: string);
  strict protected
    function Obj: TJobExecutionSettings;
  public
    function IsSetAllowDeferredExecution: Boolean;
    function IsSetDataAccessRoleArn: Boolean;
    property AllowDeferredExecution: Boolean read GetAllowDeferredExecution write SetAllowDeferredExecution;
    property DataAccessRoleArn: string read GetDataAccessRoleArn write SetDataAccessRoleArn;
  end;
  
implementation

{ TJobExecutionSettings }

function TJobExecutionSettings.Obj: TJobExecutionSettings;
begin
  Result := Self;
end;

function TJobExecutionSettings.GetAllowDeferredExecution: Boolean;
begin
  Result := FAllowDeferredExecution.ValueOrDefault;
end;

procedure TJobExecutionSettings.SetAllowDeferredExecution(const Value: Boolean);
begin
  FAllowDeferredExecution := Value;
end;

function TJobExecutionSettings.IsSetAllowDeferredExecution: Boolean;
begin
  Result := FAllowDeferredExecution.HasValue;
end;

function TJobExecutionSettings.GetDataAccessRoleArn: string;
begin
  Result := FDataAccessRoleArn.ValueOrDefault;
end;

procedure TJobExecutionSettings.SetDataAccessRoleArn(const Value: string);
begin
  FDataAccessRoleArn := Value;
end;

function TJobExecutionSettings.IsSetDataAccessRoleArn: Boolean;
begin
  Result := FDataAccessRoleArn.HasValue;
end;

end.
