unit AWS.Transcribe.Model.MedicalTranscriptionJobSummary;

interface

uses
  AWS.Nullable, 
  AWS.Transcribe.Enums;

type
  TMedicalTranscriptionJobSummary = class;
  
  IMedicalTranscriptionJobSummary = interface
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
    function GetMedicalTranscriptionJobName: string;
    procedure SetMedicalTranscriptionJobName(const Value: string);
    function GetOutputLocationType: TOutputLocationType;
    procedure SetOutputLocationType(const Value: TOutputLocationType);
    function GetSpecialty: TSpecialty;
    procedure SetSpecialty(const Value: TSpecialty);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
    function GetTranscriptionJobStatus: TTranscriptionJobStatus;
    procedure SetTranscriptionJobStatus(const Value: TTranscriptionJobStatus);
    function GetType: TType;
    procedure SetType(const Value: TType);
    function Obj: TMedicalTranscriptionJobSummary;
    function IsSetCompletionTime: Boolean;
    function IsSetContentIdentificationType: Boolean;
    function IsSetCreationTime: Boolean;
    function IsSetFailureReason: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetMedicalTranscriptionJobName: Boolean;
    function IsSetOutputLocationType: Boolean;
    function IsSetSpecialty: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetTranscriptionJobStatus: Boolean;
    function IsSetType: Boolean;
    property CompletionTime: TDateTime read GetCompletionTime write SetCompletionTime;
    property ContentIdentificationType: TMedicalContentIdentificationType read GetContentIdentificationType write SetContentIdentificationType;
    property CreationTime: TDateTime read GetCreationTime write SetCreationTime;
    property FailureReason: string read GetFailureReason write SetFailureReason;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property MedicalTranscriptionJobName: string read GetMedicalTranscriptionJobName write SetMedicalTranscriptionJobName;
    property OutputLocationType: TOutputLocationType read GetOutputLocationType write SetOutputLocationType;
    property Specialty: TSpecialty read GetSpecialty write SetSpecialty;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property TranscriptionJobStatus: TTranscriptionJobStatus read GetTranscriptionJobStatus write SetTranscriptionJobStatus;
    property &Type: TType read GetType write SetType;
  end;
  
  TMedicalTranscriptionJobSummary = class
  strict private
    FCompletionTime: Nullable<TDateTime>;
    FContentIdentificationType: Nullable<TMedicalContentIdentificationType>;
    FCreationTime: Nullable<TDateTime>;
    FFailureReason: Nullable<string>;
    FLanguageCode: Nullable<TLanguageCode>;
    FMedicalTranscriptionJobName: Nullable<string>;
    FOutputLocationType: Nullable<TOutputLocationType>;
    FSpecialty: Nullable<TSpecialty>;
    FStartTime: Nullable<TDateTime>;
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
    function GetMedicalTranscriptionJobName: string;
    procedure SetMedicalTranscriptionJobName(const Value: string);
    function GetOutputLocationType: TOutputLocationType;
    procedure SetOutputLocationType(const Value: TOutputLocationType);
    function GetSpecialty: TSpecialty;
    procedure SetSpecialty(const Value: TSpecialty);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
    function GetTranscriptionJobStatus: TTranscriptionJobStatus;
    procedure SetTranscriptionJobStatus(const Value: TTranscriptionJobStatus);
    function GetType: TType;
    procedure SetType(const Value: TType);
  strict protected
    function Obj: TMedicalTranscriptionJobSummary;
  public
    function IsSetCompletionTime: Boolean;
    function IsSetContentIdentificationType: Boolean;
    function IsSetCreationTime: Boolean;
    function IsSetFailureReason: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetMedicalTranscriptionJobName: Boolean;
    function IsSetOutputLocationType: Boolean;
    function IsSetSpecialty: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetTranscriptionJobStatus: Boolean;
    function IsSetType: Boolean;
    property CompletionTime: TDateTime read GetCompletionTime write SetCompletionTime;
    property ContentIdentificationType: TMedicalContentIdentificationType read GetContentIdentificationType write SetContentIdentificationType;
    property CreationTime: TDateTime read GetCreationTime write SetCreationTime;
    property FailureReason: string read GetFailureReason write SetFailureReason;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property MedicalTranscriptionJobName: string read GetMedicalTranscriptionJobName write SetMedicalTranscriptionJobName;
    property OutputLocationType: TOutputLocationType read GetOutputLocationType write SetOutputLocationType;
    property Specialty: TSpecialty read GetSpecialty write SetSpecialty;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property TranscriptionJobStatus: TTranscriptionJobStatus read GetTranscriptionJobStatus write SetTranscriptionJobStatus;
    property &Type: TType read GetType write SetType;
  end;
  
implementation

{ TMedicalTranscriptionJobSummary }

