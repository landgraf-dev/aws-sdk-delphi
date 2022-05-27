unit AWS.Transcribe.Enums;

interface

type
  TBaseModelName = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function NarrowBand: TBaseModelName; static;
    class function WideBand: TBaseModelName; static;
    class operator Equal(a: TBaseModelName; b: TBaseModelName): Boolean;
    class operator NotEqual(a: TBaseModelName; b: TBaseModelName): Boolean;
    class operator Implicit(a: string): TBaseModelName;
    property Value: string read FValue;
  end;
  
  TCLMLanguageCode = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function EnAU: TCLMLanguageCode; static;
    class function EnGB: TCLMLanguageCode; static;
    class function EnUS: TCLMLanguageCode; static;
    class function EsUS: TCLMLanguageCode; static;
    class function HiIN: TCLMLanguageCode; static;
    class operator Equal(a: TCLMLanguageCode; b: TCLMLanguageCode): Boolean;
    class operator NotEqual(a: TCLMLanguageCode; b: TCLMLanguageCode): Boolean;
    class operator Implicit(a: string): TCLMLanguageCode;
    property Value: string read FValue;
  end;
  
  TCallAnalyticsJobStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function COMPLETED: TCallAnalyticsJobStatus; static;
    class function FAILED: TCallAnalyticsJobStatus; static;
    class function IN_PROGRESS: TCallAnalyticsJobStatus; static;
    class function QUEUED: TCallAnalyticsJobStatus; static;
    class operator Equal(a: TCallAnalyticsJobStatus; b: TCallAnalyticsJobStatus): Boolean;
    class operator NotEqual(a: TCallAnalyticsJobStatus; b: TCallAnalyticsJobStatus): Boolean;
    class operator Implicit(a: string): TCallAnalyticsJobStatus;
    property Value: string read FValue;
  end;
  
  TLanguageCode = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AfZA: TLanguageCode; static;
    class function ArAE: TLanguageCode; static;
    class function ArSA: TLanguageCode; static;
    class function CyGB: TLanguageCode; static;
    class function DaDK: TLanguageCode; static;
    class function DeCH: TLanguageCode; static;
    class function DeDE: TLanguageCode; static;
    class function EnAB: TLanguageCode; static;
    class function EnAU: TLanguageCode; static;
    class function EnGB: TLanguageCode; static;
    class function EnIE: TLanguageCode; static;
    class function EnIN: TLanguageCode; static;
    class function EnNZ: TLanguageCode; static;
    class function EnUS: TLanguageCode; static;
    class function EnWL: TLanguageCode; static;
    class function EnZA: TLanguageCode; static;
    class function EsES: TLanguageCode; static;
    class function EsUS: TLanguageCode; static;
    class function FaIR: TLanguageCode; static;
    class function FrCA: TLanguageCode; static;
    class function FrFR: TLanguageCode; static;
    class function GaIE: TLanguageCode; static;
    class function GdGB: TLanguageCode; static;
    class function HeIL: TLanguageCode; static;
    class function HiIN: TLanguageCode; static;
    class function IdID: TLanguageCode; static;
    class function ItIT: TLanguageCode; static;
    class function JaJP: TLanguageCode; static;
    class function KoKR: TLanguageCode; static;
    class function MsMY: TLanguageCode; static;
    class function NlNL: TLanguageCode; static;
    class function PtBR: TLanguageCode; static;
    class function PtPT: TLanguageCode; static;
    class function RuRU: TLanguageCode; static;
    class function TaIN: TLanguageCode; static;
    class function TeIN: TLanguageCode; static;
    class function ThTH: TLanguageCode; static;
    class function TrTR: TLanguageCode; static;
    class function ZhCN: TLanguageCode; static;
    class function ZhTW: TLanguageCode; static;
    class operator Equal(a: TLanguageCode; b: TLanguageCode): Boolean;
    class operator NotEqual(a: TLanguageCode; b: TLanguageCode): Boolean;
    class operator Implicit(a: string): TLanguageCode;
    property Value: string read FValue;
  end;
  
  TMediaFormat = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Amr: TMediaFormat; static;
    class function Flac: TMediaFormat; static;
    class function Mp3: TMediaFormat; static;
    class function Mp4: TMediaFormat; static;
    class function Ogg: TMediaFormat; static;
    class function Wav: TMediaFormat; static;
    class function Webm: TMediaFormat; static;
    class operator Equal(a: TMediaFormat; b: TMediaFormat): Boolean;
    class operator NotEqual(a: TMediaFormat; b: TMediaFormat): Boolean;
    class operator Implicit(a: string): TMediaFormat;
    property Value: string read FValue;
  end;
  
  TMedicalContentIdentificationType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function PHI: TMedicalContentIdentificationType; static;
    class operator Equal(a: TMedicalContentIdentificationType; b: TMedicalContentIdentificationType): Boolean;
    class operator NotEqual(a: TMedicalContentIdentificationType; b: TMedicalContentIdentificationType): Boolean;
    class operator Implicit(a: string): TMedicalContentIdentificationType;
    property Value: string read FValue;
  end;
  
  TModelStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function COMPLETED: TModelStatus; static;
    class function FAILED: TModelStatus; static;
    class function IN_PROGRESS: TModelStatus; static;
    class operator Equal(a: TModelStatus; b: TModelStatus): Boolean;
    class operator NotEqual(a: TModelStatus; b: TModelStatus): Boolean;
    class operator Implicit(a: string): TModelStatus;
    property Value: string read FValue;
  end;
  
  TOutputLocationType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CUSTOMER_BUCKET: TOutputLocationType; static;
    class function SERVICE_BUCKET: TOutputLocationType; static;
    class operator Equal(a: TOutputLocationType; b: TOutputLocationType): Boolean;
    class operator NotEqual(a: TOutputLocationType; b: TOutputLocationType): Boolean;
    class operator Implicit(a: string): TOutputLocationType;
    property Value: string read FValue;
  end;
  
  TParticipantRole = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AGENT: TParticipantRole; static;
    class function CUSTOMER: TParticipantRole; static;
    class operator Equal(a: TParticipantRole; b: TParticipantRole): Boolean;
    class operator NotEqual(a: TParticipantRole; b: TParticipantRole): Boolean;
    class operator Implicit(a: string): TParticipantRole;
    property Value: string read FValue;
  end;
  
  TPiiEntityType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ADDRESS: TPiiEntityType; static;
    class function ALL: TPiiEntityType; static;
    class function BANK_ACCOUNT_NUMBER: TPiiEntityType; static;
    class function BANK_ROUTING: TPiiEntityType; static;
    class function CREDIT_DEBIT_CVV: TPiiEntityType; static;
    class function CREDIT_DEBIT_EXPIRY: TPiiEntityType; static;
    class function CREDIT_DEBIT_NUMBER: TPiiEntityType; static;
    class function EMAIL: TPiiEntityType; static;
    class function NAME: TPiiEntityType; static;
    class function PHONE: TPiiEntityType; static;
    class function PIN: TPiiEntityType; static;
    class function SSN: TPiiEntityType; static;
    class operator Equal(a: TPiiEntityType; b: TPiiEntityType): Boolean;
    class operator NotEqual(a: TPiiEntityType; b: TPiiEntityType): Boolean;
    class operator Implicit(a: string): TPiiEntityType;
    property Value: string read FValue;
  end;
  
  TRedactionOutput = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Redacted: TRedactionOutput; static;
    class function Redacted_and_unredacted: TRedactionOutput; static;
    class operator Equal(a: TRedactionOutput; b: TRedactionOutput): Boolean;
    class operator NotEqual(a: TRedactionOutput; b: TRedactionOutput): Boolean;
    class operator Implicit(a: string): TRedactionOutput;
    property Value: string read FValue;
  end;
  
  TRedactionType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function PII: TRedactionType; static;
    class operator Equal(a: TRedactionType; b: TRedactionType): Boolean;
    class operator NotEqual(a: TRedactionType; b: TRedactionType): Boolean;
    class operator Implicit(a: string): TRedactionType;
    property Value: string read FValue;
  end;
  
  TSentimentValue = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function MIXED: TSentimentValue; static;
    class function NEGATIVE: TSentimentValue; static;
    class function NEUTRAL: TSentimentValue; static;
    class function POSITIVE: TSentimentValue; static;
    class operator Equal(a: TSentimentValue; b: TSentimentValue): Boolean;
    class operator NotEqual(a: TSentimentValue; b: TSentimentValue): Boolean;
    class operator Implicit(a: string): TSentimentValue;
    property Value: string read FValue;
  end;
  
  TSpecialty = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function PRIMARYCARE: TSpecialty; static;
    class operator Equal(a: TSpecialty; b: TSpecialty): Boolean;
    class operator NotEqual(a: TSpecialty; b: TSpecialty): Boolean;
    class operator Implicit(a: string): TSpecialty;
    property Value: string read FValue;
  end;
  
  TSubtitleFormat = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Srt: TSubtitleFormat; static;
    class function Vtt: TSubtitleFormat; static;
    class operator Equal(a: TSubtitleFormat; b: TSubtitleFormat): Boolean;
    class operator NotEqual(a: TSubtitleFormat; b: TSubtitleFormat): Boolean;
    class operator Implicit(a: string): TSubtitleFormat;
    property Value: string read FValue;
  end;
  
  TTranscriptFilterType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function EXACT: TTranscriptFilterType; static;
    class operator Equal(a: TTranscriptFilterType; b: TTranscriptFilterType): Boolean;
    class operator NotEqual(a: TTranscriptFilterType; b: TTranscriptFilterType): Boolean;
    class operator Implicit(a: string): TTranscriptFilterType;
    property Value: string read FValue;
  end;
  
  TTranscriptionJobStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function COMPLETED: TTranscriptionJobStatus; static;
    class function FAILED: TTranscriptionJobStatus; static;
    class function IN_PROGRESS: TTranscriptionJobStatus; static;
    class function QUEUED: TTranscriptionJobStatus; static;
    class operator Equal(a: TTranscriptionJobStatus; b: TTranscriptionJobStatus): Boolean;
    class operator NotEqual(a: TTranscriptionJobStatus; b: TTranscriptionJobStatus): Boolean;
    class operator Implicit(a: string): TTranscriptionJobStatus;
    property Value: string read FValue;
  end;
  
  TType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CONVERSATION: TType; static;
    class function DICTATION: TType; static;
    class operator Equal(a: TType; b: TType): Boolean;
    class operator NotEqual(a: TType; b: TType): Boolean;
    class operator Implicit(a: string): TType;
    property Value: string read FValue;
  end;
  
  TVocabularyFilterMethod = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Mask: TVocabularyFilterMethod; static;
    class function Remove: TVocabularyFilterMethod; static;
    class function Tag: TVocabularyFilterMethod; static;
    class operator Equal(a: TVocabularyFilterMethod; b: TVocabularyFilterMethod): Boolean;
    class operator NotEqual(a: TVocabularyFilterMethod; b: TVocabularyFilterMethod): Boolean;
    class operator Implicit(a: string): TVocabularyFilterMethod;
    property Value: string read FValue;
  end;
  
  TVocabularyState = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function FAILED: TVocabularyState; static;
    class function PENDING: TVocabularyState; static;
    class function READY: TVocabularyState; static;
    class operator Equal(a: TVocabularyState; b: TVocabularyState): Boolean;
    class operator NotEqual(a: TVocabularyState; b: TVocabularyState): Boolean;
    class operator Implicit(a: string): TVocabularyState;
    property Value: string read FValue;
  end;
  
