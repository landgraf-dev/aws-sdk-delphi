unit AWS.Transcribe.Model.CallAnalyticsJobSettings;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.ContentRedaction, 
  AWS.Transcribe.Model.LanguageIdSettings, 
  AWS.Transcribe.Enums;

type
  TCallAnalyticsJobSettings = class;
  
  ICallAnalyticsJobSettings = interface
    function GetContentRedaction: TContentRedaction;
    procedure SetContentRedaction(const Value: TContentRedaction);
    function GetKeepContentRedaction: Boolean;
    procedure SetKeepContentRedaction(const Value: Boolean);
    function GetLanguageIdSettings: TObjectDictionary<string, TLanguageIdSettings>;
    procedure SetLanguageIdSettings(const Value: TObjectDictionary<string, TLanguageIdSettings>);
    function GetKeepLanguageIdSettings: Boolean;
    procedure SetKeepLanguageIdSettings(const Value: Boolean);
    function GetLanguageModelName: string;
    procedure SetLanguageModelName(const Value: string);
    function GetLanguageOptions: TList<string>;
    procedure SetLanguageOptions(const Value: TList<string>);
    function GetKeepLanguageOptions: Boolean;
    procedure SetKeepLanguageOptions(const Value: Boolean);
    function GetVocabularyFilterMethod: TVocabularyFilterMethod;
    procedure SetVocabularyFilterMethod(const Value: TVocabularyFilterMethod);
    function GetVocabularyFilterName: string;
    procedure SetVocabularyFilterName(const Value: string);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
    function Obj: TCallAnalyticsJobSettings;
    function IsSetContentRedaction: Boolean;
    function IsSetLanguageIdSettings: Boolean;
    function IsSetLanguageModelName: Boolean;
    function IsSetLanguageOptions: Boolean;
    function IsSetVocabularyFilterMethod: Boolean;
    function IsSetVocabularyFilterName: Boolean;
    function IsSetVocabularyName: Boolean;
    property ContentRedaction: TContentRedaction read GetContentRedaction write SetContentRedaction;
    property KeepContentRedaction: Boolean read GetKeepContentRedaction write SetKeepContentRedaction;
    property LanguageIdSettings: TObjectDictionary<string, TLanguageIdSettings> read GetLanguageIdSettings write SetLanguageIdSettings;
    property KeepLanguageIdSettings: Boolean read GetKeepLanguageIdSettings write SetKeepLanguageIdSettings;
    property LanguageModelName: string read GetLanguageModelName write SetLanguageModelName;
    property LanguageOptions: TList<string> read GetLanguageOptions write SetLanguageOptions;
    property KeepLanguageOptions: Boolean read GetKeepLanguageOptions write SetKeepLanguageOptions;
    property VocabularyFilterMethod: TVocabularyFilterMethod read GetVocabularyFilterMethod write SetVocabularyFilterMethod;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
  TCallAnalyticsJobSettings = class
  strict private
    FContentRedaction: TContentRedaction;
    FKeepContentRedaction: Boolean;
    FLanguageIdSettings: TObjectDictionary<string, TLanguageIdSettings>;
    FKeepLanguageIdSettings: Boolean;
    FLanguageModelName: Nullable<string>;
    FLanguageOptions: TList<string>;
    FKeepLanguageOptions: Boolean;
    FVocabularyFilterMethod: Nullable<TVocabularyFilterMethod>;
    FVocabularyFilterName: Nullable<string>;
    FVocabularyName: Nullable<string>;
    function GetContentRedaction: TContentRedaction;
    procedure SetContentRedaction(const Value: TContentRedaction);
    function GetKeepContentRedaction: Boolean;
    procedure SetKeepContentRedaction(const Value: Boolean);
    function GetLanguageIdSettings: TObjectDictionary<string, TLanguageIdSettings>;
    procedure SetLanguageIdSettings(const Value: TObjectDictionary<string, TLanguageIdSettings>);
    function GetKeepLanguageIdSettings: Boolean;
    procedure SetKeepLanguageIdSettings(const Value: Boolean);
    function GetLanguageModelName: string;
    procedure SetLanguageModelName(const Value: string);
    function GetLanguageOptions: TList<string>;
    procedure SetLanguageOptions(const Value: TList<string>);
    function GetKeepLanguageOptions: Boolean;
    procedure SetKeepLanguageOptions(const Value: Boolean);
    function GetVocabularyFilterMethod: TVocabularyFilterMethod;
    procedure SetVocabularyFilterMethod(const Value: TVocabularyFilterMethod);
    function GetVocabularyFilterName: string;
    procedure SetVocabularyFilterName(const Value: string);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
  strict protected
    function Obj: TCallAnalyticsJobSettings;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetContentRedaction: Boolean;
    function IsSetLanguageIdSettings: Boolean;
    function IsSetLanguageModelName: Boolean;
    function IsSetLanguageOptions: Boolean;
    function IsSetVocabularyFilterMethod: Boolean;
    function IsSetVocabularyFilterName: Boolean;
    function IsSetVocabularyName: Boolean;
    property ContentRedaction: TContentRedaction read GetContentRedaction write SetContentRedaction;
    property KeepContentRedaction: Boolean read GetKeepContentRedaction write SetKeepContentRedaction;
    property LanguageIdSettings: TObjectDictionary<string, TLanguageIdSettings> read GetLanguageIdSettings write SetLanguageIdSettings;
    property KeepLanguageIdSettings: Boolean read GetKeepLanguageIdSettings write SetKeepLanguageIdSettings;
    property LanguageModelName: string read GetLanguageModelName write SetLanguageModelName;
    property LanguageOptions: TList<string> read GetLanguageOptions write SetLanguageOptions;
    property KeepLanguageOptions: Boolean read GetKeepLanguageOptions write SetKeepLanguageOptions;
    property VocabularyFilterMethod: TVocabularyFilterMethod read GetVocabularyFilterMethod write SetVocabularyFilterMethod;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
