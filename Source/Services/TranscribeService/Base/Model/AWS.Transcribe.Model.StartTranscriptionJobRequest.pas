unit AWS.Transcribe.Model.StartTranscriptionJobRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Transcribe.Model.Request, 
  AWS.Transcribe.Model.ContentRedaction, 
  AWS.Transcribe.Model.JobExecutionSettings, 
  AWS.Transcribe.Enums, 
  AWS.Transcribe.Model.LanguageIdSettings, 
  AWS.Transcribe.Model.Media, 
  AWS.Transcribe.Model.ModelSettings, 
  AWS.Transcribe.Model.Settings, 
  AWS.Transcribe.Model.Subtitles, 
  AWS.Transcribe.Model.Tag;

type
  TStartTranscriptionJobRequest = class;
  
  IStartTranscriptionJobRequest = interface
    function GetContentRedaction: TContentRedaction;
    procedure SetContentRedaction(const Value: TContentRedaction);
    function GetKeepContentRedaction: Boolean;
    procedure SetKeepContentRedaction(const Value: Boolean);
    function GetIdentifyLanguage: Boolean;
    procedure SetIdentifyLanguage(const Value: Boolean);
    function GetJobExecutionSettings: TJobExecutionSettings;
    procedure SetJobExecutionSettings(const Value: TJobExecutionSettings);
    function GetKeepJobExecutionSettings: Boolean;
    procedure SetKeepJobExecutionSettings(const Value: Boolean);
    function GetKMSEncryptionContext: TDictionary<string, string>;
    procedure SetKMSEncryptionContext(const Value: TDictionary<string, string>);
    function GetKeepKMSEncryptionContext: Boolean;
    procedure SetKeepKMSEncryptionContext(const Value: Boolean);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLanguageIdSettings: TObjectDictionary<string, TLanguageIdSettings>;
    procedure SetLanguageIdSettings(const Value: TObjectDictionary<string, TLanguageIdSettings>);
    function GetKeepLanguageIdSettings: Boolean;
    procedure SetKeepLanguageIdSettings(const Value: Boolean);
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
    function GetOutputBucketName: string;
    procedure SetOutputBucketName(const Value: string);
    function GetOutputEncryptionKMSKeyId: string;
    procedure SetOutputEncryptionKMSKeyId(const Value: string);
    function GetOutputKey: string;
    procedure SetOutputKey(const Value: string);
    function GetSettings: TSettings;
    procedure SetSettings(const Value: TSettings);
    function GetKeepSettings: Boolean;
    procedure SetKeepSettings(const Value: Boolean);
    function GetSubtitles: TSubtitles;
    procedure SetSubtitles(const Value: TSubtitles);
    function GetKeepSubtitles: Boolean;
    procedure SetKeepSubtitles(const Value: Boolean);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTranscriptionJobName: string;
    procedure SetTranscriptionJobName(const Value: string);
    function Obj: TStartTranscriptionJobRequest;
    function IsSetContentRedaction: Boolean;
    function IsSetIdentifyLanguage: Boolean;
    function IsSetJobExecutionSettings: Boolean;
    function IsSetKMSEncryptionContext: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLanguageIdSettings: Boolean;
    function IsSetLanguageOptions: Boolean;
    function IsSetMedia: Boolean;
    function IsSetMediaFormat: Boolean;
    function IsSetMediaSampleRateHertz: Boolean;
    function IsSetModelSettings: Boolean;
    function IsSetOutputBucketName: Boolean;
    function IsSetOutputEncryptionKMSKeyId: Boolean;
    function IsSetOutputKey: Boolean;
    function IsSetSettings: Boolean;
    function IsSetSubtitles: Boolean;
    function IsSetTags: Boolean;
    function IsSetTranscriptionJobName: Boolean;
    property ContentRedaction: TContentRedaction read GetContentRedaction write SetContentRedaction;
    property KeepContentRedaction: Boolean read GetKeepContentRedaction write SetKeepContentRedaction;
    property IdentifyLanguage: Boolean read GetIdentifyLanguage write SetIdentifyLanguage;
    property JobExecutionSettings: TJobExecutionSettings read GetJobExecutionSettings write SetJobExecutionSettings;
    property KeepJobExecutionSettings: Boolean read GetKeepJobExecutionSettings write SetKeepJobExecutionSettings;
    property KMSEncryptionContext: TDictionary<string, string> read GetKMSEncryptionContext write SetKMSEncryptionContext;
    property KeepKMSEncryptionContext: Boolean read GetKeepKMSEncryptionContext write SetKeepKMSEncryptionContext;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LanguageIdSettings: TObjectDictionary<string, TLanguageIdSettings> read GetLanguageIdSettings write SetLanguageIdSettings;
    property KeepLanguageIdSettings: Boolean read GetKeepLanguageIdSettings write SetKeepLanguageIdSettings;
    property LanguageOptions: TList<string> read GetLanguageOptions write SetLanguageOptions;
    property KeepLanguageOptions: Boolean read GetKeepLanguageOptions write SetKeepLanguageOptions;
    property Media: TMedia read GetMedia write SetMedia;
    property KeepMedia: Boolean read GetKeepMedia write SetKeepMedia;
    property MediaFormat: TMediaFormat read GetMediaFormat write SetMediaFormat;
    property MediaSampleRateHertz: Integer read GetMediaSampleRateHertz write SetMediaSampleRateHertz;
    property ModelSettings: TModelSettings read GetModelSettings write SetModelSettings;
    property KeepModelSettings: Boolean read GetKeepModelSettings write SetKeepModelSettings;
    property OutputBucketName: string read GetOutputBucketName write SetOutputBucketName;
    property OutputEncryptionKMSKeyId: string read GetOutputEncryptionKMSKeyId write SetOutputEncryptionKMSKeyId;
    property OutputKey: string read GetOutputKey write SetOutputKey;
    property Settings: TSettings read GetSettings write SetSettings;
    property KeepSettings: Boolean read GetKeepSettings write SetKeepSettings;
    property Subtitles: TSubtitles read GetSubtitles write SetSubtitles;
    property KeepSubtitles: Boolean read GetKeepSubtitles write SetKeepSubtitles;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property TranscriptionJobName: string read GetTranscriptionJobName write SetTranscriptionJobName;
  end;
  
  TStartTranscriptionJobRequest = class(TAmazonTranscribeServiceRequest, IStartTranscriptionJobRequest)
  strict private
    FContentRedaction: TContentRedaction;
    FKeepContentRedaction: Boolean;
    FIdentifyLanguage: Nullable<Boolean>;
    FJobExecutionSettings: TJobExecutionSettings;
    FKeepJobExecutionSettings: Boolean;
    FKMSEncryptionContext: TDictionary<string, string>;
    FKeepKMSEncryptionContext: Boolean;
    FLanguageCode: Nullable<TLanguageCode>;
    FLanguageIdSettings: TObjectDictionary<string, TLanguageIdSettings>;
    FKeepLanguageIdSettings: Boolean;
    FLanguageOptions: TList<string>;
    FKeepLanguageOptions: Boolean;
    FMedia: TMedia;
    FKeepMedia: Boolean;
    FMediaFormat: Nullable<TMediaFormat>;
    FMediaSampleRateHertz: Nullable<Integer>;
    FModelSettings: TModelSettings;
    FKeepModelSettings: Boolean;
    FOutputBucketName: Nullable<string>;
    FOutputEncryptionKMSKeyId: Nullable<string>;
    FOutputKey: Nullable<string>;
    FSettings: TSettings;
    FKeepSettings: Boolean;
    FSubtitles: TSubtitles;
    FKeepSubtitles: Boolean;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    FTranscriptionJobName: Nullable<string>;
    function GetContentRedaction: TContentRedaction;
    procedure SetContentRedaction(const Value: TContentRedaction);
    function GetKeepContentRedaction: Boolean;
    procedure SetKeepContentRedaction(const Value: Boolean);
    function GetIdentifyLanguage: Boolean;
    procedure SetIdentifyLanguage(const Value: Boolean);
    function GetJobExecutionSettings: TJobExecutionSettings;
    procedure SetJobExecutionSettings(const Value: TJobExecutionSettings);
    function GetKeepJobExecutionSettings: Boolean;
    procedure SetKeepJobExecutionSettings(const Value: Boolean);
    function GetKMSEncryptionContext: TDictionary<string, string>;
    procedure SetKMSEncryptionContext(const Value: TDictionary<string, string>);
    function GetKeepKMSEncryptionContext: Boolean;
    procedure SetKeepKMSEncryptionContext(const Value: Boolean);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLanguageIdSettings: TObjectDictionary<string, TLanguageIdSettings>;
    procedure SetLanguageIdSettings(const Value: TObjectDictionary<string, TLanguageIdSettings>);
    function GetKeepLanguageIdSettings: Boolean;
    procedure SetKeepLanguageIdSettings(const Value: Boolean);
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
    function GetOutputBucketName: string;
    procedure SetOutputBucketName(const Value: string);
    function GetOutputEncryptionKMSKeyId: string;
    procedure SetOutputEncryptionKMSKeyId(const Value: string);
    function GetOutputKey: string;
    procedure SetOutputKey(const Value: string);
    function GetSettings: TSettings;
    procedure SetSettings(const Value: TSettings);
    function GetKeepSettings: Boolean;
    procedure SetKeepSettings(const Value: Boolean);
    function GetSubtitles: TSubtitles;
    procedure SetSubtitles(const Value: TSubtitles);
    function GetKeepSubtitles: Boolean;
    procedure SetKeepSubtitles(const Value: Boolean);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTranscriptionJobName: string;
    procedure SetTranscriptionJobName(const Value: string);
  strict protected
    function Obj: TStartTranscriptionJobRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetContentRedaction: Boolean;
    function IsSetIdentifyLanguage: Boolean;
    function IsSetJobExecutionSettings: Boolean;
    function IsSetKMSEncryptionContext: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLanguageIdSettings: Boolean;
    function IsSetLanguageOptions: Boolean;
    function IsSetMedia: Boolean;
    function IsSetMediaFormat: Boolean;
    function IsSetMediaSampleRateHertz: Boolean;
    function IsSetModelSettings: Boolean;
    function IsSetOutputBucketName: Boolean;
    function IsSetOutputEncryptionKMSKeyId: Boolean;
    function IsSetOutputKey: Boolean;
    function IsSetSettings: Boolean;
    function IsSetSubtitles: Boolean;
    function IsSetTags: Boolean;
    function IsSetTranscriptionJobName: Boolean;
    property ContentRedaction: TContentRedaction read GetContentRedaction write SetContentRedaction;
    property KeepContentRedaction: Boolean read GetKeepContentRedaction write SetKeepContentRedaction;
    property IdentifyLanguage: Boolean read GetIdentifyLanguage write SetIdentifyLanguage;
    property JobExecutionSettings: TJobExecutionSettings read GetJobExecutionSettings write SetJobExecutionSettings;
    property KeepJobExecutionSettings: Boolean read GetKeepJobExecutionSettings write SetKeepJobExecutionSettings;
    property KMSEncryptionContext: TDictionary<string, string> read GetKMSEncryptionContext write SetKMSEncryptionContext;
    property KeepKMSEncryptionContext: Boolean read GetKeepKMSEncryptionContext write SetKeepKMSEncryptionContext;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LanguageIdSettings: TObjectDictionary<string, TLanguageIdSettings> read GetLanguageIdSettings write SetLanguageIdSettings;
    property KeepLanguageIdSettings: Boolean read GetKeepLanguageIdSettings write SetKeepLanguageIdSettings;
    property LanguageOptions: TList<string> read GetLanguageOptions write SetLanguageOptions;
    property KeepLanguageOptions: Boolean read GetKeepLanguageOptions write SetKeepLanguageOptions;
    property Media: TMedia read GetMedia write SetMedia;
    property KeepMedia: Boolean read GetKeepMedia write SetKeepMedia;
    property MediaFormat: TMediaFormat read GetMediaFormat write SetMediaFormat;
    property MediaSampleRateHertz: Integer read GetMediaSampleRateHertz write SetMediaSampleRateHertz;
    property ModelSettings: TModelSettings read GetModelSettings write SetModelSettings;
    property KeepModelSettings: Boolean read GetKeepModelSettings write SetKeepModelSettings;
    property OutputBucketName: string read GetOutputBucketName write SetOutputBucketName;
    property OutputEncryptionKMSKeyId: string read GetOutputEncryptionKMSKeyId write SetOutputEncryptionKMSKeyId;
    property OutputKey: string read GetOutputKey write SetOutputKey;
    property Settings: TSettings read GetSettings write SetSettings;
    property KeepSettings: Boolean read GetKeepSettings write SetKeepSettings;
    property Subtitles: TSubtitles read GetSubtitles write SetSubtitles;
    property KeepSubtitles: Boolean read GetKeepSubtitles write SetKeepSubtitles;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property TranscriptionJobName: string read GetTranscriptionJobName write SetTranscriptionJobName;
  end;
  
