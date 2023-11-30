unit AWS.Transcribe.Model.Settings;

interface

uses
  AWS.Nullable, 
  AWS.Transcribe.Enums;

type
  TSettings = class;
  
  ISettings = interface
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
    function GetVocabularyFilterMethod: TVocabularyFilterMethod;
    procedure SetVocabularyFilterMethod(const Value: TVocabularyFilterMethod);
    function GetVocabularyFilterName: string;
    procedure SetVocabularyFilterName(const Value: string);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
    function Obj: TSettings;
    function IsSetChannelIdentification: Boolean;
    function IsSetMaxAlternatives: Boolean;
    function IsSetMaxSpeakerLabels: Boolean;
    function IsSetShowAlternatives: Boolean;
    function IsSetShowSpeakerLabels: Boolean;
    function IsSetVocabularyFilterMethod: Boolean;
    function IsSetVocabularyFilterName: Boolean;
    function IsSetVocabularyName: Boolean;
    property ChannelIdentification: Boolean read GetChannelIdentification write SetChannelIdentification;
    property MaxAlternatives: Integer read GetMaxAlternatives write SetMaxAlternatives;
    property MaxSpeakerLabels: Integer read GetMaxSpeakerLabels write SetMaxSpeakerLabels;
    property ShowAlternatives: Boolean read GetShowAlternatives write SetShowAlternatives;
    property ShowSpeakerLabels: Boolean read GetShowSpeakerLabels write SetShowSpeakerLabels;
    property VocabularyFilterMethod: TVocabularyFilterMethod read GetVocabularyFilterMethod write SetVocabularyFilterMethod;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
  TSettings = class
  strict private
    FChannelIdentification: Nullable<Boolean>;
    FMaxAlternatives: Nullable<Integer>;
    FMaxSpeakerLabels: Nullable<Integer>;
    FShowAlternatives: Nullable<Boolean>;
    FShowSpeakerLabels: Nullable<Boolean>;
    FVocabularyFilterMethod: Nullable<TVocabularyFilterMethod>;
    FVocabularyFilterName: Nullable<string>;
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
    function GetVocabularyFilterMethod: TVocabularyFilterMethod;
    procedure SetVocabularyFilterMethod(const Value: TVocabularyFilterMethod);
    function GetVocabularyFilterName: string;
    procedure SetVocabularyFilterName(const Value: string);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
  strict protected
    function Obj: TSettings;
  public
    function IsSetChannelIdentification: Boolean;
    function IsSetMaxAlternatives: Boolean;
    function IsSetMaxSpeakerLabels: Boolean;
    function IsSetShowAlternatives: Boolean;
    function IsSetShowSpeakerLabels: Boolean;
    function IsSetVocabularyFilterMethod: Boolean;
    function IsSetVocabularyFilterName: Boolean;
    function IsSetVocabularyName: Boolean;
    property ChannelIdentification: Boolean read GetChannelIdentification write SetChannelIdentification;
    property MaxAlternatives: Integer read GetMaxAlternatives write SetMaxAlternatives;
    property MaxSpeakerLabels: Integer read GetMaxSpeakerLabels write SetMaxSpeakerLabels;
    property ShowAlternatives: Boolean read GetShowAlternatives write SetShowAlternatives;
    property ShowSpeakerLabels: Boolean read GetShowSpeakerLabels write SetShowSpeakerLabels;
    property VocabularyFilterMethod: TVocabularyFilterMethod read GetVocabularyFilterMethod write SetVocabularyFilterMethod;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
implementation

{ TSettings }

function TSettings.Obj: TSettings;
begin
  Result := Self;
end;

function TSettings.GetChannelIdentification: Boolean;
begin
  Result := FChannelIdentification.ValueOrDefault;
end;

procedure TSettings.SetChannelIdentification(const Value: Boolean);
begin
  FChannelIdentification := Value;
end;

function TSettings.IsSetChannelIdentification: Boolean;
begin
  Result := FChannelIdentification.HasValue;
end;

function TSettings.GetMaxAlternatives: Integer;
begin
  Result := FMaxAlternatives.ValueOrDefault;
end;

procedure TSettings.SetMaxAlternatives(const Value: Integer);
begin
  FMaxAlternatives := Value;
end;

function TSettings.IsSetMaxAlternatives: Boolean;
begin
  Result := FMaxAlternatives.HasValue;
end;

function TSettings.GetMaxSpeakerLabels: Integer;
begin
  Result := FMaxSpeakerLabels.ValueOrDefault;
end;

procedure TSettings.SetMaxSpeakerLabels(const Value: Integer);
begin
  FMaxSpeakerLabels := Value;
end;

function TSettings.IsSetMaxSpeakerLabels: Boolean;
begin
  Result := FMaxSpeakerLabels.HasValue;
end;

function TSettings.GetShowAlternatives: Boolean;
begin
  Result := FShowAlternatives.ValueOrDefault;
end;

procedure TSettings.SetShowAlternatives(const Value: Boolean);
begin
  FShowAlternatives := Value;
end;

function TSettings.IsSetShowAlternatives: Boolean;
begin
  Result := FShowAlternatives.HasValue;
end;

function TSettings.GetShowSpeakerLabels: Boolean;
begin
  Result := FShowSpeakerLabels.ValueOrDefault;
end;

procedure TSettings.SetShowSpeakerLabels(const Value: Boolean);
begin
  FShowSpeakerLabels := Value;
end;

function TSettings.IsSetShowSpeakerLabels: Boolean;
begin
  Result := FShowSpeakerLabels.HasValue;
end;

function TSettings.GetVocabularyFilterMethod: TVocabularyFilterMethod;
begin
  Result := FVocabularyFilterMethod.ValueOrDefault;
end;

procedure TSettings.SetVocabularyFilterMethod(const Value: TVocabularyFilterMethod);
begin
  FVocabularyFilterMethod := Value;
end;

function TSettings.IsSetVocabularyFilterMethod: Boolean;
begin
  Result := FVocabularyFilterMethod.HasValue;
end;

function TSettings.GetVocabularyFilterName: string;
begin
  Result := FVocabularyFilterName.ValueOrDefault;
end;

procedure TSettings.SetVocabularyFilterName(const Value: string);
begin
  FVocabularyFilterName := Value;
end;

function TSettings.IsSetVocabularyFilterName: Boolean;
begin
  Result := FVocabularyFilterName.HasValue;
end;

function TSettings.GetVocabularyName: string;
begin
  Result := FVocabularyName.ValueOrDefault;
end;

procedure TSettings.SetVocabularyName(const Value: string);
begin
  FVocabularyName := Value;
end;

function TSettings.IsSetVocabularyName: Boolean;
begin
  Result := FVocabularyName.HasValue;
end;

end.
