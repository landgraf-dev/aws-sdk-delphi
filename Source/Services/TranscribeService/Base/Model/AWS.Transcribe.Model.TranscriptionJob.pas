unit AWS.Transcribe.Model.TranscriptionJob;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Transcribe.Model.ContentRedaction, 
  AWS.Transcribe.Model.JobExecutionSettings, 
  AWS.Transcribe.Enums, 
  AWS.Transcribe.Model.Media, 
  AWS.Transcribe.Model.ModelSettings, 
  AWS.Transcribe.Model.Settings, 
  AWS.Transcribe.Model.Transcript;

type
  TTranscriptionJob = class;
  
  ITranscriptionJob = interface
    function GetCompletionTime: TDateTime;
    procedure SetCompletionTime(const Value: TDateTime);
    function GetContentRedaction: TContentRedaction;
    procedure SetContentRedaction(const Value: TContentRedaction);
    function GetKeepContentRedaction: Boolean;
    procedure SetKeepContentRedaction(const Value: Boolean);
    function GetCreationTime: TDateTime;
    procedure SetCreationTime(const Value: TDateTime);
    function GetFailureReason: string;
    procedure SetFailureReason(const Value: string);
    function GetIdentifiedLanguageScore: Double;
    procedure SetIdentifiedLanguageScore(const Value: Double);
    function GetIdentifyLanguage: Boolean;
    procedure SetIdentifyLanguage(const Value: Boolean);
    function GetJobExecutionSettings: TJobExecutionSettings;
    procedure SetJobExecutionSettings(const Value: TJobExecutionSettings);
    function GetKeepJobExecutionSettings: Boolean;
    procedure SetKeepJobExecutionSettings(const Value: Boolean);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLanguageOptions: TList<string>;
    procedure SetLanguageOptions(const Value: TList<string>);
    function GetKeepLanguageOptions: Boolean;
    procedure SetKeepLanguageOptions(const Value: Boolean);
    function GetMedia: TMedia;
    procedure SetMedia(const Value: TMedia);
    function GetKeepMedia: Boolean;
    procedure SetKeepMedia(const Value: Boolean);
    function GetMediaFormat: TMediaFormat;
    procedure SetMediaFormat(const Value: TMediaFormat);
    function GetMediaSampleRateHertz: Integer;
    procedure SetMediaSampleRateHertz(const Value: Integer);
    function GetModelSettings: TModelSettings;
    procedure SetModelSettings(const Value: TModelSettings);
    function GetKeepModelSettings: Boolean;
    procedure SetKeepModelSettings(const Value: Boolean);
    function GetSettings: TSettings;
    procedure SetSettings(const Value: TSettings);
    function GetKeepSettings: Boolean;
    procedure SetKeepSettings(const Value: Boolean);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
    function GetTranscript: TTranscript;
    procedure SetTranscript(const Value: TTranscript);
    function GetKeepTranscript: Boolean;
    procedure SetKeepTranscript(const Value: Boolean);
    function GetTranscriptionJobName: string;
    procedure SetTranscriptionJobName(const Value: string);
    function GetTranscriptionJobStatus: TTranscriptionJobStatus;
    procedure SetTranscriptionJobStatus(const Value: TTranscriptionJobStatus);
    function Obj: TTranscriptionJob;
    function IsSetCompletionTime: Boolean;
    function IsSetContentRedaction: Boolean;
    function IsSetCreationTime: Boolean;
    function IsSetFailureReason: Boolean;
    function IsSetIdentifiedLanguageScore: Boolean;
    function IsSetIdentifyLanguage: Boolean;
    function IsSetJobExecutionSettings: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLanguageOptions: Boolean;
    function IsSetMedia: Boolean;
    function IsSetMediaFormat: Boolean;
    function IsSetMediaSampleRateHertz: Boolean;
    function IsSetModelSettings: Boolean;
    function IsSetSettings: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetTranscript: Boolean;
    function IsSetTranscriptionJobName: Boolean;
    function IsSetTranscriptionJobStatus: Boolean;
    property CompletionTime: TDateTime read GetCompletionTime write SetCompletionTime;
    property ContentRedaction: TContentRedaction read GetContentRedaction write SetContentRedaction;
    property KeepContentRedaction: Boolean read GetKeepContentRedaction write SetKeepContentRedaction;
    property CreationTime: TDateTime read GetCreationTime write SetCreationTime;
    property FailureReason: string read GetFailureReason write SetFailureReason;
    property IdentifiedLanguageScore: Double read GetIdentifiedLanguageScore write SetIdentifiedLanguageScore;
    property IdentifyLanguage: Boolean read GetIdentifyLanguage write SetIdentifyLanguage;
    property JobExecutionSettings: TJobExecutionSettings read GetJobExecutionSettings write SetJobExecutionSettings;
    property KeepJobExecutionSettings: Boolean read GetKeepJobExecutionSettings write SetKeepJobExecutionSettings;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LanguageOptions: TList<string> read GetLanguageOptions write SetLanguageOptions;
    property KeepLanguageOptions: Boolean read GetKeepLanguageOptions write SetKeepLanguageOptions;
    property Media: TMedia read GetMedia write SetMedia;
    property KeepMedia: Boolean read GetKeepMedia write SetKeepMedia;
    property MediaFormat: TMediaFormat read GetMediaFormat write SetMediaFormat;
    property MediaSampleRateHertz: Integer read GetMediaSampleRateHertz write SetMediaSampleRateHertz;
    property ModelSettings: TModelSettings read GetModelSettings write SetModelSettings;
    property KeepModelSettings: Boolean read GetKeepModelSettings write SetKeepModelSettings;
    property Settings: TSettings read GetSettings write SetSettings;
    property KeepSettings: Boolean read GetKeepSettings write SetKeepSettings;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property Transcript: TTranscript read GetTranscript write SetTranscript;
    property KeepTranscript: Boolean read GetKeepTranscript write SetKeepTranscript;
    property TranscriptionJobName: string read GetTranscriptionJobName write SetTranscriptionJobName;
    property TranscriptionJobStatus: TTranscriptionJobStatus read GetTranscriptionJobStatus write SetTranscriptionJobStatus;
  end;
  
  TTranscriptionJob = class
  strict private
    FCompletionTime: Nullable<TDateTime>;
    FContentRedaction: TContentRedaction;
    FKeepContentRedaction: Boolean;
    FCreationTime: Nullable<TDateTime>;
    FFailureReason: Nullable<string>;
    FIdentifiedLanguageScore: Nullable<Double>;
    FIdentifyLanguage: Nullable<Boolean>;
    FJobExecutionSettings: TJobExecutionSettings;
    FKeepJobExecutionSettings: Boolean;
    FLanguageCode: Nullable<TLanguageCode>;
    FLanguageOptions: TList<string>;
    FKeepLanguageOptions: Boolean;
    FMedia: TMedia;
    FKeepMedia: Boolean;
    FMediaFormat: Nullable<TMediaFormat>;
    FMediaSampleRateHertz: Nullable<Integer>;
    FModelSettings: TModelSettings;
    FKeepModelSettings: Boolean;
    FSettings: TSettings;
    FKeepSettings: Boolean;
    FStartTime: Nullable<TDateTime>;
    FTranscript: TTranscript;
    FKeepTranscript: Boolean;
    FTranscriptionJobName: Nullable<string>;
    FTranscriptionJobStatus: Nullable<TTranscriptionJobStatus>;
    function GetCompletionTime: TDateTime;
    procedure SetCompletionTime(const Value: TDateTime);
    function GetContentRedaction: TContentRedaction;
    procedure SetContentRedaction(const Value: TContentRedaction);
    function GetKeepContentRedaction: Boolean;
    procedure SetKeepContentRedaction(const Value: Boolean);
    function GetCreationTime: TDateTime;
    procedure SetCreationTime(const Value: TDateTime);
    function GetFailureReason: string;
    procedure SetFailureReason(const Value: string);
    function GetIdentifiedLanguageScore: Double;
    procedure SetIdentifiedLanguageScore(const Value: Double);
    function GetIdentifyLanguage: Boolean;
    procedure SetIdentifyLanguage(const Value: Boolean);
    function GetJobExecutionSettings: TJobExecutionSettings;
    procedure SetJobExecutionSettings(const Value: TJobExecutionSettings);
    function GetKeepJobExecutionSettings: Boolean;
    procedure SetKeepJobExecutionSettings(const Value: Boolean);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLanguageOptions: TList<string>;
    procedure SetLanguageOptions(const Value: TList<string>);
    function GetKeepLanguageOptions: Boolean;
    procedure SetKeepLanguageOptions(const Value: Boolean);
    function GetMedia: TMedia;
    procedure SetMedia(const Value: TMedia);
    function GetKeepMedia: Boolean;
    procedure SetKeepMedia(const Value: Boolean);
    function GetMediaFormat: TMediaFormat;
    procedure SetMediaFormat(const Value: TMediaFormat);
    function GetMediaSampleRateHertz: Integer;
    procedure SetMediaSampleRateHertz(const Value: Integer);
    function GetModelSettings: TModelSettings;
    procedure SetModelSettings(const Value: TModelSettings);
    function GetKeepModelSettings: Boolean;
    procedure SetKeepModelSettings(const Value: Boolean);
    function GetSettings: TSettings;
    procedure SetSettings(const Value: TSettings);
    function GetKeepSettings: Boolean;
    procedure SetKeepSettings(const Value: Boolean);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
    function GetTranscript: TTranscript;
    procedure SetTranscript(const Value: TTranscript);
    function GetKeepTranscript: Boolean;
    procedure SetKeepTranscript(const Value: Boolean);
    function GetTranscriptionJobName: string;
    procedure SetTranscriptionJobName(const Value: string);
    function GetTranscriptionJobStatus: TTranscriptionJobStatus;
    procedure SetTranscriptionJobStatus(const Value: TTranscriptionJobStatus);
  strict protected
    function Obj: TTranscriptionJob;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCompletionTime: Boolean;
    function IsSetContentRedaction: Boolean;
    function IsSetCreationTime: Boolean;
    function IsSetFailureReason: Boolean;
    function IsSetIdentifiedLanguageScore: Boolean;
    function IsSetIdentifyLanguage: Boolean;
    function IsSetJobExecutionSettings: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLanguageOptions: Boolean;
    function IsSetMedia: Boolean;
    function IsSetMediaFormat: Boolean;
    function IsSetMediaSampleRateHertz: Boolean;
    function IsSetModelSettings: Boolean;
    function IsSetSettings: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetTranscript: Boolean;
    function IsSetTranscriptionJobName: Boolean;
    function IsSetTranscriptionJobStatus: Boolean;
    property CompletionTime: TDateTime read GetCompletionTime write SetCompletionTime;
    property ContentRedaction: TContentRedaction read GetContentRedaction write SetContentRedaction;
    property KeepContentRedaction: Boolean read GetKeepContentRedaction write SetKeepContentRedaction;
    property CreationTime: TDateTime read GetCreationTime write SetCreationTime;
    property FailureReason: string read GetFailureReason write SetFailureReason;
    property IdentifiedLanguageScore: Double read GetIdentifiedLanguageScore write SetIdentifiedLanguageScore;
    property IdentifyLanguage: Boolean read GetIdentifyLanguage write SetIdentifyLanguage;
    property JobExecutionSettings: TJobExecutionSettings read GetJobExecutionSettings write SetJobExecutionSettings;
    property KeepJobExecutionSettings: Boolean read GetKeepJobExecutionSettings write SetKeepJobExecutionSettings;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LanguageOptions: TList<string> read GetLanguageOptions write SetLanguageOptions;
    property KeepLanguageOptions: Boolean read GetKeepLanguageOptions write SetKeepLanguageOptions;
    property Media: TMedia read GetMedia write SetMedia;
    property KeepMedia: Boolean read GetKeepMedia write SetKeepMedia;
    property MediaFormat: TMediaFormat read GetMediaFormat write SetMediaFormat;
    property MediaSampleRateHertz: Integer read GetMediaSampleRateHertz write SetMediaSampleRateHertz;
    property ModelSettings: TModelSettings read GetModelSettings write SetModelSettings;
    property KeepModelSettings: Boolean read GetKeepModelSettings write SetKeepModelSettings;
    property Settings: TSettings read GetSettings write SetSettings;
    property KeepSettings: Boolean read GetKeepSettings write SetKeepSettings;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property Transcript: TTranscript read GetTranscript write SetTranscript;
    property KeepTranscript: Boolean read GetKeepTranscript write SetKeepTranscript;
    property TranscriptionJobName: string read GetTranscriptionJobName write SetTranscriptionJobName;
    property TranscriptionJobStatus: TTranscriptionJobStatus read GetTranscriptionJobStatus write SetTranscriptionJobStatus;
  end;
  