implementation

{ TStartTranscriptionJobRequest }

constructor TStartTranscriptionJobRequest.Create;
begin
  inherited;
  FKMSEncryptionContext := TDictionary<string, string>.Create;
  FLanguageIdSettings := TObjectDictionary<string, TLanguageIdSettings>.Create([doOwnsValues]);
  FLanguageOptions := TList<string>.Create;
  FTags := TObjectList<TTag>.Create;
end;

destructor TStartTranscriptionJobRequest.Destroy;
begin
  Tags := nil;
  Subtitles := nil;
  Settings := nil;
  ModelSettings := nil;
  Media := nil;
  LanguageOptions := nil;
  LanguageIdSettings := nil;
  KMSEncryptionContext := nil;
  JobExecutionSettings := nil;
  ContentRedaction := nil;
  inherited;
end;

function TStartTranscriptionJobRequest.Obj: TStartTranscriptionJobRequest;
begin
  Result := Self;
end;

function TStartTranscriptionJobRequest.GetContentRedaction: TContentRedaction;
begin
  Result := FContentRedaction;
end;

procedure TStartTranscriptionJobRequest.SetContentRedaction(const Value: TContentRedaction);
begin
  if FContentRedaction <> Value then
  begin
    if not KeepContentRedaction then
      FContentRedaction.Free;
    FContentRedaction := Value;
  end;
