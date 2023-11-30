unit AWS.Transcribe.Model.MedicalTranscriptionSetting;

interface

uses
  AWS.Nullable;

type
  TMedicalTranscriptionSetting = class;
  
  IMedicalTranscriptionSetting = interface
    function GetChannelIdentification: Boolean;
    procedure SetChannelIdentification(const Value: Boolean);
    function GetMaxAlternatives: Integer;
    procedure SetMaxAlternatives(const Value: Integer);
    function GetMaxSpeakerLabels: Integer;
    procedure SetMaxSpeakerLabels(const Value: Integer);
    function GetShowAlternatives: Boolean;
    procedure SetShowAlternatives(const Value: Boolean);
    function GetShowSpeakerLabels: Boolean;
    procedure SetShowSpeakerLabels(const Value: Boolean);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
    function Obj: TMedicalTranscriptionSetting;
    function IsSetChannelIdentification: Boolean;
    function IsSetMaxAlternatives: Boolean;
    function IsSetMaxSpeakerLabels: Boolean;
    function IsSetShowAlternatives: Boolean;
    function IsSetShowSpeakerLabels: Boolean;
    function IsSetVocabularyName: Boolean;
    property ChannelIdentification: Boolean read GetChannelIdentification write SetChannelIdentification;
    property MaxAlternatives: Integer read GetMaxAlternatives write SetMaxAlternatives;
    property MaxSpeakerLabels: Integer read GetMaxSpeakerLabels write SetMaxSpeakerLabels;
    property ShowAlternatives: Boolean read GetShowAlternatives write SetShowAlternatives;
    property ShowSpeakerLabels: Boolean read GetShowSpeakerLabels write SetShowSpeakerLabels;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
  TMedicalTranscriptionSetting = class
  strict private
    FChannelIdentification: Nullable<Boolean>;
    FMaxAlternatives: Nullable<Integer>;
    FMaxSpeakerLabels: Nullable<Integer>;
    FShowAlternatives: Nullable<Boolean>;
    FShowSpeakerLabels: Nullable<Boolean>;
    FVocabularyName: Nullable<string>;
    function GetChannelIdentification: Boolean;
    procedure SetChannelIdentification(const Value: Boolean);
    function GetMaxAlternatives: Integer;
    procedure SetMaxAlternatives(const Value: Integer);
    function GetMaxSpeakerLabels: Integer;
    procedure SetMaxSpeakerLabels(const Value: Integer);
    function GetShowAlternatives: Boolean;
    procedure SetShowAlternatives(const Value: Boolean);
    function GetShowSpeakerLabels: Boolean;
    procedure SetShowSpeakerLabels(const Value: Boolean);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
  strict protected
    function Obj: TMedicalTranscriptionSetting;
  public
    function IsSetChannelIdentification: Boolean;
    function IsSetMaxAlternatives: Boolean;
    function IsSetMaxSpeakerLabels: Boolean;
    function IsSetShowAlternatives: Boolean;
    function IsSetShowSpeakerLabels: Boolean;
    function IsSetVocabularyName: Boolean;
    property ChannelIdentification: Boolean read GetChannelIdentification write SetChannelIdentification;
    property MaxAlternatives: Integer read GetMaxAlternatives write SetMaxAlternatives;
    property MaxSpeakerLabels: Integer read GetMaxSpeakerLabels write SetMaxSpeakerLabels;
    property ShowAlternatives: Boolean read GetShowAlternatives write SetShowAlternatives;
    property ShowSpeakerLabels: Boolean read GetShowSpeakerLabels write SetShowSpeakerLabels;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
implementation

{ TMedicalTranscriptionSetting }

function TMedicalTranscriptionSetting.Obj: TMedicalTranscriptionSetting;
begin
  Result := Self;
end;

function TMedicalTranscriptionSetting.GetChannelIdentification: Boolean;
begin
  Result := FChannelIdentification.ValueOrDefault;
end;

procedure TMedicalTranscriptionSetting.SetChannelIdentification(const Value: Boolean);
begin
  FChannelIdentification := Value;
end;

function TMedicalTranscriptionSetting.IsSetChannelIdentification: Boolean;
begin
  Result := FChannelIdentification.HasValue;
end;

function TMedicalTranscriptionSetting.GetMaxAlternatives: Integer;
begin
  Result := FMaxAlternatives.ValueOrDefault;
end;

procedure TMedicalTranscriptionSetting.SetMaxAlternatives(const Value: Integer);
begin
  FMaxAlternatives := Value;
end;

function TMedicalTranscriptionSetting.IsSetMaxAlternatives: Boolean;
begin
  Result := FMaxAlternatives.HasValue;
end;

function TMedicalTranscriptionSetting.GetMaxSpeakerLabels: Integer;
begin
  Result := FMaxSpeakerLabels.ValueOrDefault;
end;

procedure TMedicalTranscriptionSetting.SetMaxSpeakerLabels(const Value: Integer);
begin
  FMaxSpeakerLabels := Value;
end;

function TMedicalTranscriptionSetting.IsSetMaxSpeakerLabels: Boolean;
begin
  Result := FMaxSpeakerLabels.HasValue;
end;

function TMedicalTranscriptionSetting.GetShowAlternatives: Boolean;
begin
  Result := FShowAlternatives.ValueOrDefault;
end;

procedure TMedicalTranscriptionSetting.SetShowAlternatives(const Value: Boolean);
begin
  FShowAlternatives := Value;
end;

function TMedicalTranscriptionSetting.IsSetShowAlternatives: Boolean;
begin
  Result := FShowAlternatives.HasValue;
end;

function TMedicalTranscriptionSetting.GetShowSpeakerLabels: Boolean;
begin
  Result := FShowSpeakerLabels.ValueOrDefault;
end;

procedure TMedicalTranscriptionSetting.SetShowSpeakerLabels(const Value: Boolean);
begin
  FShowSpeakerLabels := Value;
end;

function TMedicalTranscriptionSetting.IsSetShowSpeakerLabels: Boolean;
begin
  Result := FShowSpeakerLabels.HasValue;
end;

function TMedicalTranscriptionSetting.GetVocabularyName: string;
begin
  Result := FVocabularyName.ValueOrDefault;
end;

procedure TMedicalTranscriptionSetting.SetVocabularyName(const Value: string);
begin
  FVocabularyName := Value;
end;

function TMedicalTranscriptionSetting.IsSetVocabularyName: Boolean;
begin
  Result := FVocabularyName.HasValue;
end;

end.
