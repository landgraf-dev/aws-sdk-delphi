unit AWS.Transcribe.Model.StartMedicalTranscriptionJobRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.Request, 
  AWS.Transcribe.Enums, 
  AWS.Transcribe.Model.Media, 
  AWS.Transcribe.Model.MedicalTranscriptionSetting;

type
  TStartMedicalTranscriptionJobRequest = class;
  
  IStartMedicalTranscriptionJobRequest = interface
    function GetContentIdentificationType: TMedicalContentIdentificationType;
    procedure SetContentIdentificationType(const Value: TMedicalContentIdentificationType);
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
    function GetOutputBucketName: string;
    procedure SetOutputBucketName(const Value: string);
    function GetOutputEncryptionKMSKeyId: string;
    procedure SetOutputEncryptionKMSKeyId(const Value: string);
    function GetOutputKey: string;
    procedure SetOutputKey(const Value: string);
    function GetSettings: TMedicalTranscriptionSetting;
    procedure SetSettings(const Value: TMedicalTranscriptionSetting);
    function GetKeepSettings: Boolean;
    procedure SetKeepSettings(const Value: Boolean);
    function GetSpecialty: TSpecialty;
    procedure SetSpecialty(const Value: TSpecialty);
    function GetType: TType;
    procedure SetType(const Value: TType);
    function Obj: TStartMedicalTranscriptionJobRequest;
    function IsSetContentIdentificationType: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetMedia: Boolean;
    function IsSetMediaFormat: Boolean;
    function IsSetMediaSampleRateHertz: Boolean;
    function IsSetMedicalTranscriptionJobName: Boolean;
    function IsSetOutputBucketName: Boolean;
    function IsSetOutputEncryptionKMSKeyId: Boolean;
    function IsSetOutputKey: Boolean;
    function IsSetSettings: Boolean;
    function IsSetSpecialty: Boolean;
    function IsSetType: Boolean;
    property ContentIdentificationType: TMedicalContentIdentificationType read GetContentIdentificationType write SetContentIdentificationType;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property Media: TMedia read GetMedia write SetMedia;
    property KeepMedia: Boolean read GetKeepMedia write SetKeepMedia;
    property MediaFormat: TMediaFormat read GetMediaFormat write SetMediaFormat;
    property MediaSampleRateHertz: Integer read GetMediaSampleRateHertz write SetMediaSampleRateHertz;
    property MedicalTranscriptionJobName: string read GetMedicalTranscriptionJobName write SetMedicalTranscriptionJobName;
    property OutputBucketName: string read GetOutputBucketName write SetOutputBucketName;
    property OutputEncryptionKMSKeyId: string read GetOutputEncryptionKMSKeyId write SetOutputEncryptionKMSKeyId;
    property OutputKey: string read GetOutputKey write SetOutputKey;
    property Settings: TMedicalTranscriptionSetting read GetSettings write SetSettings;
    property KeepSettings: Boolean read GetKeepSettings write SetKeepSettings;
    property Specialty: TSpecialty read GetSpecialty write SetSpecialty;
    property &Type: TType read GetType write SetType;
  end;
  
  TStartMedicalTranscriptionJobRequest = class(TAmazonTranscribeServiceRequest, IStartMedicalTranscriptionJobRequest)
  strict private
    FContentIdentificationType: Nullable<TMedicalContentIdentificationType>;
    FLanguageCode: Nullable<TLanguageCode>;
    FMedia: TMedia;
    FKeepMedia: Boolean;
    FMediaFormat: Nullable<TMediaFormat>;
    FMediaSampleRateHertz: Nullable<Integer>;
    FMedicalTranscriptionJobName: Nullable<string>;
    FOutputBucketName: Nullable<string>;
    FOutputEncryptionKMSKeyId: Nullable<string>;
    FOutputKey: Nullable<string>;
    FSettings: TMedicalTranscriptionSetting;
    FKeepSettings: Boolean;
    FSpecialty: Nullable<TSpecialty>;
    FType: Nullable<TType>;
    function GetContentIdentificationType: TMedicalContentIdentificationType;
    procedure SetContentIdentificationType(const Value: TMedicalContentIdentificationType);
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
    function GetOutputBucketName: string;
    procedure SetOutputBucketName(const Value: string);
    function GetOutputEncryptionKMSKeyId: string;
    procedure SetOutputEncryptionKMSKeyId(const Value: string);
    function GetOutputKey: string;
    procedure SetOutputKey(const Value: string);
    function GetSettings: TMedicalTranscriptionSetting;
    procedure SetSettings(const Value: TMedicalTranscriptionSetting);
    function GetKeepSettings: Boolean;
    procedure SetKeepSettings(const Value: Boolean);
    function GetSpecialty: TSpecialty;
    procedure SetSpecialty(const Value: TSpecialty);
    function GetType: TType;
    procedure SetType(const Value: TType);
  strict protected
    function Obj: TStartMedicalTranscriptionJobRequest;
  public
    destructor Destroy; override;
    function IsSetContentIdentificationType: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetMedia: Boolean;
    function IsSetMediaFormat: Boolean;
    function IsSetMediaSampleRateHertz: Boolean;
    function IsSetMedicalTranscriptionJobName: Boolean;
    function IsSetOutputBucketName: Boolean;
    function IsSetOutputEncryptionKMSKeyId: Boolean;
    function IsSetOutputKey: Boolean;
    function IsSetSettings: Boolean;
    function IsSetSpecialty: Boolean;
    function IsSetType: Boolean;
    property ContentIdentificationType: TMedicalContentIdentificationType read GetContentIdentificationType write SetContentIdentificationType;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property Media: TMedia read GetMedia write SetMedia;
    property KeepMedia: Boolean read GetKeepMedia write SetKeepMedia;
    property MediaFormat: TMediaFormat read GetMediaFormat write SetMediaFormat;
    property MediaSampleRateHertz: Integer read GetMediaSampleRateHertz write SetMediaSampleRateHertz;
    property MedicalTranscriptionJobName: string read GetMedicalTranscriptionJobName write SetMedicalTranscriptionJobName;
    property OutputBucketName: string read GetOutputBucketName write SetOutputBucketName;
    property OutputEncryptionKMSKeyId: string read GetOutputEncryptionKMSKeyId write SetOutputEncryptionKMSKeyId;
    property OutputKey: string read GetOutputKey write SetOutputKey;
    property Settings: TMedicalTranscriptionSetting read GetSettings write SetSettings;
    property KeepSettings: Boolean read GetKeepSettings write SetKeepSettings;
    property Specialty: TSpecialty read GetSpecialty write SetSpecialty;
    property &Type: TType read GetType write SetType;
  end;
  