implementation

{ TTranscriptionJob }

constructor TTranscriptionJob.Create;
begin
  inherited;
  FLanguageOptions := TList<string>.Create;
end;

destructor TTranscriptionJob.Destroy;
begin
  Transcript := nil;
  Settings := nil;
  ModelSettings := nil;
  Media := nil;
  LanguageOptions := nil;
  JobExecutionSettings := nil;
  ContentRedaction := nil;
  inherited;
end;

function TTranscriptionJob.Obj: TTranscriptionJob;
begin
  Result := Self;
end;

function TTranscriptionJob.GetCompletionTime: TDateTime;
begin
  Result := FCompletionTime.ValueOrDefault;
end;

procedure TTranscriptionJob.SetCompletionTime(const Value: TDateTime);
begin
  FCompletionTime := Value;
end;

function TTranscriptionJob.IsSetCompletionTime: Boolean;
begin
  Result := FCompletionTime.HasValue;
end;

function TTranscriptionJob.GetContentRedaction: TContentRedaction;
begin
  Result := FContentRedaction;
end;

procedure TTranscriptionJob.SetContentRedaction(const Value: TContentRedaction);
begin
  if FContentRedaction <> Value then
  begin
    if not KeepContentRedaction then
      FContentRedaction.Free;
    FContentRedaction := Value;
  end;
