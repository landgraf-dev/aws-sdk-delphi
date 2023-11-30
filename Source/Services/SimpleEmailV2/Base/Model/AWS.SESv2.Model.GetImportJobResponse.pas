unit AWS.SESv2.Model.GetImportJobResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SESv2.Model.FailureInfo, 
  AWS.SESv2.Model.ImportDataSource, 
  AWS.SESv2.Model.ImportDestination, 
  AWS.SESv2.Enums;

type
  TGetImportJobResponse = class;
  
  IGetImportJobResponse = interface(IAmazonWebServiceResponse)
    function GetCompletedTimestamp: TDateTime;
    procedure SetCompletedTimestamp(const Value: TDateTime);
    function GetCreatedTimestamp: TDateTime;
    procedure SetCreatedTimestamp(const Value: TDateTime);
    function GetFailedRecordsCount: Integer;
    procedure SetFailedRecordsCount(const Value: Integer);
    function GetFailureInfo: TFailureInfo;
    procedure SetFailureInfo(const Value: TFailureInfo);
    function GetKeepFailureInfo: Boolean;
    procedure SetKeepFailureInfo(const Value: Boolean);
    function GetImportDataSource: TImportDataSource;
    procedure SetImportDataSource(const Value: TImportDataSource);
    function GetKeepImportDataSource: Boolean;
    procedure SetKeepImportDataSource(const Value: Boolean);
    function GetImportDestination: TImportDestination;
    procedure SetImportDestination(const Value: TImportDestination);
    function GetKeepImportDestination: Boolean;
    procedure SetKeepImportDestination(const Value: Boolean);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetJobStatus: TJobStatus;
    procedure SetJobStatus(const Value: TJobStatus);
    function GetProcessedRecordsCount: Integer;
    procedure SetProcessedRecordsCount(const Value: Integer);
    function Obj: TGetImportJobResponse;
    function IsSetCompletedTimestamp: Boolean;
    function IsSetCreatedTimestamp: Boolean;
    function IsSetFailedRecordsCount: Boolean;
    function IsSetFailureInfo: Boolean;
    function IsSetImportDataSource: Boolean;
    function IsSetImportDestination: Boolean;
    function IsSetJobId: Boolean;
    function IsSetJobStatus: Boolean;
    function IsSetProcessedRecordsCount: Boolean;
    property CompletedTimestamp: TDateTime read GetCompletedTimestamp write SetCompletedTimestamp;
    property CreatedTimestamp: TDateTime read GetCreatedTimestamp write SetCreatedTimestamp;
    property FailedRecordsCount: Integer read GetFailedRecordsCount write SetFailedRecordsCount;
    property FailureInfo: TFailureInfo read GetFailureInfo write SetFailureInfo;
    property KeepFailureInfo: Boolean read GetKeepFailureInfo write SetKeepFailureInfo;
    property ImportDataSource: TImportDataSource read GetImportDataSource write SetImportDataSource;
    property KeepImportDataSource: Boolean read GetKeepImportDataSource write SetKeepImportDataSource;
    property ImportDestination: TImportDestination read GetImportDestination write SetImportDestination;
    property KeepImportDestination: Boolean read GetKeepImportDestination write SetKeepImportDestination;
    property JobId: string read GetJobId write SetJobId;
    property JobStatus: TJobStatus read GetJobStatus write SetJobStatus;
    property ProcessedRecordsCount: Integer read GetProcessedRecordsCount write SetProcessedRecordsCount;
  end;
  
  TGetImportJobResponse = class(TAmazonWebServiceResponse, IGetImportJobResponse)
  strict private
    FCompletedTimestamp: Nullable<TDateTime>;
    FCreatedTimestamp: Nullable<TDateTime>;
    FFailedRecordsCount: Nullable<Integer>;
    FFailureInfo: TFailureInfo;
    FKeepFailureInfo: Boolean;
    FImportDataSource: TImportDataSource;
    FKeepImportDataSource: Boolean;
    FImportDestination: TImportDestination;
    FKeepImportDestination: Boolean;
    FJobId: Nullable<string>;
    FJobStatus: Nullable<TJobStatus>;
    FProcessedRecordsCount: Nullable<Integer>;
    function GetCompletedTimestamp: TDateTime;
    procedure SetCompletedTimestamp(const Value: TDateTime);
    function GetCreatedTimestamp: TDateTime;
    procedure SetCreatedTimestamp(const Value: TDateTime);
    function GetFailedRecordsCount: Integer;
    procedure SetFailedRecordsCount(const Value: Integer);
    function GetFailureInfo: TFailureInfo;
    procedure SetFailureInfo(const Value: TFailureInfo);
    function GetKeepFailureInfo: Boolean;
    procedure SetKeepFailureInfo(const Value: Boolean);
    function GetImportDataSource: TImportDataSource;
    procedure SetImportDataSource(const Value: TImportDataSource);
    function GetKeepImportDataSource: Boolean;
    procedure SetKeepImportDataSource(const Value: Boolean);
    function GetImportDestination: TImportDestination;
    procedure SetImportDestination(const Value: TImportDestination);
    function GetKeepImportDestination: Boolean;
    procedure SetKeepImportDestination(const Value: Boolean);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetJobStatus: TJobStatus;
    procedure SetJobStatus(const Value: TJobStatus);
    function GetProcessedRecordsCount: Integer;
    procedure SetProcessedRecordsCount(const Value: Integer);
  strict protected
    function Obj: TGetImportJobResponse;
  public
    destructor Destroy; override;
    function IsSetCompletedTimestamp: Boolean;
    function IsSetCreatedTimestamp: Boolean;
    function IsSetFailedRecordsCount: Boolean;
    function IsSetFailureInfo: Boolean;
    function IsSetImportDataSource: Boolean;
    function IsSetImportDestination: Boolean;
    function IsSetJobId: Boolean;
    function IsSetJobStatus: Boolean;
    function IsSetProcessedRecordsCount: Boolean;
    property CompletedTimestamp: TDateTime read GetCompletedTimestamp write SetCompletedTimestamp;
    property CreatedTimestamp: TDateTime read GetCreatedTimestamp write SetCreatedTimestamp;
    property FailedRecordsCount: Integer read GetFailedRecordsCount write SetFailedRecordsCount;
    property FailureInfo: TFailureInfo read GetFailureInfo write SetFailureInfo;
    property KeepFailureInfo: Boolean read GetKeepFailureInfo write SetKeepFailureInfo;
    property ImportDataSource: TImportDataSource read GetImportDataSource write SetImportDataSource;
    property KeepImportDataSource: Boolean read GetKeepImportDataSource write SetKeepImportDataSource;
    property ImportDestination: TImportDestination read GetImportDestination write SetImportDestination;
    property KeepImportDestination: Boolean read GetKeepImportDestination write SetKeepImportDestination;
    property JobId: string read GetJobId write SetJobId;
    property JobStatus: TJobStatus read GetJobStatus write SetJobStatus;
    property ProcessedRecordsCount: Integer read GetProcessedRecordsCount write SetProcessedRecordsCount;
  end;
  