end;

function TStartTranscriptionJobRequest.GetKeepContentRedaction: Boolean;
begin
  Result := FKeepContentRedaction;
end;

procedure TStartTranscriptionJobRequest.SetKeepContentRedaction(const Value: Boolean);
begin
  FKeepContentRedaction := Value;
end;

function TStartTranscriptionJobRequest.IsSetContentRedaction: Boolean;
begin
  Result := FContentRedaction <> nil;
end;

function TStartTranscriptionJobRequest.GetIdentifyLanguage: Boolean;
begin
  Result := FIdentifyLanguage.ValueOrDefault;
end;

procedure TStartTranscriptionJobRequest.SetIdentifyLanguage(const Value: Boolean);
begin
  FIdentifyLanguage := Value;
end;

function TStartTranscriptionJobRequest.IsSetIdentifyLanguage: Boolean;
begin
  Result := FIdentifyLanguage.HasValue;
end;

function TStartTranscriptionJobRequest.GetJobExecutionSettings: TJobExecutionSettings;
begin
  Result := FJobExecutionSettings;
end;

procedure TStartTranscriptionJobRequest.SetJobExecutionSettings(const Value: TJobExecutionSettings);
begin
  if FJobExecutionSettings <> Value then
  begin
    if not KeepJobExecutionSettings then
      FJobExecutionSettings.Free;
    FJobExecutionSettings := Value;
  end;
