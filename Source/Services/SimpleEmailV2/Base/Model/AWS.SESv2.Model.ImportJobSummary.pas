unit AWS.SESv2.Model.ImportJobSummary;

interface

uses
  AWS.Nullable, 
  AWS.SESv2.Model.ImportDestination, 
  AWS.SESv2.Enums;

type
  TImportJobSummary = class;
  
  IImportJobSummary = interface
    function GetCreatedTimestamp: TDateTime;
    procedure SetCreatedTimestamp(const Value: TDateTime);
    function GetImportDestination: TImportDestination;
    procedure SetImportDestination(const Value: TImportDestination);
    function GetKeepImportDestination: Boolean;
    procedure SetKeepImportDestination(const Value: Boolean);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetJobStatus: TJobStatus;
    procedure SetJobStatus(const Value: TJobStatus);
    function Obj: TImportJobSummary;
    function IsSetCreatedTimestamp: Boolean;
    function IsSetImportDestination: Boolean;
    function IsSetJobId: Boolean;
    function IsSetJobStatus: Boolean;
    property CreatedTimestamp: TDateTime read GetCreatedTimestamp write SetCreatedTimestamp;
    property ImportDestination: TImportDestination read GetImportDestination write SetImportDestination;
    property KeepImportDestination: Boolean read GetKeepImportDestination write SetKeepImportDestination;
    property JobId: string read GetJobId write SetJobId;
    property JobStatus: TJobStatus read GetJobStatus write SetJobStatus;
  end;
  
  TImportJobSummary = class
  strict private
    FCreatedTimestamp: Nullable<TDateTime>;
    FImportDestination: TImportDestination;
    FKeepImportDestination: Boolean;
    FJobId: Nullable<string>;
    FJobStatus: Nullable<TJobStatus>;
    function GetCreatedTimestamp: TDateTime;
    procedure SetCreatedTimestamp(const Value: TDateTime);
    function GetImportDestination: TImportDestination;
    procedure SetImportDestination(const Value: TImportDestination);
    function GetKeepImportDestination: Boolean;
    procedure SetKeepImportDestination(const Value: Boolean);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetJobStatus: TJobStatus;
    procedure SetJobStatus(const Value: TJobStatus);
  strict protected
    function Obj: TImportJobSummary;
  public
    destructor Destroy; override;
    function IsSetCreatedTimestamp: Boolean;
    function IsSetImportDestination: Boolean;
    function IsSetJobId: Boolean;
    function IsSetJobStatus: Boolean;
    property CreatedTimestamp: TDateTime read GetCreatedTimestamp write SetCreatedTimestamp;
    property ImportDestination: TImportDestination read GetImportDestination write SetImportDestination;
    property KeepImportDestination: Boolean read GetKeepImportDestination write SetKeepImportDestination;
    property JobId: string read GetJobId write SetJobId;
    property JobStatus: TJobStatus read GetJobStatus write SetJobStatus;
  end;
  
implementation

{ TImportJobSummary }

destructor TImportJobSummary.Destroy;
begin
  ImportDestination := nil;
  inherited;
end;

function TImportJobSummary.Obj: TImportJobSummary;
begin
  Result := Self;
end;

function TImportJobSummary.GetCreatedTimestamp: TDateTime;
begin
  Result := FCreatedTimestamp.ValueOrDefault;
end;

procedure TImportJobSummary.SetCreatedTimestamp(const Value: TDateTime);
begin
  FCreatedTimestamp := Value;
end;

function TImportJobSummary.IsSetCreatedTimestamp: Boolean;
begin
  Result := FCreatedTimestamp.HasValue;
end;

function TImportJobSummary.GetImportDestination: TImportDestination;
begin
  Result := FImportDestination;
end;

procedure TImportJobSummary.SetImportDestination(const Value: TImportDestination);
begin
  if FImportDestination <> Value then
  begin
    if not KeepImportDestination then
      FImportDestination.Free;
    FImportDestination := Value;
  end;
end;

function TImportJobSummary.GetKeepImportDestination: Boolean;
begin
  Result := FKeepImportDestination;
end;

procedure TImportJobSummary.SetKeepImportDestination(const Value: Boolean);
begin
  FKeepImportDestination := Value;
end;

function TImportJobSummary.IsSetImportDestination: Boolean;
begin
  Result := FImportDestination <> nil;
end;

function TImportJobSummary.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TImportJobSummary.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TImportJobSummary.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TImportJobSummary.GetJobStatus: TJobStatus;
begin
  Result := FJobStatus.ValueOrDefault;
end;

procedure TImportJobSummary.SetJobStatus(const Value: TJobStatus);
begin
  FJobStatus := Value;
end;

function TImportJobSummary.IsSetJobStatus: Boolean;
begin
  Result := FJobStatus.HasValue;
end;

end.