end;

function TTranscriptionJob.GetKeepContentRedaction: Boolean;
begin
  Result := FKeepContentRedaction;
end;

procedure TTranscriptionJob.SetKeepContentRedaction(const Value: Boolean);
begin
  FKeepContentRedaction := Value;
end;

function TTranscriptionJob.IsSetContentRedaction: Boolean;
begin
  Result := FContentRedaction <> nil;
end;

function TTranscriptionJob.GetCreationTime: TDateTime;
begin
  Result := FCreationTime.ValueOrDefault;
end;

procedure TTranscriptionJob.SetCreationTime(const Value: TDateTime);
begin
  FCreationTime := Value;
end;

function TTranscriptionJob.IsSetCreationTime: Boolean;
begin
  Result := FCreationTime.HasValue;
end;

function TTranscriptionJob.GetFailureReason: string;
begin
  Result := FFailureReason.ValueOrDefault;
end;

procedure TTranscriptionJob.SetFailureReason(const Value: string);
begin
  FFailureReason := Value;
end;

function TTranscriptionJob.IsSetFailureReason: Boolean;
begin
  Result := FFailureReason.HasValue;
end;

function TTranscriptionJob.GetIdentifiedLanguageScore: Double;
begin
  Result := FIdentifiedLanguageScore.ValueOrDefault;