implementation

{ TGetImportJobResponse }

destructor TGetImportJobResponse.Destroy;
begin
  ImportDestination := nil;
  ImportDataSource := nil;
  FailureInfo := nil;
  inherited;
end;

function TGetImportJobResponse.Obj: TGetImportJobResponse;
begin
  Result := Self;
end;

function TGetImportJobResponse.GetCompletedTimestamp: TDateTime;
begin
  Result := FCompletedTimestamp.ValueOrDefault;
end;

procedure TGetImportJobResponse.SetCompletedTimestamp(const Value: TDateTime);
begin
  FCompletedTimestamp := Value;
end;

function TGetImportJobResponse.IsSetCompletedTimestamp: Boolean;
begin
  Result := FCompletedTimestamp.HasValue;
end;

function TGetImportJobResponse.GetCreatedTimestamp: TDateTime;
begin
  Result := FCreatedTimestamp.ValueOrDefault;
end;

procedure TGetImportJobResponse.SetCreatedTimestamp(const Value: TDateTime);
begin
  FCreatedTimestamp := Value;
end;

function TGetImportJobResponse.IsSetCreatedTimestamp: Boolean;
begin
  Result := FCreatedTimestamp.HasValue;
end;

function TGetImportJobResponse.GetFailedRecordsCount: Integer;
begin
  Result := FFailedRecordsCount.ValueOrDefault;
