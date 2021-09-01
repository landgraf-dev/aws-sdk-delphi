unit AWS.Translate.Model.TextTranslationJobProperties;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Translate.Model.InputDataConfig, 
  AWS.Translate.Model.JobDetails, 
  AWS.Translate.Enums, 
  AWS.Translate.Model.OutputDataConfig;

type
  TTextTranslationJobProperties = class;
  
  ITextTranslationJobProperties = interface
    function GetDataAccessRoleArn: string;
    procedure SetDataAccessRoleArn(const Value: string);
    function GetEndTime: TDateTime;
    procedure SetEndTime(const Value: TDateTime);
    function GetInputDataConfig: TInputDataConfig;
    procedure SetInputDataConfig(const Value: TInputDataConfig);
    function GetKeepInputDataConfig: Boolean;
    procedure SetKeepInputDataConfig(const Value: Boolean);
    function GetJobDetails: TJobDetails;
    procedure SetJobDetails(const Value: TJobDetails);
    function GetKeepJobDetails: Boolean;
    procedure SetKeepJobDetails(const Value: Boolean);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetJobName: string;
    procedure SetJobName(const Value: string);
    function GetJobStatus: TJobStatus;
    procedure SetJobStatus(const Value: TJobStatus);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetOutputDataConfig: TOutputDataConfig;
    procedure SetOutputDataConfig(const Value: TOutputDataConfig);
    function GetKeepOutputDataConfig: Boolean;
    procedure SetKeepOutputDataConfig(const Value: Boolean);
    function GetParallelDataNames: TList<string>;
    procedure SetParallelDataNames(const Value: TList<string>);
    function GetKeepParallelDataNames: Boolean;
    procedure SetKeepParallelDataNames(const Value: Boolean);
    function GetSourceLanguageCode: string;
    procedure SetSourceLanguageCode(const Value: string);
    function GetSubmittedTime: TDateTime;
    procedure SetSubmittedTime(const Value: TDateTime);
    function GetTargetLanguageCodes: TList<string>;
    procedure SetTargetLanguageCodes(const Value: TList<string>);
    function GetKeepTargetLanguageCodes: Boolean;
    procedure SetKeepTargetLanguageCodes(const Value: Boolean);
    function GetTerminologyNames: TList<string>;
    procedure SetTerminologyNames(const Value: TList<string>);
    function GetKeepTerminologyNames: Boolean;
    procedure SetKeepTerminologyNames(const Value: Boolean);
    function Obj: TTextTranslationJobProperties;
    function IsSetDataAccessRoleArn: Boolean;
    function IsSetEndTime: Boolean;
    function IsSetInputDataConfig: Boolean;
    function IsSetJobDetails: Boolean;
    function IsSetJobId: Boolean;
    function IsSetJobName: Boolean;
    function IsSetJobStatus: Boolean;
    function IsSetMessage: Boolean;
    function IsSetOutputDataConfig: Boolean;
    function IsSetParallelDataNames: Boolean;
    function IsSetSourceLanguageCode: Boolean;
    function IsSetSubmittedTime: Boolean;
    function IsSetTargetLanguageCodes: Boolean;
    function IsSetTerminologyNames: Boolean;
    property DataAccessRoleArn: string read GetDataAccessRoleArn write SetDataAccessRoleArn;
    property EndTime: TDateTime read GetEndTime write SetEndTime;
    property InputDataConfig: TInputDataConfig read GetInputDataConfig write SetInputDataConfig;
    property KeepInputDataConfig: Boolean read GetKeepInputDataConfig write SetKeepInputDataConfig;
    property JobDetails: TJobDetails read GetJobDetails write SetJobDetails;
    property KeepJobDetails: Boolean read GetKeepJobDetails write SetKeepJobDetails;
    property JobId: string read GetJobId write SetJobId;
    property JobName: string read GetJobName write SetJobName;
    property JobStatus: TJobStatus read GetJobStatus write SetJobStatus;
    property Message: string read GetMessage write SetMessage;
    property OutputDataConfig: TOutputDataConfig read GetOutputDataConfig write SetOutputDataConfig;
    property KeepOutputDataConfig: Boolean read GetKeepOutputDataConfig write SetKeepOutputDataConfig;
    property ParallelDataNames: TList<string> read GetParallelDataNames write SetParallelDataNames;
    property KeepParallelDataNames: Boolean read GetKeepParallelDataNames write SetKeepParallelDataNames;
    property SourceLanguageCode: string read GetSourceLanguageCode write SetSourceLanguageCode;
    property SubmittedTime: TDateTime read GetSubmittedTime write SetSubmittedTime;
    property TargetLanguageCodes: TList<string> read GetTargetLanguageCodes write SetTargetLanguageCodes;
    property KeepTargetLanguageCodes: Boolean read GetKeepTargetLanguageCodes write SetKeepTargetLanguageCodes;
    property TerminologyNames: TList<string> read GetTerminologyNames write SetTerminologyNames;
    property KeepTerminologyNames: Boolean read GetKeepTerminologyNames write SetKeepTerminologyNames;
  end;
  
  TTextTranslationJobProperties = class
  strict private
    FDataAccessRoleArn: Nullable<string>;
    FEndTime: Nullable<TDateTime>;
    FInputDataConfig: TInputDataConfig;
    FKeepInputDataConfig: Boolean;
    FJobDetails: TJobDetails;
    FKeepJobDetails: Boolean;
    FJobId: Nullable<string>;
    FJobName: Nullable<string>;
    FJobStatus: Nullable<TJobStatus>;
    FMessage: Nullable<string>;
    FOutputDataConfig: TOutputDataConfig;
    FKeepOutputDataConfig: Boolean;
    FParallelDataNames: TList<string>;
    FKeepParallelDataNames: Boolean;
    FSourceLanguageCode: Nullable<string>;
    FSubmittedTime: Nullable<TDateTime>;
    FTargetLanguageCodes: TList<string>;
    FKeepTargetLanguageCodes: Boolean;
    FTerminologyNames: TList<string>;
    FKeepTerminologyNames: Boolean;
    function GetDataAccessRoleArn: string;
    procedure SetDataAccessRoleArn(const Value: string);
    function GetEndTime: TDateTime;
    procedure SetEndTime(const Value: TDateTime);
    function GetInputDataConfig: TInputDataConfig;
    procedure SetInputDataConfig(const Value: TInputDataConfig);
    function GetKeepInputDataConfig: Boolean;
    procedure SetKeepInputDataConfig(const Value: Boolean);
    function GetJobDetails: TJobDetails;
    procedure SetJobDetails(const Value: TJobDetails);
    function GetKeepJobDetails: Boolean;
    procedure SetKeepJobDetails(const Value: Boolean);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetJobName: string;
    procedure SetJobName(const Value: string);
    function GetJobStatus: TJobStatus;
    procedure SetJobStatus(const Value: TJobStatus);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetOutputDataConfig: TOutputDataConfig;
    procedure SetOutputDataConfig(const Value: TOutputDataConfig);
    function GetKeepOutputDataConfig: Boolean;
    procedure SetKeepOutputDataConfig(const Value: Boolean);
    function GetParallelDataNames: TList<string>;
    procedure SetParallelDataNames(const Value: TList<string>);
    function GetKeepParallelDataNames: Boolean;
    procedure SetKeepParallelDataNames(const Value: Boolean);
    function GetSourceLanguageCode: string;
    procedure SetSourceLanguageCode(const Value: string);
    function GetSubmittedTime: TDateTime;
    procedure SetSubmittedTime(const Value: TDateTime);
    function GetTargetLanguageCodes: TList<string>;
    procedure SetTargetLanguageCodes(const Value: TList<string>);
    function GetKeepTargetLanguageCodes: Boolean;
    procedure SetKeepTargetLanguageCodes(const Value: Boolean);
    function GetTerminologyNames: TList<string>;
    procedure SetTerminologyNames(const Value: TList<string>);
    function GetKeepTerminologyNames: Boolean;
    procedure SetKeepTerminologyNames(const Value: Boolean);
  strict protected
    function Obj: TTextTranslationJobProperties;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDataAccessRoleArn: Boolean;
    function IsSetEndTime: Boolean;
    function IsSetInputDataConfig: Boolean;
    function IsSetJobDetails: Boolean;
    function IsSetJobId: Boolean;
    function IsSetJobName: Boolean;
    function IsSetJobStatus: Boolean;
    function IsSetMessage: Boolean;
    function IsSetOutputDataConfig: Boolean;
    function IsSetParallelDataNames: Boolean;
    function IsSetSourceLanguageCode: Boolean;
    function IsSetSubmittedTime: Boolean;
    function IsSetTargetLanguageCodes: Boolean;
    function IsSetTerminologyNames: Boolean;
    property DataAccessRoleArn: string read GetDataAccessRoleArn write SetDataAccessRoleArn;
    property EndTime: TDateTime read GetEndTime write SetEndTime;
    property InputDataConfig: TInputDataConfig read GetInputDataConfig write SetInputDataConfig;
    property KeepInputDataConfig: Boolean read GetKeepInputDataConfig write SetKeepInputDataConfig;
    property JobDetails: TJobDetails read GetJobDetails write SetJobDetails;
    property KeepJobDetails: Boolean read GetKeepJobDetails write SetKeepJobDetails;
    property JobId: string read GetJobId write SetJobId;
    property JobName: string read GetJobName write SetJobName;
    property JobStatus: TJobStatus read GetJobStatus write SetJobStatus;
    property Message: string read GetMessage write SetMessage;
    property OutputDataConfig: TOutputDataConfig read GetOutputDataConfig write SetOutputDataConfig;
    property KeepOutputDataConfig: Boolean read GetKeepOutputDataConfig write SetKeepOutputDataConfig;
    property ParallelDataNames: TList<string> read GetParallelDataNames write SetParallelDataNames;
    property KeepParallelDataNames: Boolean read GetKeepParallelDataNames write SetKeepParallelDataNames;
    property SourceLanguageCode: string read GetSourceLanguageCode write SetSourceLanguageCode;
    property SubmittedTime: TDateTime read GetSubmittedTime write SetSubmittedTime;
    property TargetLanguageCodes: TList<string> read GetTargetLanguageCodes write SetTargetLanguageCodes;
    property KeepTargetLanguageCodes: Boolean read GetKeepTargetLanguageCodes write SetKeepTargetLanguageCodes;
    property TerminologyNames: TList<string> read GetTerminologyNames write SetTerminologyNames;
    property KeepTerminologyNames: Boolean read GetKeepTerminologyNames write SetKeepTerminologyNames;
  end;
  
