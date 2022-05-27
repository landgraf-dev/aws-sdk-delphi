unit AWS.Transcribe.Model.CallAnalyticsJob;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Transcribe.Enums, 
  AWS.Transcribe.Model.ChannelDefinition, 
  AWS.Transcribe.Model.Media, 
  AWS.Transcribe.Model.CallAnalyticsJobSettings, 
  AWS.Transcribe.Model.Transcript;

type
  TCallAnalyticsJob = class;
  
  ICallAnalyticsJob = interface
    function GetCallAnalyticsJobName: string;
    procedure SetCallAnalyticsJobName(const Value: string);
    function GetCallAnalyticsJobStatus: TCallAnalyticsJobStatus;
    procedure SetCallAnalyticsJobStatus(const Value: TCallAnalyticsJobStatus);
    function GetChannelDefinitions: TObjectList<TChannelDefinition>;
    procedure SetChannelDefinitions(const Value: TObjectList<TChannelDefinition>);
    function GetKeepChannelDefinitions: Boolean;
    procedure SetKeepChannelDefinitions(const Value: Boolean);
    function GetCompletionTime: TDateTime;
    procedure SetCompletionTime(const Value: TDateTime);
    function GetCreationTime: TDateTime;
    procedure SetCreationTime(const Value: TDateTime);
    function GetDataAccessRoleArn: string;
    procedure SetDataAccessRoleArn(const Value: string);
    function GetFailureReason: string;
    procedure SetFailureReason(const Value: string);
    function GetIdentifiedLanguageScore: Double;
    procedure SetIdentifiedLanguageScore(const Value: Double);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetMedia: TMedia;
    procedure SetMedia(const Value: TMedia);
    function GetKeepMedia: Boolean;
    procedure SetKeepMedia(const Value: Boolean);
    function GetMediaFormat: TMediaFormat;
    procedure SetMediaFormat(const Value: TMediaFormat);
    function GetMediaSampleRateHertz: Integer;
    procedure SetMediaSampleRateHertz(const Value: Integer);
    function GetSettings: TCallAnalyticsJobSettings;
    procedure SetSettings(const Value: TCallAnalyticsJobSettings);
    function GetKeepSettings: Boolean;
    procedure SetKeepSettings(const Value: Boolean);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
    function GetTranscript: TTranscript;
    procedure SetTranscript(const Value: TTranscript);
    function GetKeepTranscript: Boolean;
    procedure SetKeepTranscript(const Value: Boolean);
    function Obj: TCallAnalyticsJob;
    function IsSetCallAnalyticsJobName: Boolean;
    function IsSetCallAnalyticsJobStatus: Boolean;
    function IsSetChannelDefinitions: Boolean;
    function IsSetCompletionTime: Boolean;
    function IsSetCreationTime: Boolean;
    function IsSetDataAccessRoleArn: Boolean;
    function IsSetFailureReason: Boolean;
    function IsSetIdentifiedLanguageScore: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetMedia: Boolean;
    function IsSetMediaFormat: Boolean;
    function IsSetMediaSampleRateHertz: Boolean;
    function IsSetSettings: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetTranscript: Boolean;
    property CallAnalyticsJobName: string read GetCallAnalyticsJobName write SetCallAnalyticsJobName;
    property CallAnalyticsJobStatus: TCallAnalyticsJobStatus read GetCallAnalyticsJobStatus write SetCallAnalyticsJobStatus;
    property ChannelDefinitions: TObjectList<TChannelDefinition> read GetChannelDefinitions write SetChannelDefinitions;
    property KeepChannelDefinitions: Boolean read GetKeepChannelDefinitions write SetKeepChannelDefinitions;
    property CompletionTime: TDateTime read GetCompletionTime write SetCompletionTime;
    property CreationTime: TDateTime read GetCreationTime write SetCreationTime;
    property DataAccessRoleArn: string read GetDataAccessRoleArn write SetDataAccessRoleArn;
    property FailureReason: string read GetFailureReason write SetFailureReason;
    property IdentifiedLanguageScore: Double read GetIdentifiedLanguageScore write SetIdentifiedLanguageScore;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property Media: TMedia read GetMedia write SetMedia;
    property KeepMedia: Boolean read GetKeepMedia write SetKeepMedia;
    property MediaFormat: TMediaFormat read GetMediaFormat write SetMediaFormat;
    property MediaSampleRateHertz: Integer read GetMediaSampleRateHertz write SetMediaSampleRateHertz;
    property Settings: TCallAnalyticsJobSettings read GetSettings write SetSettings;
    property KeepSettings: Boolean read GetKeepSettings write SetKeepSettings;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property Transcript: TTranscript read GetTranscript write SetTranscript;
    property KeepTranscript: Boolean read GetKeepTranscript write SetKeepTranscript;
  end;
  
  TCallAnalyticsJob = class
  strict private
    FCallAnalyticsJobName: Nullable<string>;
    FCallAnalyticsJobStatus: Nullable<TCallAnalyticsJobStatus>;
    FChannelDefinitions: TObjectList<TChannelDefinition>;
    FKeepChannelDefinitions: Boolean;
    FCompletionTime: Nullable<TDateTime>;
    FCreationTime: Nullable<TDateTime>;
    FDataAccessRoleArn: Nullable<string>;
    FFailureReason: Nullable<string>;
    FIdentifiedLanguageScore: Nullable<Double>;
    FLanguageCode: Nullable<TLanguageCode>;
    FMedia: TMedia;
    FKeepMedia: Boolean;
    FMediaFormat: Nullable<TMediaFormat>;
    FMediaSampleRateHertz: Nullable<Integer>;
    FSettings: TCallAnalyticsJobSettings;
    FKeepSettings: Boolean;
    FStartTime: Nullable<TDateTime>;
    FTranscript: TTranscript;
    FKeepTranscript: Boolean;
    function GetCallAnalyticsJobName: string;
    procedure SetCallAnalyticsJobName(const Value: string);
    function GetCallAnalyticsJobStatus: TCallAnalyticsJobStatus;
    procedure SetCallAnalyticsJobStatus(const Value: TCallAnalyticsJobStatus);
    function GetChannelDefinitions: TObjectList<TChannelDefinition>;
    procedure SetChannelDefinitions(const Value: TObjectList<TChannelDefinition>);
    function GetKeepChannelDefinitions: Boolean;
    procedure SetKeepChannelDefinitions(const Value: Boolean);
    function GetCompletionTime: TDateTime;
    procedure SetCompletionTime(const Value: TDateTime);
    function GetCreationTime: TDateTime;
    procedure SetCreationTime(const Value: TDateTime);
    function GetDataAccessRoleArn: string;
    procedure SetDataAccessRoleArn(const Value: string);
    function GetFailureReason: string;
    procedure SetFailureReason(const Value: string);
    function GetIdentifiedLanguageScore: Double;
    procedure SetIdentifiedLanguageScore(const Value: Double);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetMedia: TMedia;
    procedure SetMedia(const Value: TMedia);
    function GetKeepMedia: Boolean;
    procedure SetKeepMedia(const Value: Boolean);
    function GetMediaFormat: TMediaFormat;
    procedure SetMediaFormat(const Value: TMediaFormat);
    function GetMediaSampleRateHertz: Integer;
    procedure SetMediaSampleRateHertz(const Value: Integer);
    function GetSettings: TCallAnalyticsJobSettings;
    procedure SetSettings(const Value: TCallAnalyticsJobSettings);
    function GetKeepSettings: Boolean;
    procedure SetKeepSettings(const Value: Boolean);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
    function GetTranscript: TTranscript;
    procedure SetTranscript(const Value: TTranscript);
    function GetKeepTranscript: Boolean;
    procedure SetKeepTranscript(const Value: Boolean);
  strict protected
    function Obj: TCallAnalyticsJob;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCallAnalyticsJobName: Boolean;
    function IsSetCallAnalyticsJobStatus: Boolean;
    function IsSetChannelDefinitions: Boolean;
    function IsSetCompletionTime: Boolean;
    function IsSetCreationTime: Boolean;
    function IsSetDataAccessRoleArn: Boolean;
    function IsSetFailureReason: Boolean;
    function IsSetIdentifiedLanguageScore: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetMedia: Boolean;
    function IsSetMediaFormat: Boolean;
    function IsSetMediaSampleRateHertz: Boolean;
    function IsSetSettings: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetTranscript: Boolean;
    property CallAnalyticsJobName: string read GetCallAnalyticsJobName write SetCallAnalyticsJobName;
    property CallAnalyticsJobStatus: TCallAnalyticsJobStatus read GetCallAnalyticsJobStatus write SetCallAnalyticsJobStatus;
    property ChannelDefinitions: TObjectList<TChannelDefinition> read GetChannelDefinitions write SetChannelDefinitions;
    property KeepChannelDefinitions: Boolean read GetKeepChannelDefinitions write SetKeepChannelDefinitions;
    property CompletionTime: TDateTime read GetCompletionTime write SetCompletionTime;
    property CreationTime: TDateTime read GetCreationTime write SetCreationTime;
    property DataAccessRoleArn: string read GetDataAccessRoleArn write SetDataAccessRoleArn;
    property FailureReason: string read GetFailureReason write SetFailureReason;
    property IdentifiedLanguageScore: Double read GetIdentifiedLanguageScore write SetIdentifiedLanguageScore;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property Media: TMedia read GetMedia write SetMedia;
    property KeepMedia: Boolean read GetKeepMedia write SetKeepMedia;
    property MediaFormat: TMediaFormat read GetMediaFormat write SetMediaFormat;
    property MediaSampleRateHertz: Integer read GetMediaSampleRateHertz write SetMediaSampleRateHertz;
    property Settings: TCallAnalyticsJobSettings read GetSettings write SetSettings;
    property KeepSettings: Boolean read GetKeepSettings write SetKeepSettings;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property Transcript: TTranscript read GetTranscript write SetTranscript;
    property KeepTranscript: Boolean read GetKeepTranscript write SetKeepTranscript;
  end;
  