end;

procedure TGetImportJobResponse.SetFailedRecordsCount(const Value: Integer);
begin
  FFailedRecordsCount := Value;
end;

function TGetImportJobResponse.IsSetFailedRecordsCount: Boolean;
begin
  Result := FFailedRecordsCount.HasValue;
end;

function TGetImportJobResponse.GetFailureInfo: TFailureInfo;
begin
  Result := FFailureInfo;
end;

procedure TGetImportJobResponse.SetFailureInfo(const Value: TFailureInfo);
begin
  if FFailureInfo <> Value then
  begin
    if not KeepFailureInfo then
      FFailureInfo.Free;
    FFailureInfo := Value;
  end;
end;

function TGetImportJobResponse.GetKeepFailureInfo: Boolean;
begin
  Result := FKeepFailureInfo;
end;

procedure TGetImportJobResponse.SetKeepFailureInfo(const Value: Boolean);
begin
  FKeepFailureInfo := Value;
end;

function TGetImportJobResponse.IsSetFailureInfo: Boolean;
begin
  Result := FFailureInfo <> nil;
end;

function TGetImportJobResponse.GetImportDataSource: TImportDataSource;
begin
  Result := FImportDataSource;
end;

procedure TGetImportJobResponse.SetImportDataSource(const Value: TImportDataSource);
begin
  if FImportDataSource <> Value then
  begin
    if not KeepImportDataSource then
      FImportDataSource.Free;
    FImportDataSource := Value;
  end;
end;

function TGetImportJobResponse.GetKeepImportDataSource: Boolean;
begin
  Result := FKeepImportDataSource;
end;

procedure TGetImportJobResponse.SetKeepImportDataSource(const Value: Boolean);
begin
  FKeepImportDataSource := Value;
end;

function TGetImportJobResponse.IsSetImportDataSource: Boolean;
begin
  Result := FImportDataSource <> nil;
end;

function TGetImportJobResponse.GetImportDestination: TImportDestination;
begin
  Result := FImportDestination;
end;

procedure TGetImportJobResponse.SetImportDestination(const Value: TImportDestination);
begin
  if FImportDestination <> Value then
  begin
    if not KeepImportDestination then
      FImportDestination.Free;
    FImportDestination := Value;
  end;
end;

function TGetImportJobResponse.GetKeepImportDestination: Boolean;
begin
  Result := FKeepImportDestination;
end;

procedure TGetImportJobResponse.SetKeepImportDestination(const Value: Boolean);
begin
  FKeepImportDestination := Value;
end;

function TGetImportJobResponse.IsSetImportDestination: Boolean;
begin
  Result := FImportDestination <> nil;
end;

function TGetImportJobResponse.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TGetImportJobResponse.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TGetImportJobResponse.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TGetImportJobResponse.GetJobStatus: TJobStatus;
begin
  Result := FJobStatus.ValueOrDefault;
end;

procedure TGetImportJobResponse.SetJobStatus(const Value: TJobStatus);
begin
  FJobStatus := Value;
end;

function TGetImportJobResponse.IsSetJobStatus: Boolean;
begin
  Result := FJobStatus.HasValue;
end;

function TGetImportJobResponse.GetProcessedRecordsCount: Integer;
begin
  Result := FProcessedRecordsCount.ValueOrDefault;
end;

procedure TGetImportJobResponse.SetProcessedRecordsCount(const Value: Integer);
begin
  FProcessedRecordsCount := Value;
end;

function TGetImportJobResponse.IsSetProcessedRecordsCount: Boolean;
begin
  Result := FProcessedRecordsCount.HasValue;
end;

end.
