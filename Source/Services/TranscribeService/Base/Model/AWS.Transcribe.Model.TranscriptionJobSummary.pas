unit AWS.Transcribe.Model.TranscriptionJobSummary;

interface

uses
  AWS.Nullable, 
  AWS.Transcribe.Model.ContentRedaction, 
  AWS.Transcribe.Enums, 
  AWS.Transcribe.Model.ModelSettings;

type
  TTranscriptionJobSummary = class;
  
  ITranscriptionJobSummary = interface
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
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetModelSettings: TModelSettings;
    procedure SetModelSettings(const Value: TModelSettings);
    function GetKeepModelSettings: Boolean;
    procedure SetKeepModelSettings(const Value: Boolean);
    function GetOutputLocationType: TOutputLocationType;
    procedure SetOutputLocationType(const Value: TOutputLocationType);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
    function GetTranscriptionJobName: string;
    procedure SetTranscriptionJobName(const Value: string);
    function GetTranscriptionJobStatus: TTranscriptionJobStatus;
    procedure SetTranscriptionJobStatus(const Value: TTranscriptionJobStatus);
    function Obj: TTranscriptionJobSummary;
    function IsSetCompletionTime: Boolean;
    function IsSetContentRedaction: Boolean;
    function IsSetCreationTime: Boolean;
    function IsSetFailureReason: Boolean;
    function IsSetIdentifiedLanguageScore: Boolean;
    function IsSetIdentifyLanguage: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetModelSettings: Boolean;
    function IsSetOutputLocationType: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetTranscriptionJobName: Boolean;
    function IsSetTranscriptionJobStatus: Boolean;
    property CompletionTime: TDateTime read GetCompletionTime write SetCompletionTime;
    property ContentRedaction: TContentRedaction read GetContentRedaction write SetContentRedaction;
    property KeepContentRedaction: Boolean read GetKeepContentRedaction write SetKeepContentRedaction;
    property CreationTime: TDateTime read GetCreationTime write SetCreationTime;
    property FailureReason: string read GetFailureReason write SetFailureReason;
    property IdentifiedLanguageScore: Double read GetIdentifiedLanguageScore write SetIdentifiedLanguageScore;
    property IdentifyLanguage: Boolean read GetIdentifyLanguage write SetIdentifyLanguage;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property ModelSettings: TModelSettings read GetModelSettings write SetModelSettings;
    property KeepModelSettings: Boolean read GetKeepModelSettings write SetKeepModelSettings;
    property OutputLocationType: TOutputLocationType read GetOutputLocationType write SetOutputLocationType;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property TranscriptionJobName: string read GetTranscriptionJobName write SetTranscriptionJobName;
    property TranscriptionJobStatus: TTranscriptionJobStatus read GetTranscriptionJobStatus write SetTranscriptionJobStatus;
  end;
  
  TTranscriptionJobSummary = class
  strict private
    FCompletionTime: Nullable<TDateTime>;
    FContentRedaction: TContentRedaction;
    FKeepContentRedaction: Boolean;
    FCreationTime: Nullable<TDateTime>;
    FFailureReason: Nullable<string>;
    FIdentifiedLanguageScore: Nullable<Double>;
    FIdentifyLanguage: Nullable<Boolean>;
    FLanguageCode: Nullable<TLanguageCode>;
    FModelSettings: TModelSettings;
    FKeepModelSettings: Boolean;
    FOutputLocationType: Nullable<TOutputLocationType>;
    FStartTime: Nullable<TDateTime>;
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
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetModelSettings: TModelSettings;
    procedure SetModelSettings(const Value: TModelSettings);
    function GetKeepModelSettings: Boolean;
    procedure SetKeepModelSettings(const Value: Boolean);
    function GetOutputLocationType: TOutputLocationType;
    procedure SetOutputLocationType(const Value: TOutputLocationType);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
    function GetTranscriptionJobName: string;
    procedure SetTranscriptionJobName(const Value: string);
    function GetTranscriptionJobStatus: TTranscriptionJobStatus;
    procedure SetTranscriptionJobStatus(const Value: TTranscriptionJobStatus);
  strict protected
    function Obj: TTranscriptionJobSummary;
  public
    destructor Destroy; override;
    function IsSetCompletionTime: Boolean;
    function IsSetContentRedaction: Boolean;
    function IsSetCreationTime: Boolean;
    function IsSetFailureReason: Boolean;
    function IsSetIdentifiedLanguageScore: Boolean;
    function IsSetIdentifyLanguage: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetModelSettings: Boolean;
    function IsSetOutputLocationType: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetTranscriptionJobName: Boolean;
    function IsSetTranscriptionJobStatus: Boolean;
    property CompletionTime: TDateTime read GetCompletionTime write SetCompletionTime;
    property ContentRedaction: TContentRedaction read GetContentRedaction write SetContentRedaction;
    property KeepContentRedaction: Boolean read GetKeepContentRedaction write SetKeepContentRedaction;
    property CreationTime: TDateTime read GetCreationTime write SetCreationTime;
    property FailureReason: string read GetFailureReason write SetFailureReason;
    property IdentifiedLanguageScore: Double read GetIdentifiedLanguageScore write SetIdentifiedLanguageScore;
    property IdentifyLanguage: Boolean read GetIdentifyLanguage write SetIdentifyLanguage;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property ModelSettings: TModelSettings read GetModelSettings write SetModelSettings;
    property KeepModelSettings: Boolean read GetKeepModelSettings write SetKeepModelSettings;
    property OutputLocationType: TOutputLocationType read GetOutputLocationType write SetOutputLocationType;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property TranscriptionJobName: string read GetTranscriptionJobName write SetTranscriptionJobName;
    property TranscriptionJobStatus: TTranscriptionJobStatus read GetTranscriptionJobStatus write SetTranscriptionJobStatus;
  end;
  