implementation

{ TTextTranslationJobProperties }

constructor TTextTranslationJobProperties.Create;
begin
  inherited;
  FParallelDataNames := TList<string>.Create;
  FTargetLanguageCodes := TList<string>.Create;
  FTerminologyNames := TList<string>.Create;
end;

destructor TTextTranslationJobProperties.Destroy;
begin
  TerminologyNames := nil;
  TargetLanguageCodes := nil;
  ParallelDataNames := nil;
  OutputDataConfig := nil;
  JobDetails := nil;
  InputDataConfig := nil;
  inherited;
end;

function TTextTranslationJobProperties.Obj: TTextTranslationJobProperties;
begin
  Result := Self;
end;

function TTextTranslationJobProperties.GetDataAccessRoleArn: string;
begin
  Result := FDataAccessRoleArn.ValueOrDefault;
end;

procedure TTextTranslationJobProperties.SetDataAccessRoleArn(const Value: string);
begin
  FDataAccessRoleArn := Value;
end;

function TTextTranslationJobProperties.IsSetDataAccessRoleArn: Boolean;
begin
  Result := FDataAccessRoleArn.HasValue;
end;

function TTextTranslationJobProperties.GetEndTime: TDateTime;
begin
  Result := FEndTime.ValueOrDefault;
end;