implementation

{ TCallAnalyticsJob }

constructor TCallAnalyticsJob.Create;
begin
  inherited;
  FChannelDefinitions := TObjectList<TChannelDefinition>.Create;
end;

destructor TCallAnalyticsJob.Destroy;
begin
  Transcript := nil;
  Settings := nil;
  Media := nil;
  ChannelDefinitions := nil;
  inherited;
end;

function TCallAnalyticsJob.Obj: TCallAnalyticsJob;
begin
  Result := Self;
end;

function TCallAnalyticsJob.GetCallAnalyticsJobName: string;
begin
  Result := FCallAnalyticsJobName.ValueOrDefault;
end;

procedure TCallAnalyticsJob.SetCallAnalyticsJobName(const Value: string);
begin
  FCallAnalyticsJobName := Value;
end;

function TCallAnalyticsJob.IsSetCallAnalyticsJobName: Boolean;
begin
  Result := FCallAnalyticsJobName.HasValue;
end;

function TCallAnalyticsJob.GetCallAnalyticsJobStatus: TCallAnalyticsJobStatus;
begin
  Result := FCallAnalyticsJobStatus.ValueOrDefault;
end;

procedure TCallAnalyticsJob.SetCallAnalyticsJobStatus(const Value: TCallAnalyticsJobStatus);
begin
  FCallAnalyticsJobStatus := Value;