implementation

{ TTranscriptionJobSummary }

destructor TTranscriptionJobSummary.Destroy;
begin
  ModelSettings := nil;
  ContentRedaction := nil;
  inherited;
end;

function TTranscriptionJobSummary.Obj: TTranscriptionJobSummary;
begin
  Result := Self;
end;

function TTranscriptionJobSummary.GetCompletionTime: TDateTime;
begin
  Result := FCompletionTime.ValueOrDefault;
end;

procedure TTranscriptionJobSummary.SetCompletionTime(const Value: TDateTime);
begin
  FCompletionTime := Value;
end;

function TTranscriptionJobSummary.IsSetCompletionTime: Boolean;
begin
  Result := FCompletionTime.HasValue;
end;

function TTranscriptionJobSummary.GetContentRedaction: TContentRedaction;
begin
  Result := FContentRedaction;
end;

procedure TTranscriptionJobSummary.SetContentRedaction(const Value: TContentRedaction);
begin
  if FContentRedaction <> Value then
  begin
    if not KeepContentRedaction then
      FContentRedaction.Free;
    FContentRedaction := Value;
  end;
end;

function TTranscriptionJobSummary.GetKeepContentRedaction: Boolean;
begin
  Result := FKeepContentRedaction;
end;

procedure TTranscriptionJobSummary.SetKeepContentRedaction(const Value: Boolean);
begin
  FKeepContentRedaction := Value;
end;

function TTranscriptionJobSummary.IsSetContentRedaction: Boolean;
begin
  Result := FContentRedaction <> nil;
end;

function TTranscriptionJobSummary.GetCreationTime: TDateTime;
begin
  Result := FCreationTime.ValueOrDefault;
end;

procedure TTranscriptionJobSummary.SetCreationTime(const Value: TDateTime);
begin
  FCreationTime := Value;
end;

function TTranscriptionJobSummary.IsSetCreationTime: Boolean;
begin
  Result := FCreationTime.HasValue;
end;

function TTranscriptionJobSummary.GetFailureReason: string;
begin
  Result := FFailureReason.ValueOrDefault;