procedure TTextTranslationJobProperties.SetEndTime(const Value: TDateTime);
begin
  FEndTime := Value;
end;

function TTextTranslationJobProperties.IsSetEndTime: Boolean;
begin
  Result := FEndTime.HasValue;
end;

function TTextTranslationJobProperties.GetInputDataConfig: TInputDataConfig;
begin
  Result := FInputDataConfig;
end;

procedure TTextTranslationJobProperties.SetInputDataConfig(const Value: TInputDataConfig);
begin
  if FInputDataConfig <> Value then
  begin
    if not KeepInputDataConfig then
      FInputDataConfig.Free;
    FInputDataConfig := Value;
  end;
end;

function TTextTranslationJobProperties.GetKeepInputDataConfig: Boolean;
begin
  Result := FKeepInputDataConfig;
end;

procedure TTextTranslationJobProperties.SetKeepInputDataConfig(const Value: Boolean);
begin
  FKeepInputDataConfig := Value;
end;

function TTextTranslationJobProperties.IsSetInputDataConfig: Boolean;
begin
  Result := FInputDataConfig <> nil;
end;

function TTextTranslationJobProperties.GetJobDetails: TJobDetails;
begin
  Result := FJobDetails;
end;

procedure TTextTranslationJobProperties.SetJobDetails(const Value: TJobDetails);
begin
  if FJobDetails <> Value then
  begin
    if not KeepJobDetails then
      FJobDetails.Free;
    FJobDetails := Value;
  end;