implementation

{ TCallAnalyticsJobSettings }

constructor TCallAnalyticsJobSettings.Create;
begin
  inherited;
  FLanguageIdSettings := TObjectDictionary<string, TLanguageIdSettings>.Create([doOwnsValues]);
  FLanguageOptions := TList<string>.Create;
end;

destructor TCallAnalyticsJobSettings.Destroy;
begin
  LanguageOptions := nil;
  LanguageIdSettings := nil;
  ContentRedaction := nil;
  inherited;
end;

function TCallAnalyticsJobSettings.Obj: TCallAnalyticsJobSettings;
begin
  Result := Self;
end;

function TCallAnalyticsJobSettings.GetContentRedaction: TContentRedaction;
begin
  Result := FContentRedaction;
end;

procedure TCallAnalyticsJobSettings.SetContentRedaction(const Value: TContentRedaction);
begin
  if FContentRedaction <> Value then
  begin
    if not KeepContentRedaction then
      FContentRedaction.Free;
    FContentRedaction := Value;
  end;
end;

function TCallAnalyticsJobSettings.GetKeepContentRedaction: Boolean;
begin
  Result := FKeepContentRedaction;
end;

procedure TCallAnalyticsJobSettings.SetKeepContentRedaction(const Value: Boolean);
begin
  FKeepContentRedaction := Value;
end;

function TCallAnalyticsJobSettings.IsSetContentRedaction: Boolean;
begin
  Result := FContentRedaction <> nil;
end;

function TCallAnalyticsJobSettings.GetLanguageIdSettings: TObjectDictionary<string, TLanguageIdSettings>;
begin
  Result := FLanguageIdSettings;
end;

procedure TCallAnalyticsJobSettings.SetLanguageIdSettings(const Value: TObjectDictionary<string, TLanguageIdSettings>);
begin
  if FLanguageIdSettings <> Value then
  begin
    if not KeepLanguageIdSettings then
      FLanguageIdSettings.Free;
    FLanguageIdSettings := Value;
  end;
end;

function TCallAnalyticsJobSettings.GetKeepLanguageIdSettings: Boolean;
begin
  Result := FKeepLanguageIdSettings;
end;

procedure TCallAnalyticsJobSettings.SetKeepLanguageIdSettings(const Value: Boolean);
begin
  FKeepLanguageIdSettings := Value;
end;

function TCallAnalyticsJobSettings.IsSetLanguageIdSettings: Boolean;
begin
  Result := (FLanguageIdSettings <> nil) and (FLanguageIdSettings.Count > 0);
end;

function TCallAnalyticsJobSettings.GetLanguageModelName: string;
begin
  Result := FLanguageModelName.ValueOrDefault;
end;

procedure TCallAnalyticsJobSettings.SetLanguageModelName(const Value: string);
begin
  FLanguageModelName := Value;
end;

function TCallAnalyticsJobSettings.IsSetLanguageModelName: Boolean;
begin
  Result := FLanguageModelName.HasValue;
end;

function TCallAnalyticsJobSettings.GetLanguageOptions: TList<string>;
begin
  Result := FLanguageOptions;
end;

procedure TCallAnalyticsJobSettings.SetLanguageOptions(const Value: TList<string>);
begin
  if FLanguageOptions <> Value then
  begin
    if not KeepLanguageOptions then
      FLanguageOptions.Free;
    FLanguageOptions := Value;
  end;
end;

function TCallAnalyticsJobSettings.GetKeepLanguageOptions: Boolean;
begin
  Result := FKeepLanguageOptions;
end;

procedure TCallAnalyticsJobSettings.SetKeepLanguageOptions(const Value: Boolean);
begin
  FKeepLanguageOptions := Value;
end;

function TCallAnalyticsJobSettings.IsSetLanguageOptions: Boolean;
begin
  Result := (FLanguageOptions <> nil) and (FLanguageOptions.Count > 0);
end;

function TCallAnalyticsJobSettings.GetVocabularyFilterMethod: TVocabularyFilterMethod;
begin
  Result := FVocabularyFilterMethod.ValueOrDefault;
end;

procedure TCallAnalyticsJobSettings.SetVocabularyFilterMethod(const Value: TVocabularyFilterMethod);
begin
  FVocabularyFilterMethod := Value;
end;

function TCallAnalyticsJobSettings.IsSetVocabularyFilterMethod: Boolean;
begin
  Result := FVocabularyFilterMethod.HasValue;
end;

function TCallAnalyticsJobSettings.GetVocabularyFilterName: string;
begin
  Result := FVocabularyFilterName.ValueOrDefault;
end;

procedure TCallAnalyticsJobSettings.SetVocabularyFilterName(const Value: string);
begin
  FVocabularyFilterName := Value;
end;

function TCallAnalyticsJobSettings.IsSetVocabularyFilterName: Boolean;
begin
  Result := FVocabularyFilterName.HasValue;
end;

function TCallAnalyticsJobSettings.GetVocabularyName: string;
begin
  Result := FVocabularyName.ValueOrDefault;
end;

procedure TCallAnalyticsJobSettings.SetVocabularyName(const Value: string);
begin
  FVocabularyName := Value;
end;

function TCallAnalyticsJobSettings.IsSetVocabularyName: Boolean;
begin
  Result := FVocabularyName.HasValue;
end;

end.