end;

function TCallAnalyticsJob.IsSetCallAnalyticsJobStatus: Boolean;
begin
  Result := FCallAnalyticsJobStatus.HasValue;
end;

function TCallAnalyticsJob.GetChannelDefinitions: TObjectList<TChannelDefinition>;
begin
  Result := FChannelDefinitions;
end;

procedure TCallAnalyticsJob.SetChannelDefinitions(const Value: TObjectList<TChannelDefinition>);
begin
  if FChannelDefinitions <> Value then
  begin
    if not KeepChannelDefinitions then
      FChannelDefinitions.Free;
    FChannelDefinitions := Value;
  end;
end;

function TCallAnalyticsJob.GetKeepChannelDefinitions: Boolean;
begin
  Result := FKeepChannelDefinitions;
end;

procedure TCallAnalyticsJob.SetKeepChannelDefinitions(const Value: Boolean);
begin
  FKeepChannelDefinitions := Value;
end;

function TCallAnalyticsJob.IsSetChannelDefinitions: Boolean;
begin
  Result := (FChannelDefinitions <> nil) and (FChannelDefinitions.Count > 0);
end;

function TCallAnalyticsJob.GetCompletionTime: TDateTime;
begin
  Result := FCompletionTime.ValueOrDefault;
end;

procedure TCallAnalyticsJob.SetCompletionTime(const Value: TDateTime);
begin
  FCompletionTime := Value;
end;

function TCallAnalyticsJob.IsSetCompletionTime: Boolean;
begin
  Result := FCompletionTime.HasValue;
end;

function TCallAnalyticsJob.GetCreationTime: TDateTime;
begin
  Result := FCreationTime.ValueOrDefault;
end;

procedure TCallAnalyticsJob.SetCreationTime(const Value: TDateTime);
begin
  FCreationTime := Value;
end;

function TCallAnalyticsJob.IsSetCreationTime: Boolean;
begin
  Result := FCreationTime.HasValue;
end;

function TCallAnalyticsJob.GetDataAccessRoleArn: string;
begin
  Result := FDataAccessRoleArn.ValueOrDefault;
end;

procedure TCallAnalyticsJob.SetDataAccessRoleArn(const Value: string);
begin
  FDataAccessRoleArn := Value;
end;

