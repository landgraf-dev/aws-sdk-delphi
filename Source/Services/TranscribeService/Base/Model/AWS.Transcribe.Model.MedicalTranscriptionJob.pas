unit AWS.Transcribe.Model.MedicalTranscriptionJob;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Transcribe.Enums, 
  AWS.Transcribe.Model.Media, 
  AWS.Transcribe.Model.MedicalTranscriptionSetting, 
  AWS.Transcribe.Model.Tag, 
  AWS.Transcribe.Model.MedicalTranscript;

type
  TMedicalTranscriptionJob = class;
  
  IMedicalTranscriptionJob = interface
    function GetCompletionTime: TDateTime;
    procedure SetCompletionTime(const Value: TDateTime);
    function GetContentIdentificationType: TMedicalContentIdentificationType;
    procedure SetContentIdentificationType(const Value: TMedicalContentIdentificationType);
    function GetCreationTime: TDateTime;
    procedure SetCreationTime(const Value: TDateTime);
    function GetFailureReason: string;
    procedure SetFailureReason(const Value: string);
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
    function GetMedicalTranscriptionJobName: string;
    procedure SetMedicalTranscriptionJobName(const Value: string);
    function GetSettings: TMedicalTranscriptionSetting;
    procedure SetSettings(const Value: TMedicalTranscriptionSetting);
    function GetKeepSettings: Boolean;
    procedure SetKeepSettings(const Value: Boolean);
    function GetSpecialty: TSpecialty;
    procedure SetSpecialty(const Value: TSpecialty);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTranscript: TMedicalTranscript;
    procedure SetTranscript(const Value: TMedicalTranscript);
    function GetKeepTranscript: Boolean;
    procedure SetKeepTranscript(const Value: Boolean);
    function GetTranscriptionJobStatus: TTranscriptionJobStatus;
    procedure SetTranscriptionJobStatus(const Value: TTranscriptionJobStatus);
    function GetType: TType;
    procedure SetType(const Value: TType);
    function Obj: TMedicalTranscriptionJob;
    function IsSetCompletionTime: Boolean;
    function IsSetContentIdentificationType: Boolean;
    function IsSetCreationTime: Boolean;
    function IsSetFailureReason: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetMedia: Boolean;
    function IsSetMediaFormat: Boolean;
    function IsSetMediaSampleRateHertz: Boolean;
    function IsSetMedicalTranscriptionJobName: Boolean;
    function IsSetSettings: Boolean;
    function IsSetSpecialty: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetTags: Boolean;
    function IsSetTranscript: Boolean;
    function IsSetTranscriptionJobStatus: Boolean;
    function IsSetType: Boolean;
    property CompletionTime: TDateTime read GetCompletionTime write SetCompletionTime;
    property ContentIdentificationType: TMedicalContentIdentificationType read GetContentIdentificationType write SetContentIdentificationType;
    property CreationTime: TDateTime read GetCreationTime write SetCreationTime;
    property FailureReason: string read GetFailureReason write SetFailureReason;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property Media: TMedia read GetMedia write SetMedia;
    property KeepMedia: Boolean read GetKeepMedia write SetKeepMedia;
    property MediaFormat: TMediaFormat read GetMediaFormat write SetMediaFormat;
    property MediaSampleRateHertz: Integer read GetMediaSampleRateHertz write SetMediaSampleRateHertz;
    property MedicalTranscriptionJobName: string read GetMedicalTranscriptionJobName write SetMedicalTranscriptionJobName;
    property Settings: TMedicalTranscriptionSetting read GetSettings write SetSettings;
    property KeepSettings: Boolean read GetKeepSettings write SetKeepSettings;
    property Specialty: TSpecialty read GetSpecialty write SetSpecialty;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property Transcript: TMedicalTranscript read GetTranscript write SetTranscript;
    property KeepTranscript: Boolean read GetKeepTranscript write SetKeepTranscript;
    property TranscriptionJobStatus: TTranscriptionJobStatus read GetTranscriptionJobStatus write SetTranscriptionJobStatus;
    property &Type: TType read GetType write SetType;
  end;
  
  TMedicalTranscriptionJob = class
  strict private
    FCompletionTime: Nullable<TDateTime>;
    FContentIdentificationType: Nullable<TMedicalContentIdentificationType>;
    FCreationTime: Nullable<TDateTime>;
    FFailureReason: Nullable<string>;
    FLanguageCode: Nullable<TLanguageCode>;
    FMedia: TMedia;
    FKeepMedia: Boolean;
    FMediaFormat: Nullable<TMediaFormat>;
    FMediaSampleRateHertz: Nullable<Integer>;
    FMedicalTranscriptionJobName: Nullable<string>;
    FSettings: TMedicalTranscriptionSetting;
    FKeepSettings: Boolean;
    FSpecialty: Nullable<TSpecialty>;
    FStartTime: Nullable<TDateTime>;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    FTranscript: TMedicalTranscript;
    FKeepTranscript: Boolean;
    FTranscriptionJobStatus: Nullable<TTranscriptionJobStatus>;
    FType: Nullable<TType>;
    function GetCompletionTime: TDateTime;
    procedure SetCompletionTime(const Value: TDateTime);
    function GetContentIdentificationType: TMedicalContentIdentificationType;
    procedure SetContentIdentificationType(const Value: TMedicalContentIdentificationType);
    function GetCreationTime: TDateTime;
    procedure SetCreationTime(const Value: TDateTime);
    function GetFailureReason: string;
    procedure SetFailureReason(const Value: string);
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
    function GetMedicalTranscriptionJobName: string;
    procedure SetMedicalTranscriptionJobName(const Value: string);
    function GetSettings: TMedicalTranscriptionSetting;
    procedure SetSettings(const Value: TMedicalTranscriptionSetting);
    function GetKeepSettings: Boolean;
    procedure SetKeepSettings(const Value: Boolean);
    function GetSpecialty: TSpecialty;
    procedure SetSpecialty(const Value: TSpecialty);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTranscript: TMedicalTranscript;
    procedure SetTranscript(const Value: TMedicalTranscript);
    function GetKeepTranscript: Boolean;
    procedure SetKeepTranscript(const Value: Boolean);
    function GetTranscriptionJobStatus: TTranscriptionJobStatus;
    procedure SetTranscriptionJobStatus(const Value: TTranscriptionJobStatus);
    function GetType: TType;
    procedure SetType(const Value: TType);
  strict protected
    function Obj: TMedicalTranscriptionJob;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCompletionTime: Boolean;
    function IsSetContentIdentificationType: Boolean;
    function IsSetCreationTime: Boolean;
    function IsSetFailureReason: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetMedia: Boolean;
    function IsSetMediaFormat: Boolean;
    function IsSetMediaSampleRateHertz: Boolean;
    function IsSetMedicalTranscriptionJobName: Boolean;
    function IsSetSettings: Boolean;
    function IsSetSpecialty: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetTags: Boolean;
    function IsSetTranscript: Boolean;
    function IsSetTranscriptionJobStatus: Boolean;
    function IsSetType: Boolean;
    property CompletionTime: TDateTime read GetCompletionTime write SetCompletionTime;
    property ContentIdentificationType: TMedicalContentIdentificationType read GetContentIdentificationType write SetContentIdentificationType;
    property CreationTime: TDateTime read GetCreationTime write SetCreationTime;
    property FailureReason: string read GetFailureReason write SetFailureReason;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property Media: TMedia read GetMedia write SetMedia;
    property KeepMedia: Boolean read GetKeepMedia write SetKeepMedia;
    property MediaFormat: TMediaFormat read GetMediaFormat write SetMediaFormat;
    property MediaSampleRateHertz: Integer read GetMediaSampleRateHertz write SetMediaSampleRateHertz;
    property MedicalTranscriptionJobName: string read GetMedicalTranscriptionJobName write SetMedicalTranscriptionJobName;
    property Settings: TMedicalTranscriptionSetting read GetSettings write SetSettings;
    property KeepSettings: Boolean read GetKeepSettings write SetKeepSettings;
    property Specialty: TSpecialty read GetSpecialty write SetSpecialty;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property Transcript: TMedicalTranscript read GetTranscript write SetTranscript;
    property KeepTranscript: Boolean read GetKeepTranscript write SetKeepTranscript;
    property TranscriptionJobStatus: TTranscriptionJobStatus read GetTranscriptionJobStatus write SetTranscriptionJobStatus;
    property &Type: TType read GetType write SetType;
  end;
  