end;

procedure TTranscriptionJobSummary.SetFailureReason(const Value: string);
begin
  FFailureReason := Value;
end;

function TTranscriptionJobSummary.IsSetFailureReason: Boolean;
begin
  Result := FFailureReason.HasValue;
end;

function TTranscriptionJobSummary.GetIdentifiedLanguageScore: Double;
begin
  Result := FIdentifiedLanguageScore.ValueOrDefault;
end;

procedure TTranscriptionJobSummary.SetIdentifiedLanguageScore(const Value: Double);
begin
  FIdentifiedLanguageScore := Value;
end;

function TTranscriptionJobSummary.IsSetIdentifiedLanguageScore: Boolean;
begin
  Result := FIdentifiedLanguageScore.HasValue;
end;

function TTranscriptionJobSummary.GetIdentifyLanguage: Boolean;
begin
  Result := FIdentifyLanguage.ValueOrDefault;
end;

procedure TTranscriptionJobSummary.SetIdentifyLanguage(const Value: Boolean);
begin
  FIdentifyLanguage := Value;
end;

function TTranscriptionJobSummary.IsSetIdentifyLanguage: Boolean;
begin
  Result := FIdentifyLanguage.HasValue;
end;

function TTranscriptionJobSummary.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TTranscriptionJobSummary.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TTranscriptionJobSummary.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TTranscriptionJobSummary.GetModelSettings: TModelSettings;
begin
  Result := FModelSettings;
end;

procedure TTranscriptionJobSummary.SetModelSettings(const Value: TModelSettings);
begin
  if FModelSettings <> Value then
  begin
    if not KeepModelSettings then
      FModelSettings.Free;
    FModelSettings := Value;
  end;
end;

function TTranscriptionJobSummary.GetKeepModelSettings: Boolean;
begin
  Result := FKeepModelSettings;
end;

procedure TTranscriptionJobSummary.SetKeepModelSettings(const Value: Boolean);
begin
  FKeepModelSettings := Value;
end;

function TTranscriptionJobSummary.IsSetModelSettings: Boolean;
begin
  Result := FModelSettings <> nil;
end;

function TTranscriptionJobSummary.GetOutputLocationType: TOutputLocationType;
begin
  Result := FOutputLocationType.ValueOrDefault;
end;

procedure TTranscriptionJobSummary.SetOutputLocationType(const Value: TOutputLocationType);
begin
  FOutputLocationType := Value;
end;

function TTranscriptionJobSummary.IsSetOutputLocationType: Boolean;
begin
  Result := FOutputLocationType.HasValue;
end;

function TTranscriptionJobSummary.GetStartTime: TDateTime;
begin
  Result := FStartTime.ValueOrDefault;
end;

procedure TTranscriptionJobSummary.SetStartTime(const Value: TDateTime);
begin
  FStartTime := Value;
end;

function TTranscriptionJobSummary.IsSetStartTime: Boolean;
begin
  Result := FStartTime.HasValue;
end;

function TTranscriptionJobSummary.GetTranscriptionJobName: string;
begin
  Result := FTranscriptionJobName.ValueOrDefault;
end;

procedure TTranscriptionJobSummary.SetTranscriptionJobName(const Value: string);
begin
  FTranscriptionJobName := Value;
end;

function TTranscriptionJobSummary.IsSetTranscriptionJobName: Boolean;
begin
  Result := FTranscriptionJobName.HasValue;
end;

function TTranscriptionJobSummary.GetTranscriptionJobStatus: TTranscriptionJobStatus;
begin
  Result := FTranscriptionJobStatus.ValueOrDefault;
end;

procedure TTranscriptionJobSummary.SetTranscriptionJobStatus(const Value: TTranscriptionJobStatus);
begin
  FTranscriptionJobStatus := Value;
end;

function TTranscriptionJobSummary.IsSetTranscriptionJobStatus: Boolean;
begin
  Result := FTranscriptionJobStatus.HasValue;
end;

end.