implementation

{ TStartMedicalTranscriptionJobRequest }

destructor TStartMedicalTranscriptionJobRequest.Destroy;
begin
  Settings := nil;
  Media := nil;
  inherited;
end;

function TStartMedicalTranscriptionJobRequest.Obj: TStartMedicalTranscriptionJobRequest;
begin
  Result := Self;
end;

function TStartMedicalTranscriptionJobRequest.GetContentIdentificationType: TMedicalContentIdentificationType;
begin
  Result := FContentIdentificationType.ValueOrDefault;
end;

procedure TStartMedicalTranscriptionJobRequest.SetContentIdentificationType(const Value: TMedicalContentIdentificationType);
begin
  FContentIdentificationType := Value;
end;

function TStartMedicalTranscriptionJobRequest.IsSetContentIdentificationType: Boolean;
begin
  Result := FContentIdentificationType.HasValue;
end;

function TStartMedicalTranscriptionJobRequest.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TStartMedicalTranscriptionJobRequest.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TStartMedicalTranscriptionJobRequest.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TStartMedicalTranscriptionJobRequest.GetMedia: TMedia;
begin
  Result := FMedia;
end;

procedure TStartMedicalTranscriptionJobRequest.SetMedia(const Value: TMedia);
begin
  if FMedia <> Value then
  begin
    if not KeepMedia then
      FMedia.Free;
    FMedia := Value;
  end;
end;

function TStartMedicalTranscriptionJobRequest.GetKeepMedia: Boolean;
begin
  Result := FKeepMedia;
end;

procedure TStartMedicalTranscriptionJobRequest.SetKeepMedia(const Value: Boolean);
begin
  FKeepMedia := Value;
end;

function TStartMedicalTranscriptionJobRequest.IsSetMedia: Boolean;
begin
  Result := FMedia <> nil;
end;

function TStartMedicalTranscriptionJobRequest.GetMediaFormat: TMediaFormat;
begin
  Result := FMediaFormat.ValueOrDefault;
end;