implementation

{ TMedicalTranscriptionJob }

constructor TMedicalTranscriptionJob.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
end;

destructor TMedicalTranscriptionJob.Destroy;
begin
  Transcript := nil;
  Tags := nil;
  Settings := nil;
  Media := nil;
  inherited;
end;

function TMedicalTranscriptionJob.Obj: TMedicalTranscriptionJob;
begin
  Result := Self;
end;

function TMedicalTranscriptionJob.GetCompletionTime: TDateTime;
begin
  Result := FCompletionTime.ValueOrDefault;
end;

procedure TMedicalTranscriptionJob.SetCompletionTime(const Value: TDateTime);
begin
  FCompletionTime := Value;
end;

function TMedicalTranscriptionJob.IsSetCompletionTime: Boolean;
begin
  Result := FCompletionTime.HasValue;
end;

function TMedicalTranscriptionJob.GetContentIdentificationType: TMedicalContentIdentificationType;
begin
  Result := FContentIdentificationType.ValueOrDefault;
end;

procedure TMedicalTranscriptionJob.SetContentIdentificationType(const Value: TMedicalContentIdentificationType);
begin
  FContentIdentificationType := Value;
end;

function TMedicalTranscriptionJob.IsSetContentIdentificationType: Boolean;
begin
  Result := FContentIdentificationType.HasValue;