function TMedicalTranscriptionJobSummary.Obj: TMedicalTranscriptionJobSummary;
begin
  Result := Self;
end;

function TMedicalTranscriptionJobSummary.GetCompletionTime: TDateTime;
begin
  Result := FCompletionTime.ValueOrDefault;
end;

procedure TMedicalTranscriptionJobSummary.SetCompletionTime(const Value: TDateTime);
begin
  FCompletionTime := Value;
end;

function TMedicalTranscriptionJobSummary.IsSetCompletionTime: Boolean;
begin
  Result := FCompletionTime.HasValue;
end;

function TMedicalTranscriptionJobSummary.GetContentIdentificationType: TMedicalContentIdentificationType;
begin
  Result := FContentIdentificationType.ValueOrDefault;
end;

procedure TMedicalTranscriptionJobSummary.SetContentIdentificationType(const Value: TMedicalContentIdentificationType);
begin
  FContentIdentificationType := Value;
end;

function TMedicalTranscriptionJobSummary.IsSetContentIdentificationType: Boolean;
begin
  Result := FContentIdentificationType.HasValue;
end;

function TMedicalTranscriptionJobSummary.GetCreationTime: TDateTime;
begin
  Result := FCreationTime.ValueOrDefault;
end;

procedure TMedicalTranscriptionJobSummary.SetCreationTime(const Value: TDateTime);
begin
  FCreationTime := Value;
end;

function TMedicalTranscriptionJobSummary.IsSetCreationTime: Boolean;
begin
  Result := FCreationTime.HasValue;
end;

function TMedicalTranscriptionJobSummary.GetFailureReason: string;
begin
  Result := FFailureReason.ValueOrDefault;
end;

procedure TMedicalTranscriptionJobSummary.SetFailureReason(const Value: string);
begin
  FFailureReason := Value;
end;

function TMedicalTranscriptionJobSummary.IsSetFailureReason: Boolean;
begin
  Result := FFailureReason.HasValue;
end;

function TMedicalTranscriptionJobSummary.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TMedicalTranscriptionJobSummary.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TMedicalTranscriptionJobSummary.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TMedicalTranscriptionJobSummary.GetMedicalTranscriptionJobName: string;
begin
  Result := FMedicalTranscriptionJobName.ValueOrDefault;
end;

procedure TMedicalTranscriptionJobSummary.SetMedicalTranscriptionJobName(const Value: string);
begin
  FMedicalTranscriptionJobName := Value;
end;

function TMedicalTranscriptionJobSummary.IsSetMedicalTranscriptionJobName: Boolean;
begin
  Result := FMedicalTranscriptionJobName.HasValue;
end;

function TMedicalTranscriptionJobSummary.GetOutputLocationType: TOutputLocationType;
begin
  Result := FOutputLocationType.ValueOrDefault;
end;

procedure TMedicalTranscriptionJobSummary.SetOutputLocationType(const Value: TOutputLocationType);
begin
  FOutputLocationType := Value;
end;

function TMedicalTranscriptionJobSummary.IsSetOutputLocationType: Boolean;
begin
  Result := FOutputLocationType.HasValue;
end;

function TMedicalTranscriptionJobSummary.GetSpecialty: TSpecialty;
begin
  Result := FSpecialty.ValueOrDefault;
end;

procedure TMedicalTranscriptionJobSummary.SetSpecialty(const Value: TSpecialty);
begin
  FSpecialty := Value;
end;

function TMedicalTranscriptionJobSummary.IsSetSpecialty: Boolean;
begin
  Result := FSpecialty.HasValue;
end;

function TMedicalTranscriptionJobSummary.GetStartTime: TDateTime;
begin
  Result := FStartTime.ValueOrDefault;
end;

procedure TMedicalTranscriptionJobSummary.SetStartTime(const Value: TDateTime);
begin
  FStartTime := Value;
end;

function TMedicalTranscriptionJobSummary.IsSetStartTime: Boolean;
begin
  Result := FStartTime.HasValue;
end;

function TMedicalTranscriptionJobSummary.GetTranscriptionJobStatus: TTranscriptionJobStatus;
begin
  Result := FTranscriptionJobStatus.ValueOrDefault;
end;

procedure TMedicalTranscriptionJobSummary.SetTranscriptionJobStatus(const Value: TTranscriptionJobStatus);
begin
  FTranscriptionJobStatus := Value;
end;

function TMedicalTranscriptionJobSummary.IsSetTranscriptionJobStatus: Boolean;
begin
  Result := FTranscriptionJobStatus.HasValue;
end;

function TMedicalTranscriptionJobSummary.GetType: TType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TMedicalTranscriptionJobSummary.SetType(const Value: TType);
begin
  FType := Value;
end;

function TMedicalTranscriptionJobSummary.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

end.