end;

procedure TTranscriptionJob.SetIdentifiedLanguageScore(const Value: Double);
begin
  FIdentifiedLanguageScore := Value;
end;

function TTranscriptionJob.IsSetIdentifiedLanguageScore: Boolean;
begin
  Result := FIdentifiedLanguageScore.HasValue;
end;

function TTranscriptionJob.GetIdentifyLanguage: Boolean;
begin
  Result := FIdentifyLanguage.ValueOrDefault;
end;

procedure TTranscriptionJob.SetIdentifyLanguage(const Value: Boolean);
begin
  FIdentifyLanguage := Value;
end;

function TTranscriptionJob.IsSetIdentifyLanguage: Boolean;
begin
  Result := FIdentifyLanguage.HasValue;
end;

function TTranscriptionJob.GetJobExecutionSettings: TJobExecutionSettings;
begin
  Result := FJobExecutionSettings;
end;

procedure TTranscriptionJob.SetJobExecutionSettings(const Value: TJobExecutionSettings);
begin
  if FJobExecutionSettings <> Value then
  begin
    if not KeepJobExecutionSettings then
      FJobExecutionSettings.Free;
    FJobExecutionSettings := Value;
  end;
end;

function TTranscriptionJob.GetKeepJobExecutionSettings: Boolean;
begin
  Result := FKeepJobExecutionSettings;