end;

function TTextTranslationJobProperties.GetKeepJobDetails: Boolean;
begin
  Result := FKeepJobDetails;
end;

procedure TTextTranslationJobProperties.SetKeepJobDetails(const Value: Boolean);
begin
  FKeepJobDetails := Value;
end;

function TTextTranslationJobProperties.IsSetJobDetails: Boolean;
begin
  Result := FJobDetails <> nil;
end;

function TTextTranslationJobProperties.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TTextTranslationJobProperties.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TTextTranslationJobProperties.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TTextTranslationJobProperties.GetJobName: string;
begin
  Result := FJobName.ValueOrDefault;
end;

procedure TTextTranslationJobProperties.SetJobName(const Value: string);
begin
  FJobName := Value;
end;

function TTextTranslationJobProperties.IsSetJobName: Boolean;
begin
  Result := FJobName.HasValue;
end;

function TTextTranslationJobProperties.GetJobStatus: TJobStatus;
begin
  Result := FJobStatus.ValueOrDefault;
end;

procedure TTextTranslationJobProperties.SetJobStatus(const Value: TJobStatus);
begin
  FJobStatus := Value;
end;

function TTextTranslationJobProperties.IsSetJobStatus: Boolean;
begin
  Result := FJobStatus.HasValue;
end;

function TTextTranslationJobProperties.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure TTextTranslationJobProperties.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function TTextTranslationJobProperties.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

function TTextTranslationJobProperties.GetOutputDataConfig: TOutputDataConfig;
begin
  Result := FOutputDataConfig;
end;

procedure TTextTranslationJobProperties.SetOutputDataConfig(const Value: TOutputDataConfig);
begin
  if FOutputDataConfig <> Value then
  begin
    if not KeepOutputDataConfig then
      FOutputDataConfig.Free;
    FOutputDataConfig := Value;
  end;
end;

function TTextTranslationJobProperties.GetKeepOutputDataConfig: Boolean;
begin
  Result := FKeepOutputDataConfig;
end;