end;

function TStartTranscriptionJobRequest.GetKeepJobExecutionSettings: Boolean;
begin
  Result := FKeepJobExecutionSettings;
end;

procedure TStartTranscriptionJobRequest.SetKeepJobExecutionSettings(const Value: Boolean);
begin
  FKeepJobExecutionSettings := Value;
end;

function TStartTranscriptionJobRequest.IsSetJobExecutionSettings: Boolean;
begin
  Result := FJobExecutionSettings <> nil;
end;

function TStartTranscriptionJobRequest.GetKMSEncryptionContext: TDictionary<string, string>;
begin
  Result := FKMSEncryptionContext;
end;

procedure TStartTranscriptionJobRequest.SetKMSEncryptionContext(const Value: TDictionary<string, string>);
begin
  if FKMSEncryptionContext <> Value then
  begin
    if not KeepKMSEncryptionContext then
      FKMSEncryptionContext.Free;
    FKMSEncryptionContext := Value;
  end;
end;

function TStartTranscriptionJobRequest.GetKeepKMSEncryptionContext: Boolean;
begin
  Result := FKeepKMSEncryptionContext;
end;

procedure TStartTranscriptionJobRequest.SetKeepKMSEncryptionContext(const Value: Boolean);
begin
  FKeepKMSEncryptionContext := Value;