end;

procedure TTranscriptionJob.SetKeepJobExecutionSettings(const Value: Boolean);
begin
  FKeepJobExecutionSettings := Value;
end;

function TTranscriptionJob.IsSetJobExecutionSettings: Boolean;
begin
  Result := FJobExecutionSettings <> nil;
end;

function TTranscriptionJob.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TTranscriptionJob.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TTranscriptionJob.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TTranscriptionJob.GetLanguageOptions: TList<string>;
begin
  Result := FLanguageOptions;
end;

procedure TTranscriptionJob.SetLanguageOptions(const Value: TList<string>);
begin
  if FLanguageOptions <> Value then
  begin
    if not KeepLanguageOptions then
      FLanguageOptions.Free;
    FLanguageOptions := Value;
  end;
end;

function TTranscriptionJob.GetKeepLanguageOptions: Boolean;
begin
  Result := FKeepLanguageOptions;
end;

procedure TTranscriptionJob.SetKeepLanguageOptions(const Value: Boolean);
begin
  FKeepLanguageOptions := Value;
end;

function TTranscriptionJob.IsSetLanguageOptions: Boolean;
begin
  Result := (FLanguageOptions <> nil) and (FLanguageOptions.Count > 0);
end;

function TTranscriptionJob.GetMedia: TMedia;
begin
  Result := FMedia;
end;

procedure TTranscriptionJob.SetMedia(const Value: TMedia);
begin
  if FMedia <> Value then
  begin
    if not KeepMedia then
      FMedia.Free;
    FMedia := Value;
  end;
end;

function TTranscriptionJob.GetKeepMedia: Boolean;
begin
  Result := FKeepMedia;
end;

procedure TTranscriptionJob.SetKeepMedia(const Value: Boolean);
begin
  FKeepMedia := Value;
end;

function TTranscriptionJob.IsSetMedia: Boolean;
begin
  Result := FMedia <> nil;
end;

function TTranscriptionJob.GetMediaFormat: TMediaFormat;
begin
  Result := FMediaFormat.ValueOrDefault;
end;

procedure TTranscriptionJob.SetMediaFormat(const Value: TMediaFormat);
begin
  FMediaFormat := Value;
end;

function TTranscriptionJob.IsSetMediaFormat: Boolean;
begin
  Result := FMediaFormat.HasValue;
end;