procedure TTextTranslationJobProperties.SetKeepOutputDataConfig(const Value: Boolean);
begin
  FKeepOutputDataConfig := Value;
end;

function TTextTranslationJobProperties.IsSetOutputDataConfig: Boolean;
begin
  Result := FOutputDataConfig <> nil;
end;

function TTextTranslationJobProperties.GetParallelDataNames: TList<string>;
begin
  Result := FParallelDataNames;
end;

procedure TTextTranslationJobProperties.SetParallelDataNames(const Value: TList<string>);
begin
  if FParallelDataNames <> Value then
  begin
    if not KeepParallelDataNames then
      FParallelDataNames.Free;
    FParallelDataNames := Value;
  end;
end;

function TTextTranslationJobProperties.GetKeepParallelDataNames: Boolean;
begin
  Result := FKeepParallelDataNames;
end;

procedure TTextTranslationJobProperties.SetKeepParallelDataNames(const Value: Boolean);
begin
  FKeepParallelDataNames := Value;
end;

function TTextTranslationJobProperties.IsSetParallelDataNames: Boolean;
begin
  Result := (FParallelDataNames <> nil) and (FParallelDataNames.Count > 0);
end;

function TTextTranslationJobProperties.GetSourceLanguageCode: string;
begin
  Result := FSourceLanguageCode.ValueOrDefault;
end;

procedure TTextTranslationJobProperties.SetSourceLanguageCode(const Value: string);
begin
  FSourceLanguageCode := Value;
end;

function TTextTranslationJobProperties.IsSetSourceLanguageCode: Boolean;
begin
  Result := FSourceLanguageCode.HasValue;
end;

function TTextTranslationJobProperties.GetSubmittedTime: TDateTime;
begin
  Result := FSubmittedTime.ValueOrDefault;
end;

procedure TTextTranslationJobProperties.SetSubmittedTime(const Value: TDateTime);
begin
  FSubmittedTime := Value;
end;

function TTextTranslationJobProperties.IsSetSubmittedTime: Boolean;
begin
  Result := FSubmittedTime.HasValue;
end;

function TTextTranslationJobProperties.GetTargetLanguageCodes: TList<string>;
begin
  Result := FTargetLanguageCodes;
end;

procedure TTextTranslationJobProperties.SetTargetLanguageCodes(const Value: TList<string>);
begin
  if FTargetLanguageCodes <> Value then
  begin
    if not KeepTargetLanguageCodes then
      FTargetLanguageCodes.Free;
    FTargetLanguageCodes := Value;
  end;
end;

function TTextTranslationJobProperties.GetKeepTargetLanguageCodes: Boolean;
begin
  Result := FKeepTargetLanguageCodes;
end;

procedure TTextTranslationJobProperties.SetKeepTargetLanguageCodes(const Value: Boolean);
begin
  FKeepTargetLanguageCodes := Value;
end;

function TTextTranslationJobProperties.IsSetTargetLanguageCodes: Boolean;
begin
  Result := (FTargetLanguageCodes <> nil) and (FTargetLanguageCodes.Count > 0);
end;

function TTextTranslationJobProperties.GetTerminologyNames: TList<string>;
begin
  Result := FTerminologyNames;
end;

procedure TTextTranslationJobProperties.SetTerminologyNames(const Value: TList<string>);
begin
  if FTerminologyNames <> Value then
  begin
    if not KeepTerminologyNames then
      FTerminologyNames.Free;
    FTerminologyNames := Value;
  end;
end;

function TTextTranslationJobProperties.GetKeepTerminologyNames: Boolean;
begin
  Result := FKeepTerminologyNames;
end;

procedure TTextTranslationJobProperties.SetKeepTerminologyNames(const Value: Boolean);
begin
  FKeepTerminologyNames := Value;
end;

function TTextTranslationJobProperties.IsSetTerminologyNames: Boolean;
begin
  Result := (FTerminologyNames <> nil) and (FTerminologyNames.Count > 0);
end;

end.