end;

function TMedicalTranscriptionJob.GetCreationTime: TDateTime;
begin
  Result := FCreationTime.ValueOrDefault;
end;

procedure TMedicalTranscriptionJob.SetCreationTime(const Value: TDateTime);
begin
  FCreationTime := Value;
end;

function TMedicalTranscriptionJob.IsSetCreationTime: Boolean;
begin
  Result := FCreationTime.HasValue;
end;

function TMedicalTranscriptionJob.GetFailureReason: string;
begin
  Result := FFailureReason.ValueOrDefault;
end;

procedure TMedicalTranscriptionJob.SetFailureReason(const Value: string);
begin
  FFailureReason := Value;
end;

function TMedicalTranscriptionJob.IsSetFailureReason: Boolean;
begin
  Result := FFailureReason.HasValue;
end;

function TMedicalTranscriptionJob.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TMedicalTranscriptionJob.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TMedicalTranscriptionJob.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TMedicalTranscriptionJob.GetMedia: TMedia;
begin
  Result := FMedia;
end;

procedure TMedicalTranscriptionJob.SetMedia(const Value: TMedia);
begin
  if FMedia <> Value then
  begin
    if not KeepMedia then
      FMedia.Free;
    FMedia := Value;
  end;
end;

function TMedicalTranscriptionJob.GetKeepMedia: Boolean;
begin
  Result := FKeepMedia;
end;

procedure TMedicalTranscriptionJob.SetKeepMedia(const Value: Boolean);
begin
  FKeepMedia := Value;
end;

function TMedicalTranscriptionJob.IsSetMedia: Boolean;
begin
  Result := FMedia <> nil;
end;

function TMedicalTranscriptionJob.GetMediaFormat: TMediaFormat;
begin
  Result := FMediaFormat.ValueOrDefault;
end;

procedure TMedicalTranscriptionJob.SetMediaFormat(const Value: TMediaFormat);
begin
  FMediaFormat := Value;
end;

function TMedicalTranscriptionJob.IsSetMediaFormat: Boolean;
begin
  Result := FMediaFormat.HasValue;
end;

function TMedicalTranscriptionJob.GetMediaSampleRateHertz: Integer;
begin
  Result := FMediaSampleRateHertz.ValueOrDefault;
end;