function TTranscriptionJob.GetMediaSampleRateHertz: Integer;
begin
  Result := FMediaSampleRateHertz.ValueOrDefault;
end;

procedure TTranscriptionJob.SetMediaSampleRateHertz(const Value: Integer);
begin
  FMediaSampleRateHertz := Value;
end;

function TTranscriptionJob.IsSetMediaSampleRateHertz: Boolean;
begin
  Result := FMediaSampleRateHertz.HasValue;
end;

function TTranscriptionJob.GetModelSettings: TModelSettings;
begin
  Result := FModelSettings;
end;

procedure TTranscriptionJob.SetModelSettings(const Value: TModelSettings);
begin
  if FModelSettings <> Value then
  begin
    if not KeepModelSettings then
      FModelSettings.Free;
    FModelSettings := Value;
  end;
end;

function TTranscriptionJob.GetKeepModelSettings: Boolean;
begin
  Result := FKeepModelSettings;
end;

procedure TTranscriptionJob.SetKeepModelSettings(const Value: Boolean);
begin
  FKeepModelSettings := Value;
end;

function TTranscriptionJob.IsSetModelSettings: Boolean;
begin
  Result := FModelSettings <> nil;
end;

function TTranscriptionJob.GetSettings: TSettings;
begin
  Result := FSettings;
end;

procedure TTranscriptionJob.SetSettings(const Value: TSettings);
begin
  if FSettings <> Value then
  begin
    if not KeepSettings then
      FSettings.Free;
    FSettings := Value;
  end;
end;

function TTranscriptionJob.GetKeepSettings: Boolean;
begin
  Result := FKeepSettings;
end;

procedure TTranscriptionJob.SetKeepSettings(const Value: Boolean);
begin
  FKeepSettings := Value;
end;

function TTranscriptionJob.IsSetSettings: Boolean;
begin
  Result := FSettings <> nil;
end;

function TTranscriptionJob.GetStartTime: TDateTime;
begin
  Result := FStartTime.ValueOrDefault;
end;

procedure TTranscriptionJob.SetStartTime(const Value: TDateTime);
begin
  FStartTime := Value;
end;

function TTranscriptionJob.IsSetStartTime: Boolean;
begin
  Result := FStartTime.HasValue;
end;

function TTranscriptionJob.GetTranscript: TTranscript;
begin
  Result := FTranscript;
end;

procedure TTranscriptionJob.SetTranscript(const Value: TTranscript);
begin
  if FTranscript <> Value then
  begin
    if not KeepTranscript then
      FTranscript.Free;
    FTranscript := Value;
  end;
end;

function TTranscriptionJob.GetKeepTranscript: Boolean;
begin
  Result := FKeepTranscript;
end;

procedure TTranscriptionJob.SetKeepTranscript(const Value: Boolean);
begin
  FKeepTranscript := Value;
end;

function TTranscriptionJob.IsSetTranscript: Boolean;
begin
  Result := FTranscript <> nil;
end;

function TTranscriptionJob.GetTranscriptionJobName: string;
begin
  Result := FTranscriptionJobName.ValueOrDefault;
end;

procedure TTranscriptionJob.SetTranscriptionJobName(const Value: string);
begin
  FTranscriptionJobName := Value;
end;

function TTranscriptionJob.IsSetTranscriptionJobName: Boolean;
begin
  Result := FTranscriptionJobName.HasValue;
end;

function TTranscriptionJob.GetTranscriptionJobStatus: TTranscriptionJobStatus;
begin
  Result := FTranscriptionJobStatus.ValueOrDefault;
end;

procedure TTranscriptionJob.SetTranscriptionJobStatus(const Value: TTranscriptionJobStatus);
begin
  FTranscriptionJobStatus := Value;
end;

function TTranscriptionJob.IsSetTranscriptionJobStatus: Boolean;
begin
  Result := FTranscriptionJobStatus.HasValue;
end;

end.