end;

function TStartTranscriptionJobRequest.IsSetKMSEncryptionContext: Boolean;
begin
  Result := (FKMSEncryptionContext <> nil) and (FKMSEncryptionContext.Count > 0);
end;

function TStartTranscriptionJobRequest.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TStartTranscriptionJobRequest.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TStartTranscriptionJobRequest.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TStartTranscriptionJobRequest.GetLanguageIdSettings: TObjectDictionary<string, TLanguageIdSettings>;
begin
  Result := FLanguageIdSettings;
end;

procedure TStartTranscriptionJobRequest.SetLanguageIdSettings(const Value: TObjectDictionary<string, TLanguageIdSettings>);
begin
  if FLanguageIdSettings <> Value then
  begin
    if not KeepLanguageIdSettings then
      FLanguageIdSettings.Free;
    FLanguageIdSettings := Value;
  end;
end;

function TStartTranscriptionJobRequest.GetKeepLanguageIdSettings: Boolean;
begin
  Result := FKeepLanguageIdSettings;
end;

procedure TStartTranscriptionJobRequest.SetKeepLanguageIdSettings(const Value: Boolean);
begin
  FKeepLanguageIdSettings := Value;
end;

function TStartTranscriptionJobRequest.IsSetLanguageIdSettings: Boolean;
begin
  Result := (FLanguageIdSettings <> nil) and (FLanguageIdSettings.Count > 0);
end;

function TStartTranscriptionJobRequest.GetLanguageOptions: TList<string>;
begin
  Result := FLanguageOptions;
end;

procedure TStartTranscriptionJobRequest.SetLanguageOptions(const Value: TList<string>);
begin
  if FLanguageOptions <> Value then
  begin
    if not KeepLanguageOptions then
      FLanguageOptions.Free;
    FLanguageOptions := Value;
  end;
end;

function TStartTranscriptionJobRequest.GetKeepLanguageOptions: Boolean;
begin
  Result := FKeepLanguageOptions;
end;

procedure TStartTranscriptionJobRequest.SetKeepLanguageOptions(const Value: Boolean);
begin
  FKeepLanguageOptions := Value;
end;

function TStartTranscriptionJobRequest.IsSetLanguageOptions: Boolean;
begin
  Result := (FLanguageOptions <> nil) and (FLanguageOptions.Count > 0);
end;

function TStartTranscriptionJobRequest.GetMedia: TMedia;
begin
  Result := FMedia;
end;

procedure TStartTranscriptionJobRequest.SetMedia(const Value: TMedia);
begin
  if FMedia <> Value then
  begin
    if not KeepMedia then
      FMedia.Free;
    FMedia := Value;
  end;
end;

function TStartTranscriptionJobRequest.GetKeepMedia: Boolean;
begin
  Result := FKeepMedia;
end;

procedure TStartTranscriptionJobRequest.SetKeepMedia(const Value: Boolean);
begin
  FKeepMedia := Value;
end;

function TStartTranscriptionJobRequest.IsSetMedia: Boolean;
begin
  Result := FMedia <> nil;
end;

function TStartTranscriptionJobRequest.GetMediaFormat: TMediaFormat;
begin
  Result := FMediaFormat.ValueOrDefault;
end;

procedure TStartTranscriptionJobRequest.SetMediaFormat(const Value: TMediaFormat);
begin
  FMediaFormat := Value;
end;

function TStartTranscriptionJobRequest.IsSetMediaFormat: Boolean;
begin
  Result := FMediaFormat.HasValue;
end;

function TStartTranscriptionJobRequest.GetMediaSampleRateHertz: Integer;
begin
  Result := FMediaSampleRateHertz.ValueOrDefault;
end;

procedure TStartTranscriptionJobRequest.SetMediaSampleRateHertz(const Value: Integer);
begin
  FMediaSampleRateHertz := Value;
end;

function TStartTranscriptionJobRequest.IsSetMediaSampleRateHertz: Boolean;
begin
  Result := FMediaSampleRateHertz.HasValue;
end;

function TStartTranscriptionJobRequest.GetModelSettings: TModelSettings;
begin
  Result := FModelSettings;
