unit AWS.Transcribe.Model.LanguageIdSettings;

interface

uses
  AWS.Nullable;

type
  TLanguageIdSettings = class;
  
  ILanguageIdSettings = interface
    function GetLanguageModelName: string;
    procedure SetLanguageModelName(const Value: string);
    function GetVocabularyFilterName: string;
    procedure SetVocabularyFilterName(const Value: string);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
    function Obj: TLanguageIdSettings;
    function IsSetLanguageModelName: Boolean;
    function IsSetVocabularyFilterName: Boolean;
    function IsSetVocabularyName: Boolean;
    property LanguageModelName: string read GetLanguageModelName write SetLanguageModelName;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
  TLanguageIdSettings = class
  strict private
    FLanguageModelName: Nullable<string>;
    FVocabularyFilterName: Nullable<string>;
    FVocabularyName: Nullable<string>;
    function GetLanguageModelName: string;
    procedure SetLanguageModelName(const Value: string);
    function GetVocabularyFilterName: string;
    procedure SetVocabularyFilterName(const Value: string);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
  strict protected
    function Obj: TLanguageIdSettings;
  public
    function IsSetLanguageModelName: Boolean;
    function IsSetVocabularyFilterName: Boolean;
    function IsSetVocabularyName: Boolean;
    property LanguageModelName: string read GetLanguageModelName write SetLanguageModelName;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
implementation

{ TLanguageIdSettings }

function TLanguageIdSettings.Obj: TLanguageIdSettings;
begin
  Result := Self;
end;

function TLanguageIdSettings.GetLanguageModelName: string;
begin
  Result := FLanguageModelName.ValueOrDefault;
end;

procedure TLanguageIdSettings.SetLanguageModelName(const Value: string);
begin
  FLanguageModelName := Value;
end;

function TLanguageIdSettings.IsSetLanguageModelName: Boolean;
begin
  Result := FLanguageModelName.HasValue;
end;

function TLanguageIdSettings.GetVocabularyFilterName: string;
begin
  Result := FVocabularyFilterName.ValueOrDefault;
end;

procedure TLanguageIdSettings.SetVocabularyFilterName(const Value: string);
begin
  FVocabularyFilterName := Value;
end;

function TLanguageIdSettings.IsSetVocabularyFilterName: Boolean;
begin
  Result := FVocabularyFilterName.HasValue;
end;

function TLanguageIdSettings.GetVocabularyName: string;
begin
  Result := FVocabularyName.ValueOrDefault;
end;

procedure TLanguageIdSettings.SetVocabularyName(const Value: string);
begin
  FVocabularyName := Value;
end;

function TLanguageIdSettings.IsSetVocabularyName: Boolean;
begin
  Result := FVocabularyName.HasValue;
end;

end.