implementation

{ TBaseModelName }

constructor TBaseModelName.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TBaseModelName.NarrowBand: TBaseModelName;
begin
  Result := TBaseModelName.Create('NarrowBand');
end;

class function TBaseModelName.WideBand: TBaseModelName;
begin
  Result := TBaseModelName.Create('WideBand');
end;

class operator TBaseModelName.Equal(a: TBaseModelName; b: TBaseModelName): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TBaseModelName.NotEqual(a: TBaseModelName; b: TBaseModelName): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TBaseModelName.Implicit(a: string): TBaseModelName;
begin
  Result.FValue := a;;
end;

{ TCLMLanguageCode }

constructor TCLMLanguageCode.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TCLMLanguageCode.EnAU: TCLMLanguageCode;
begin
  Result := TCLMLanguageCode.Create('en-AU');
end;

class function TCLMLanguageCode.EnGB: TCLMLanguageCode;
begin
  Result := TCLMLanguageCode.Create('en-GB');
end;

class function TCLMLanguageCode.EnUS: TCLMLanguageCode;
begin
  Result := TCLMLanguageCode.Create('en-US');
end;

class function TCLMLanguageCode.EsUS: TCLMLanguageCode;
begin
  Result := TCLMLanguageCode.Create('es-US');
end;

class function TCLMLanguageCode.HiIN: TCLMLanguageCode;
begin
  Result := TCLMLanguageCode.Create('hi-IN');