procedure TMedicalTranscriptionJob.SetMediaSampleRateHertz(const Value: Integer);
begin
  FMediaSampleRateHertz := Value;
end;

function TMedicalTranscriptionJob.IsSetMediaSampleRateHertz: Boolean;
begin
  Result := FMediaSampleRateHertz.HasValue;
end;

function TMedicalTranscriptionJob.GetMedicalTranscriptionJobName: string;
begin
  Result := FMedicalTranscriptionJobName.ValueOrDefault;
end;

procedure TMedicalTranscriptionJob.SetMedicalTranscriptionJobName(const Value: string);
begin
  FMedicalTranscriptionJobName := Value;
end;

function TMedicalTranscriptionJob.IsSetMedicalTranscriptionJobName: Boolean;
begin
  Result := FMedicalTranscriptionJobName.HasValue;
end;

function TMedicalTranscriptionJob.GetSettings: TMedicalTranscriptionSetting;
begin
  Result := FSettings;
end;

procedure TMedicalTranscriptionJob.SetSettings(const Value: TMedicalTranscriptionSetting);
begin
  if FSettings <> Value then
  begin
    if not KeepSettings then
      FSettings.Free;
    FSettings := Value;
  end;
end;

function TMedicalTranscriptionJob.GetKeepSettings: Boolean;
begin
  Result := FKeepSettings;
end;

procedure TMedicalTranscriptionJob.SetKeepSettings(const Value: Boolean);
begin
  FKeepSettings := Value;
end;

function TMedicalTranscriptionJob.IsSetSettings: Boolean;
begin
  Result := FSettings <> nil;
end;

function TMedicalTranscriptionJob.GetSpecialty: TSpecialty;
begin
  Result := FSpecialty.ValueOrDefault;
end;

procedure TMedicalTranscriptionJob.SetSpecialty(const Value: TSpecialty);
begin
  FSpecialty := Value;
end;

function TMedicalTranscriptionJob.IsSetSpecialty: Boolean;
begin
  Result := FSpecialty.HasValue;
end;

function TMedicalTranscriptionJob.GetStartTime: TDateTime;
begin
  Result := FStartTime.ValueOrDefault;
end;

procedure TMedicalTranscriptionJob.SetStartTime(const Value: TDateTime);
begin
  FStartTime := Value;
end;

function TMedicalTranscriptionJob.IsSetStartTime: Boolean;
begin
  Result := FStartTime.HasValue;
end;

function TMedicalTranscriptionJob.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TMedicalTranscriptionJob.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TMedicalTranscriptionJob.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TMedicalTranscriptionJob.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TMedicalTranscriptionJob.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

function TMedicalTranscriptionJob.GetTranscript: TMedicalTranscript;
begin
  Result := FTranscript;
end;

procedure TMedicalTranscriptionJob.SetTranscript(const Value: TMedicalTranscript);
begin
  if FTranscript <> Value then
  begin
    if not KeepTranscript then
      FTranscript.Free;
    FTranscript := Value;
  end;
end;

function TMedicalTranscriptionJob.GetKeepTranscript: Boolean;
begin
  Result := FKeepTranscript;
end;

procedure TMedicalTranscriptionJob.SetKeepTranscript(const Value: Boolean);
begin
  FKeepTranscript := Value;
end;

function TMedicalTranscriptionJob.IsSetTranscript: Boolean;
begin
  Result := FTranscript <> nil;
end;

function TMedicalTranscriptionJob.GetTranscriptionJobStatus: TTranscriptionJobStatus;
begin
  Result := FTranscriptionJobStatus.ValueOrDefault;
end;

procedure TMedicalTranscriptionJob.SetTranscriptionJobStatus(const Value: TTranscriptionJobStatus);
begin
  FTranscriptionJobStatus := Value;
end;

function TMedicalTranscriptionJob.IsSetTranscriptionJobStatus: Boolean;
begin
  Result := FTranscriptionJobStatus.HasValue;
end;

function TMedicalTranscriptionJob.GetType: TType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TMedicalTranscriptionJob.SetType(const Value: TType);
begin
  FType := Value;
end;

function TMedicalTranscriptionJob.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

end.