procedure TStartMedicalTranscriptionJobRequest.SetMediaFormat(const Value: TMediaFormat);
begin
  FMediaFormat := Value;
end;

function TStartMedicalTranscriptionJobRequest.IsSetMediaFormat: Boolean;
begin
  Result := FMediaFormat.HasValue;
end;

function TStartMedicalTranscriptionJobRequest.GetMediaSampleRateHertz: Integer;
begin
  Result := FMediaSampleRateHertz.ValueOrDefault;
end;

procedure TStartMedicalTranscriptionJobRequest.SetMediaSampleRateHertz(const Value: Integer);
begin
  FMediaSampleRateHertz := Value;
end;

function TStartMedicalTranscriptionJobRequest.IsSetMediaSampleRateHertz: Boolean;
begin
  Result := FMediaSampleRateHertz.HasValue;
end;

function TStartMedicalTranscriptionJobRequest.GetMedicalTranscriptionJobName: string;
begin
  Result := FMedicalTranscriptionJobName.ValueOrDefault;
end;

procedure TStartMedicalTranscriptionJobRequest.SetMedicalTranscriptionJobName(const Value: string);
begin
  FMedicalTranscriptionJobName := Value;
end;

function TStartMedicalTranscriptionJobRequest.IsSetMedicalTranscriptionJobName: Boolean;
begin
  Result := FMedicalTranscriptionJobName.HasValue;
end;

function TStartMedicalTranscriptionJobRequest.GetOutputBucketName: string;
begin
  Result := FOutputBucketName.ValueOrDefault;
end;

procedure TStartMedicalTranscriptionJobRequest.SetOutputBucketName(const Value: string);
begin
  FOutputBucketName := Value;
end;

function TStartMedicalTranscriptionJobRequest.IsSetOutputBucketName: Boolean;
begin
  Result := FOutputBucketName.HasValue;
end;

function TStartMedicalTranscriptionJobRequest.GetOutputEncryptionKMSKeyId: string;
begin
  Result := FOutputEncryptionKMSKeyId.ValueOrDefault;
end;

procedure TStartMedicalTranscriptionJobRequest.SetOutputEncryptionKMSKeyId(const Value: string);
begin
  FOutputEncryptionKMSKeyId := Value;
end;

function TStartMedicalTranscriptionJobRequest.IsSetOutputEncryptionKMSKeyId: Boolean;
begin
  Result := FOutputEncryptionKMSKeyId.HasValue;
end;

function TStartMedicalTranscriptionJobRequest.GetOutputKey: string;
begin
  Result := FOutputKey.ValueOrDefault;
end;

procedure TStartMedicalTranscriptionJobRequest.SetOutputKey(const Value: string);
begin
  FOutputKey := Value;
end;

function TStartMedicalTranscriptionJobRequest.IsSetOutputKey: Boolean;
begin
  Result := FOutputKey.HasValue;
end;

function TStartMedicalTranscriptionJobRequest.GetSettings: TMedicalTranscriptionSetting;
begin
  Result := FSettings;
end;

procedure TStartMedicalTranscriptionJobRequest.SetSettings(const Value: TMedicalTranscriptionSetting);
begin
  if FSettings <> Value then
  begin
    if not KeepSettings then
      FSettings.Free;
    FSettings := Value;
  end;
end;

function TStartMedicalTranscriptionJobRequest.GetKeepSettings: Boolean;
begin
  Result := FKeepSettings;
end;

procedure TStartMedicalTranscriptionJobRequest.SetKeepSettings(const Value: Boolean);
begin
  FKeepSettings := Value;
end;

function TStartMedicalTranscriptionJobRequest.IsSetSettings: Boolean;
begin
  Result := FSettings <> nil;
end;

function TStartMedicalTranscriptionJobRequest.GetSpecialty: TSpecialty;
begin
  Result := FSpecialty.ValueOrDefault;
end;

procedure TStartMedicalTranscriptionJobRequest.SetSpecialty(const Value: TSpecialty);
begin
  FSpecialty := Value;
end;

function TStartMedicalTranscriptionJobRequest.IsSetSpecialty: Boolean;
begin
  Result := FSpecialty.HasValue;
end;

function TStartMedicalTranscriptionJobRequest.GetType: TType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TStartMedicalTranscriptionJobRequest.SetType(const Value: TType);
begin
  FType := Value;
end;

function TStartMedicalTranscriptionJobRequest.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

end.