end;

class operator TCLMLanguageCode.Equal(a: TCLMLanguageCode; b: TCLMLanguageCode): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TCLMLanguageCode.NotEqual(a: TCLMLanguageCode; b: TCLMLanguageCode): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TCLMLanguageCode.Implicit(a: string): TCLMLanguageCode;
begin
  Result.FValue := a;;
end;

{ TCallAnalyticsJobStatus }

constructor TCallAnalyticsJobStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TCallAnalyticsJobStatus.COMPLETED: TCallAnalyticsJobStatus;
begin
  Result := TCallAnalyticsJobStatus.Create('COMPLETED');
end;

class function TCallAnalyticsJobStatus.FAILED: TCallAnalyticsJobStatus;
begin
  Result := TCallAnalyticsJobStatus.Create('FAILED');
end;

class function TCallAnalyticsJobStatus.IN_PROGRESS: TCallAnalyticsJobStatus;
begin
  Result := TCallAnalyticsJobStatus.Create('IN_PROGRESS');
end;

class function TCallAnalyticsJobStatus.QUEUED: TCallAnalyticsJobStatus;
begin
  Result := TCallAnalyticsJobStatus.Create('QUEUED');
end;

class operator TCallAnalyticsJobStatus.Equal(a: TCallAnalyticsJobStatus; b: TCallAnalyticsJobStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TCallAnalyticsJobStatus.NotEqual(a: TCallAnalyticsJobStatus; b: TCallAnalyticsJobStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TCallAnalyticsJobStatus.Implicit(a: string): TCallAnalyticsJobStatus;
begin
  Result.FValue := a;;
end;

{ TLanguageCode }

constructor TLanguageCode.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TLanguageCode.AfZA: TLanguageCode;
begin
  Result := TLanguageCode.Create('af-ZA');
end;

class function TLanguageCode.ArAE: TLanguageCode;
begin
  Result := TLanguageCode.Create('ar-AE');
end;

class function TLanguageCode.ArSA: TLanguageCode;
begin
  Result := TLanguageCode.Create('ar-SA');
end;

class function TLanguageCode.CyGB: TLanguageCode;
begin
  Result := TLanguageCode.Create('cy-GB');
end;

class function TLanguageCode.DaDK: TLanguageCode;
begin
  Result := TLanguageCode.Create('da-DK');
end;

class function TLanguageCode.DeCH: TLanguageCode;
begin
  Result := TLanguageCode.Create('de-CH');
end;

class function TLanguageCode.DeDE: TLanguageCode;
begin
  Result := TLanguageCode.Create('de-DE');
end;

class function TLanguageCode.EnAB: TLanguageCode;
begin
  Result := TLanguageCode.Create('en-AB');
end;

class function TLanguageCode.EnAU: TLanguageCode;
begin
  Result := TLanguageCode.Create('en-AU');
end;

class function TLanguageCode.EnGB: TLanguageCode;
begin
  Result := TLanguageCode.Create('en-GB');
end;

class function TLanguageCode.EnIE: TLanguageCode;
begin
  Result := TLanguageCode.Create('en-IE');
end;

class function TLanguageCode.EnIN: TLanguageCode;
begin
  Result := TLanguageCode.Create('en-IN');
end;

class function TLanguageCode.EnNZ: TLanguageCode;
begin
  Result := TLanguageCode.Create('en-NZ');
end;

class function TLanguageCode.EnUS: TLanguageCode;
begin
  Result := TLanguageCode.Create('en-US');
end;

class function TLanguageCode.EnWL: TLanguageCode;
begin
  Result := TLanguageCode.Create('en-WL');
end;

class function TLanguageCode.EnZA: TLanguageCode;
begin
  Result := TLanguageCode.Create('en-ZA');
end;

class function TLanguageCode.EsES: TLanguageCode;
begin
  Result := TLanguageCode.Create('es-ES');
end;

class function TLanguageCode.EsUS: TLanguageCode;
begin
  Result := TLanguageCode.Create('es-US');
end;

class function TLanguageCode.FaIR: TLanguageCode;
begin
  Result := TLanguageCode.Create('fa-IR');
end;

class function TLanguageCode.FrCA: TLanguageCode;
begin
  Result := TLanguageCode.Create('fr-CA');
end;

class function TLanguageCode.FrFR: TLanguageCode;
begin
  Result := TLanguageCode.Create('fr-FR');
end;

class function TLanguageCode.GaIE: TLanguageCode;
begin
  Result := TLanguageCode.Create('ga-IE');
end;

class function TLanguageCode.GdGB: TLanguageCode;
begin
  Result := TLanguageCode.Create('gd-GB');
end;

class function TLanguageCode.HeIL: TLanguageCode;
begin
  Result := TLanguageCode.Create('he-IL');
end;

class function TLanguageCode.HiIN: TLanguageCode;
begin
  Result := TLanguageCode.Create('hi-IN');
end;

class function TLanguageCode.IdID: TLanguageCode;
begin
  Result := TLanguageCode.Create('id-ID');
end;

class function TLanguageCode.ItIT: TLanguageCode;
begin
  Result := TLanguageCode.Create('it-IT');
end;

class function TLanguageCode.JaJP: TLanguageCode;
begin
  Result := TLanguageCode.Create('ja-JP');
end;

class function TLanguageCode.KoKR: TLanguageCode;
begin
  Result := TLanguageCode.Create('ko-KR');
end;

class function TLanguageCode.MsMY: TLanguageCode;
begin
  Result := TLanguageCode.Create('ms-MY');
end;

class function TLanguageCode.NlNL: TLanguageCode;
begin
  Result := TLanguageCode.Create('nl-NL');
end;

class function TLanguageCode.PtBR: TLanguageCode;
begin
  Result := TLanguageCode.Create('pt-BR');
end;

class function TLanguageCode.PtPT: TLanguageCode;
begin
  Result := TLanguageCode.Create('pt-PT');
end;

class function TLanguageCode.RuRU: TLanguageCode;
begin
  Result := TLanguageCode.Create('ru-RU');
end;

class function TLanguageCode.TaIN: TLanguageCode;
begin
  Result := TLanguageCode.Create('ta-IN');
end;

class function TLanguageCode.TeIN: TLanguageCode;
begin
  Result := TLanguageCode.Create('te-IN');
end;

class function TLanguageCode.ThTH: TLanguageCode;
begin
  Result := TLanguageCode.Create('th-TH');
end;

class function TLanguageCode.TrTR: TLanguageCode;
begin
  Result := TLanguageCode.Create('tr-TR');
end;

class function TLanguageCode.ZhCN: TLanguageCode;
begin
  Result := TLanguageCode.Create('zh-CN');
end;

class function TLanguageCode.ZhTW: TLanguageCode;
begin
  Result := TLanguageCode.Create('zh-TW');
end;

class operator TLanguageCode.Equal(a: TLanguageCode; b: TLanguageCode): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TLanguageCode.NotEqual(a: TLanguageCode; b: TLanguageCode): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TLanguageCode.Implicit(a: string): TLanguageCode;
begin
  Result.FValue := a;;
end;

{ TMediaFormat }

constructor TMediaFormat.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TMediaFormat.Amr: TMediaFormat;
begin
  Result := TMediaFormat.Create('amr');
end;

class function TMediaFormat.Flac: TMediaFormat;
begin
  Result := TMediaFormat.Create('flac');
end;

class function TMediaFormat.Mp3: TMediaFormat;
begin
  Result := TMediaFormat.Create('mp3');
end;

class function TMediaFormat.Mp4: TMediaFormat;
begin
  Result := TMediaFormat.Create('mp4');
end;

class function TMediaFormat.Ogg: TMediaFormat;
begin
  Result := TMediaFormat.Create('ogg');
end;

class function TMediaFormat.Wav: TMediaFormat;
begin
  Result := TMediaFormat.Create('wav');
end;

class function TMediaFormat.Webm: TMediaFormat;
begin
  Result := TMediaFormat.Create('webm');
end;

class operator TMediaFormat.Equal(a: TMediaFormat; b: TMediaFormat): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TMediaFormat.NotEqual(a: TMediaFormat; b: TMediaFormat): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TMediaFormat.Implicit(a: string): TMediaFormat;
begin
  Result.FValue := a;;
end;

{ TMedicalContentIdentificationType }

constructor TMedicalContentIdentificationType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TMedicalContentIdentificationType.PHI: TMedicalContentIdentificationType;
begin
  Result := TMedicalContentIdentificationType.Create('PHI');
end;

class operator TMedicalContentIdentificationType.Equal(a: TMedicalContentIdentificationType; b: TMedicalContentIdentificationType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TMedicalContentIdentificationType.NotEqual(a: TMedicalContentIdentificationType; b: TMedicalContentIdentificationType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TMedicalContentIdentificationType.Implicit(a: string): TMedicalContentIdentificationType;
begin
  Result.FValue := a;;
end;

{ TModelStatus }

constructor TModelStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TModelStatus.COMPLETED: TModelStatus;
begin
  Result := TModelStatus.Create('COMPLETED');
end;

class function TModelStatus.FAILED: TModelStatus;
begin
  Result := TModelStatus.Create('FAILED');
end;

class function TModelStatus.IN_PROGRESS: TModelStatus;
begin
  Result := TModelStatus.Create('IN_PROGRESS');
end;

class operator TModelStatus.Equal(a: TModelStatus; b: TModelStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TModelStatus.NotEqual(a: TModelStatus; b: TModelStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TModelStatus.Implicit(a: string): TModelStatus;
begin
  Result.FValue := a;;
end;

{ TOutputLocationType }

constructor TOutputLocationType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TOutputLocationType.CUSTOMER_BUCKET: TOutputLocationType;
begin
  Result := TOutputLocationType.Create('CUSTOMER_BUCKET');
end;

class function TOutputLocationType.SERVICE_BUCKET: TOutputLocationType;
begin
  Result := TOutputLocationType.Create('SERVICE_BUCKET');
end;

class operator TOutputLocationType.Equal(a: TOutputLocationType; b: TOutputLocationType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TOutputLocationType.NotEqual(a: TOutputLocationType; b: TOutputLocationType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TOutputLocationType.Implicit(a: string): TOutputLocationType;
begin
  Result.FValue := a;;
end;

{ TParticipantRole }

constructor TParticipantRole.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TParticipantRole.AGENT: TParticipantRole;
begin
  Result := TParticipantRole.Create('AGENT');
end;

class function TParticipantRole.CUSTOMER: TParticipantRole;
begin
  Result := TParticipantRole.Create('CUSTOMER');
end;

class operator TParticipantRole.Equal(a: TParticipantRole; b: TParticipantRole): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TParticipantRole.NotEqual(a: TParticipantRole; b: TParticipantRole): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TParticipantRole.Implicit(a: string): TParticipantRole;
begin
  Result.FValue := a;;
end;

{ TPiiEntityType }

constructor TPiiEntityType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TPiiEntityType.ADDRESS: TPiiEntityType;
begin
  Result := TPiiEntityType.Create('ADDRESS');
end;

class function TPiiEntityType.ALL: TPiiEntityType;
begin
  Result := TPiiEntityType.Create('ALL');
end;

class function TPiiEntityType.BANK_ACCOUNT_NUMBER: TPiiEntityType;
begin
  Result := TPiiEntityType.Create('BANK_ACCOUNT_NUMBER');
end;

class function TPiiEntityType.BANK_ROUTING: TPiiEntityType;
begin
  Result := TPiiEntityType.Create('BANK_ROUTING');
end;

class function TPiiEntityType.CREDIT_DEBIT_CVV: TPiiEntityType;
begin
  Result := TPiiEntityType.Create('CREDIT_DEBIT_CVV');
end;

class function TPiiEntityType.CREDIT_DEBIT_EXPIRY: TPiiEntityType;
begin
  Result := TPiiEntityType.Create('CREDIT_DEBIT_EXPIRY');
end;

class function TPiiEntityType.CREDIT_DEBIT_NUMBER: TPiiEntityType;
begin
  Result := TPiiEntityType.Create('CREDIT_DEBIT_NUMBER');
end;

class function TPiiEntityType.EMAIL: TPiiEntityType;
begin
  Result := TPiiEntityType.Create('EMAIL');
end;

class function TPiiEntityType.NAME: TPiiEntityType;
begin
  Result := TPiiEntityType.Create('NAME');
end;

class function TPiiEntityType.PHONE: TPiiEntityType;
begin
  Result := TPiiEntityType.Create('PHONE');
end;

class function TPiiEntityType.PIN: TPiiEntityType;
begin
  Result := TPiiEntityType.Create('PIN');
end;

class function TPiiEntityType.SSN: TPiiEntityType;
begin
  Result := TPiiEntityType.Create('SSN');
end;

class operator TPiiEntityType.Equal(a: TPiiEntityType; b: TPiiEntityType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TPiiEntityType.NotEqual(a: TPiiEntityType; b: TPiiEntityType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TPiiEntityType.Implicit(a: string): TPiiEntityType;
begin
  Result.FValue := a;;
end;

{ TRedactionOutput }

constructor TRedactionOutput.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TRedactionOutput.Redacted: TRedactionOutput;
begin
  Result := TRedactionOutput.Create('redacted');
end;

class function TRedactionOutput.Redacted_and_unredacted: TRedactionOutput;
begin
  Result := TRedactionOutput.Create('redacted_and_unredacted');
end;

class operator TRedactionOutput.Equal(a: TRedactionOutput; b: TRedactionOutput): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TRedactionOutput.NotEqual(a: TRedactionOutput; b: TRedactionOutput): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TRedactionOutput.Implicit(a: string): TRedactionOutput;
begin
  Result.FValue := a;;
end;

{ TRedactionType }

constructor TRedactionType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TRedactionType.PII: TRedactionType;
begin
  Result := TRedactionType.Create('PII');
end;

class operator TRedactionType.Equal(a: TRedactionType; b: TRedactionType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TRedactionType.NotEqual(a: TRedactionType; b: TRedactionType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TRedactionType.Implicit(a: string): TRedactionType;
begin
  Result.FValue := a;;
end;

{ TSentimentValue }

constructor TSentimentValue.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TSentimentValue.MIXED: TSentimentValue;
begin
  Result := TSentimentValue.Create('MIXED');
end;

class function TSentimentValue.NEGATIVE: TSentimentValue;
begin
  Result := TSentimentValue.Create('NEGATIVE');
end;

class function TSentimentValue.NEUTRAL: TSentimentValue;
begin
  Result := TSentimentValue.Create('NEUTRAL');
end;

class function TSentimentValue.POSITIVE: TSentimentValue;
begin
  Result := TSentimentValue.Create('POSITIVE');
end;

class operator TSentimentValue.Equal(a: TSentimentValue; b: TSentimentValue): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TSentimentValue.NotEqual(a: TSentimentValue; b: TSentimentValue): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TSentimentValue.Implicit(a: string): TSentimentValue;
begin
  Result.FValue := a;;
end;

{ TSpecialty }

constructor TSpecialty.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TSpecialty.PRIMARYCARE: TSpecialty;
begin
  Result := TSpecialty.Create('PRIMARYCARE');
end;

class operator TSpecialty.Equal(a: TSpecialty; b: TSpecialty): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TSpecialty.NotEqual(a: TSpecialty; b: TSpecialty): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TSpecialty.Implicit(a: string): TSpecialty;
begin
  Result.FValue := a;;
end;

{ TSubtitleFormat }

constructor TSubtitleFormat.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TSubtitleFormat.Srt: TSubtitleFormat;
begin
  Result := TSubtitleFormat.Create('srt');
end;

class function TSubtitleFormat.Vtt: TSubtitleFormat;
begin
  Result := TSubtitleFormat.Create('vtt');
end;

class operator TSubtitleFormat.Equal(a: TSubtitleFormat; b: TSubtitleFormat): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TSubtitleFormat.NotEqual(a: TSubtitleFormat; b: TSubtitleFormat): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TSubtitleFormat.Implicit(a: string): TSubtitleFormat;
begin
  Result.FValue := a;;
end;

{ TTranscriptFilterType }

constructor TTranscriptFilterType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TTranscriptFilterType.EXACT: TTranscriptFilterType;
begin
  Result := TTranscriptFilterType.Create('EXACT');
end;

class operator TTranscriptFilterType.Equal(a: TTranscriptFilterType; b: TTranscriptFilterType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TTranscriptFilterType.NotEqual(a: TTranscriptFilterType; b: TTranscriptFilterType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TTranscriptFilterType.Implicit(a: string): TTranscriptFilterType;
begin
  Result.FValue := a;;
end;

{ TTranscriptionJobStatus }

constructor TTranscriptionJobStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TTranscriptionJobStatus.COMPLETED: TTranscriptionJobStatus;
begin
  Result := TTranscriptionJobStatus.Create('COMPLETED');
end;

class function TTranscriptionJobStatus.FAILED: TTranscriptionJobStatus;
begin
  Result := TTranscriptionJobStatus.Create('FAILED');
end;

class function TTranscriptionJobStatus.IN_PROGRESS: TTranscriptionJobStatus;
begin
  Result := TTranscriptionJobStatus.Create('IN_PROGRESS');
end;

class function TTranscriptionJobStatus.QUEUED: TTranscriptionJobStatus;
begin
  Result := TTranscriptionJobStatus.Create('QUEUED');
end;

class operator TTranscriptionJobStatus.Equal(a: TTranscriptionJobStatus; b: TTranscriptionJobStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TTranscriptionJobStatus.NotEqual(a: TTranscriptionJobStatus; b: TTranscriptionJobStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TTranscriptionJobStatus.Implicit(a: string): TTranscriptionJobStatus;
begin
  Result.FValue := a;;
end;

{ TType }

constructor TType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TType.CONVERSATION: TType;
begin
  Result := TType.Create('CONVERSATION');
end;

class function TType.DICTATION: TType;
begin
  Result := TType.Create('DICTATION');
end;

class operator TType.Equal(a: TType; b: TType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TType.NotEqual(a: TType; b: TType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TType.Implicit(a: string): TType;
begin
  Result.FValue := a;;
end;

{ TVocabularyFilterMethod }

constructor TVocabularyFilterMethod.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TVocabularyFilterMethod.Mask: TVocabularyFilterMethod;
begin
  Result := TVocabularyFilterMethod.Create('mask');
end;

class function TVocabularyFilterMethod.Remove: TVocabularyFilterMethod;
begin
  Result := TVocabularyFilterMethod.Create('remove');
end;

class function TVocabularyFilterMethod.Tag: TVocabularyFilterMethod;
begin
  Result := TVocabularyFilterMethod.Create('tag');
end;

class operator TVocabularyFilterMethod.Equal(a: TVocabularyFilterMethod; b: TVocabularyFilterMethod): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TVocabularyFilterMethod.NotEqual(a: TVocabularyFilterMethod; b: TVocabularyFilterMethod): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TVocabularyFilterMethod.Implicit(a: string): TVocabularyFilterMethod;
begin
  Result.FValue := a;;
end;

{ TVocabularyState }

constructor TVocabularyState.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TVocabularyState.FAILED: TVocabularyState;
begin
  Result := TVocabularyState.Create('FAILED');
end;

class function TVocabularyState.PENDING: TVocabularyState;
begin
  Result := TVocabularyState.Create('PENDING');
end;

class function TVocabularyState.READY: TVocabularyState;
begin
  Result := TVocabularyState.Create('READY');
end;

class operator TVocabularyState.Equal(a: TVocabularyState; b: TVocabularyState): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TVocabularyState.NotEqual(a: TVocabularyState; b: TVocabularyState): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TVocabularyState.Implicit(a: string): TVocabularyState;
begin
  Result.FValue := a;;
end;

end.