function TCallAnalyticsJob.IsSetDataAccessRoleArn: Boolean;
begin
  Result := FDataAccessRoleArn.HasValue;
end;

function TCallAnalyticsJob.GetFailureReason: string;
begin
  Result := FFailureReason.ValueOrDefault;
end;

procedure TCallAnalyticsJob.SetFailureReason(const Value: string);
begin
  FFailureReason := Value;
end;

function TCallAnalyticsJob.IsSetFailureReason: Boolean;
begin
  Result := FFailureReason.HasValue;
end;

function TCallAnalyticsJob.GetIdentifiedLanguageScore: Double;
begin
  Result := FIdentifiedLanguageScore.ValueOrDefault;
end;

procedure TCallAnalyticsJob.SetIdentifiedLanguageScore(const Value: Double);
begin
  FIdentifiedLanguageScore := Value;
end;

function TCallAnalyticsJob.IsSetIdentifiedLanguageScore: Boolean;
begin
  Result := FIdentifiedLanguageScore.HasValue;
end;

function TCallAnalyticsJob.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TCallAnalyticsJob.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TCallAnalyticsJob.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TCallAnalyticsJob.GetMedia: TMedia;
begin
  Result := FMedia;
end;

procedure TCallAnalyticsJob.SetMedia(const Value: TMedia);
begin
  if FMedia <> Value then
  begin
    if not KeepMedia then
      FMedia.Free;
    FMedia := Value;
  end;
end;

function TCallAnalyticsJob.GetKeepMedia: Boolean;
begin
  Result := FKeepMedia;
end;

procedure TCallAnalyticsJob.SetKeepMedia(const Value: Boolean);
begin
  FKeepMedia := Value;
end;

function TCallAnalyticsJob.IsSetMedia: Boolean;
begin
  Result := FMedia <> nil;
end;

function TCallAnalyticsJob.GetMediaFormat: TMediaFormat;
begin
  Result := FMediaFormat.ValueOrDefault;
end;

procedure TCallAnalyticsJob.SetMediaFormat(const Value: TMediaFormat);
begin
  FMediaFormat := Value;
end;

function TCallAnalyticsJob.IsSetMediaFormat: Boolean;
begin
  Result := FMediaFormat.HasValue;
end;

function TCallAnalyticsJob.GetMediaSampleRateHertz: Integer;
begin
  Result := FMediaSampleRateHertz.ValueOrDefault;
end;

procedure TCallAnalyticsJob.SetMediaSampleRateHertz(const Value: Integer);
begin
  FMediaSampleRateHertz := Value;
end;

function TCallAnalyticsJob.IsSetMediaSampleRateHertz: Boolean;
begin
  Result := FMediaSampleRateHertz.HasValue;
end;

function TCallAnalyticsJob.GetSettings: TCallAnalyticsJobSettings;
begin
  Result := FSettings;
end;

procedure TCallAnalyticsJob.SetSettings(const Value: TCallAnalyticsJobSettings);
begin
  if FSettings <> Value then
  begin
    if not KeepSettings then
      FSettings.Free;
    FSettings := Value;
  end;
end;

function TCallAnalyticsJob.GetKeepSettings: Boolean;
begin
  Result := FKeepSettings;
end;

procedure TCallAnalyticsJob.SetKeepSettings(const Value: Boolean);
begin
  FKeepSettings := Value;
end;

function TCallAnalyticsJob.IsSetSettings: Boolean;
begin
  Result := FSettings <> nil;
end;

function TCallAnalyticsJob.GetStartTime: TDateTime;
begin
  Result := FStartTime.ValueOrDefault;
end;

procedure TCallAnalyticsJob.SetStartTime(const Value: TDateTime);
begin
  FStartTime := Value;
end;

function TCallAnalyticsJob.IsSetStartTime: Boolean;
begin
  Result := FStartTime.HasValue;
end;

function TCallAnalyticsJob.GetTranscript: TTranscript;
begin
  Result := FTranscript;
end;

procedure TCallAnalyticsJob.SetTranscript(const Value: TTranscript);
begin
  if FTranscript <> Value then
  begin
    if not KeepTranscript then
      FTranscript.Free;
    FTranscript := Value;
  end;
end;

function TCallAnalyticsJob.GetKeepTranscript: Boolean;
begin
  Result := FKeepTranscript;
end;

procedure TCallAnalyticsJob.SetKeepTranscript(const Value: Boolean);
begin
  FKeepTranscript := Value;
end;

function TCallAnalyticsJob.IsSetTranscript: Boolean;
begin
  Result := FTranscript <> nil;
end;

end.