end;

procedure TStartTranscriptionJobRequest.SetModelSettings(const Value: TModelSettings);
begin
  if FModelSettings <> Value then
  begin
    if not KeepModelSettings then
      FModelSettings.Free;
    FModelSettings := Value;
  end;
end;

function TStartTranscriptionJobRequest.GetKeepModelSettings: Boolean;
begin
  Result := FKeepModelSettings;
end;

procedure TStartTranscriptionJobRequest.SetKeepModelSettings(const Value: Boolean);
begin
  FKeepModelSettings := Value;
end;

function TStartTranscriptionJobRequest.IsSetModelSettings: Boolean;
begin
  Result := FModelSettings <> nil;
end;

function TStartTranscriptionJobRequest.GetOutputBucketName: string;
begin
  Result := FOutputBucketName.ValueOrDefault;
end;

procedure TStartTranscriptionJobRequest.SetOutputBucketName(const Value: string);
begin
  FOutputBucketName := Value;
end;

function TStartTranscriptionJobRequest.IsSetOutputBucketName: Boolean;
begin
  Result := FOutputBucketName.HasValue;
end;

function TStartTranscriptionJobRequest.GetOutputEncryptionKMSKeyId: string;
begin
  Result := FOutputEncryptionKMSKeyId.ValueOrDefault;
end;

procedure TStartTranscriptionJobRequest.SetOutputEncryptionKMSKeyId(const Value: string);
begin
  FOutputEncryptionKMSKeyId := Value;
end;

function TStartTranscriptionJobRequest.IsSetOutputEncryptionKMSKeyId: Boolean;
begin
  Result := FOutputEncryptionKMSKeyId.HasValue;
end;

function TStartTranscriptionJobRequest.GetOutputKey: string;
begin
  Result := FOutputKey.ValueOrDefault;
end;

procedure TStartTranscriptionJobRequest.SetOutputKey(const Value: string);
begin
  FOutputKey := Value;
end;

function TStartTranscriptionJobRequest.IsSetOutputKey: Boolean;
begin
  Result := FOutputKey.HasValue;
end;

function TStartTranscriptionJobRequest.GetSettings: TSettings;
begin
  Result := FSettings;
end;

procedure TStartTranscriptionJobRequest.SetSettings(const Value: TSettings);
begin
  if FSettings <> Value then
  begin
    if not KeepSettings then
      FSettings.Free;
    FSettings := Value;
  end;
end;

function TStartTranscriptionJobRequest.GetKeepSettings: Boolean;
begin
  Result := FKeepSettings;
end;

procedure TStartTranscriptionJobRequest.SetKeepSettings(const Value: Boolean);
begin
  FKeepSettings := Value;
end;

function TStartTranscriptionJobRequest.IsSetSettings: Boolean;
begin
  Result := FSettings <> nil;
end;

function TStartTranscriptionJobRequest.GetSubtitles: TSubtitles;
begin
  Result := FSubtitles;
end;

procedure TStartTranscriptionJobRequest.SetSubtitles(const Value: TSubtitles);
begin
  if FSubtitles <> Value then
  begin
    if not KeepSubtitles then
      FSubtitles.Free;
    FSubtitles := Value;
  end;
end;

function TStartTranscriptionJobRequest.GetKeepSubtitles: Boolean;
begin
  Result := FKeepSubtitles;
end;

procedure TStartTranscriptionJobRequest.SetKeepSubtitles(const Value: Boolean);
begin
  FKeepSubtitles := Value;
end;

function TStartTranscriptionJobRequest.IsSetSubtitles: Boolean;
begin
  Result := FSubtitles <> nil;
end;

function TStartTranscriptionJobRequest.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TStartTranscriptionJobRequest.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TStartTranscriptionJobRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TStartTranscriptionJobRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TStartTranscriptionJobRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

function TStartTranscriptionJobRequest.GetTranscriptionJobName: string;
begin
  Result := FTranscriptionJobName.ValueOrDefault;
end;

procedure TStartTranscriptionJobRequest.SetTranscriptionJobName(const Value: string);
begin
  FTranscriptionJobName := Value;
end;

function TStartTranscriptionJobRequest.IsSetTranscriptionJobName: Boolean;
begin
  Result := FTranscriptionJobName.HasValue;
end;

end.
