unit AWS.Polly.Model.SynthesizeSpeechRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Polly.Model.Request, 
  AWS.Polly.Enums;

type
  TSynthesizeSpeechRequest = class;
  
  ISynthesizeSpeechRequest = interface
    function GetEngine: TEngine;
    procedure SetEngine(const Value: TEngine);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLexiconNames: TList<string>;
    procedure SetLexiconNames(const Value: TList<string>);
    function GetOutputFormat: TOutputFormat;
    procedure SetOutputFormat(const Value: TOutputFormat);
    function GetSampleRate: string;
    procedure SetSampleRate(const Value: string);
    function GetSpeechMarkTypes: TList<string>;
    procedure SetSpeechMarkTypes(const Value: TList<string>);
    function GetText: string;
    procedure SetText(const Value: string);
    function GetTextType: TTextType;
    procedure SetTextType(const Value: TTextType);
    function GetVoiceId: TVoiceId;
    procedure SetVoiceId(const Value: TVoiceId);
    function Obj: TSynthesizeSpeechRequest;
    function IsSetEngine: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLexiconNames: Boolean;
    function IsSetOutputFormat: Boolean;
    function IsSetSampleRate: Boolean;
    function IsSetSpeechMarkTypes: Boolean;
    function IsSetText: Boolean;
    function IsSetTextType: Boolean;
    function IsSetVoiceId: Boolean;
    property Engine: TEngine read GetEngine write SetEngine;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LexiconNames: TList<string> read GetLexiconNames write SetLexiconNames;
    property OutputFormat: TOutputFormat read GetOutputFormat write SetOutputFormat;
    property SampleRate: string read GetSampleRate write SetSampleRate;
    property SpeechMarkTypes: TList<string> read GetSpeechMarkTypes write SetSpeechMarkTypes;
    property Text: string read GetText write SetText;
    property TextType: TTextType read GetTextType write SetTextType;
    property VoiceId: TVoiceId read GetVoiceId write SetVoiceId;
  end;
  
  TSynthesizeSpeechRequest = class(TAmazonPollyRequest, ISynthesizeSpeechRequest)
  strict private
    FEngine: Nullable<TEngine>;
    FLanguageCode: Nullable<TLanguageCode>;
    FLexiconNames: TList<string>;
    FOutputFormat: Nullable<TOutputFormat>;
    FSampleRate: Nullable<string>;
    FSpeechMarkTypes: TList<string>;
    FText: Nullable<string>;
    FTextType: Nullable<TTextType>;
    FVoiceId: Nullable<TVoiceId>;
    function GetEngine: TEngine;
    procedure SetEngine(const Value: TEngine);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLexiconNames: TList<string>;
    procedure SetLexiconNames(const Value: TList<string>);
    function GetOutputFormat: TOutputFormat;
    procedure SetOutputFormat(const Value: TOutputFormat);
    function GetSampleRate: string;
    procedure SetSampleRate(const Value: string);
    function GetSpeechMarkTypes: TList<string>;
    procedure SetSpeechMarkTypes(const Value: TList<string>);
    function GetText: string;
    procedure SetText(const Value: string);
    function GetTextType: TTextType;
    procedure SetTextType(const Value: TTextType);
    function GetVoiceId: TVoiceId;
    procedure SetVoiceId(const Value: TVoiceId);
  strict protected
    function Obj: TSynthesizeSpeechRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetEngine: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLexiconNames: Boolean;
    function IsSetOutputFormat: Boolean;
    function IsSetSampleRate: Boolean;
    function IsSetSpeechMarkTypes: Boolean;
    function IsSetText: Boolean;
    function IsSetTextType: Boolean;
    function IsSetVoiceId: Boolean;
    property Engine: TEngine read GetEngine write SetEngine;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LexiconNames: TList<string> read GetLexiconNames write SetLexiconNames;
    property OutputFormat: TOutputFormat read GetOutputFormat write SetOutputFormat;
    property SampleRate: string read GetSampleRate write SetSampleRate;
    property SpeechMarkTypes: TList<string> read GetSpeechMarkTypes write SetSpeechMarkTypes;
    property Text: string read GetText write SetText;
    property TextType: TTextType read GetTextType write SetTextType;
    property VoiceId: TVoiceId read GetVoiceId write SetVoiceId;
  end;
  
implementation

{ TSynthesizeSpeechRequest }

constructor TSynthesizeSpeechRequest.Create;
begin
  inherited;
  FLexiconNames := TList<string>.Create;
  FSpeechMarkTypes := TList<string>.Create;
end;

destructor TSynthesizeSpeechRequest.Destroy;
begin
  SpeechMarkTypes := nil;
  LexiconNames := nil;
  inherited;
end;

function TSynthesizeSpeechRequest.Obj: TSynthesizeSpeechRequest;
begin
  Result := Self;
end;

function TSynthesizeSpeechRequest.GetEngine: TEngine;
begin
  Result := FEngine.ValueOrDefault;
end;

procedure TSynthesizeSpeechRequest.SetEngine(const Value: TEngine);
begin
  FEngine := Value;
end;

function TSynthesizeSpeechRequest.IsSetEngine: Boolean;
begin
  Result := FEngine.HasValue;
end;

function TSynthesizeSpeechRequest.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TSynthesizeSpeechRequest.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TSynthesizeSpeechRequest.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TSynthesizeSpeechRequest.GetLexiconNames: TList<string>;
begin
  Result := FLexiconNames;
end;

procedure TSynthesizeSpeechRequest.SetLexiconNames(const Value: TList<string>);
begin
  if FLexiconNames <> Value then
  begin
    FLexiconNames.Free;
    FLexiconNames := Value;
  end;
end;

function TSynthesizeSpeechRequest.IsSetLexiconNames: Boolean;
begin
  Result := (FLexiconNames <> nil) and (FLexiconNames.Count > 0);
end;

function TSynthesizeSpeechRequest.GetOutputFormat: TOutputFormat;
begin
  Result := FOutputFormat.ValueOrDefault;
end;

procedure TSynthesizeSpeechRequest.SetOutputFormat(const Value: TOutputFormat);
begin
  FOutputFormat := Value;
end;

function TSynthesizeSpeechRequest.IsSetOutputFormat: Boolean;
begin
  Result := FOutputFormat.HasValue;
end;

function TSynthesizeSpeechRequest.GetSampleRate: string;
begin
  Result := FSampleRate.ValueOrDefault;
end;

procedure TSynthesizeSpeechRequest.SetSampleRate(const Value: string);
begin
  FSampleRate := Value;
end;

function TSynthesizeSpeechRequest.IsSetSampleRate: Boolean;
begin
  Result := FSampleRate.HasValue;
end;

function TSynthesizeSpeechRequest.GetSpeechMarkTypes: TList<string>;
begin
  Result := FSpeechMarkTypes;
end;

procedure TSynthesizeSpeechRequest.SetSpeechMarkTypes(const Value: TList<string>);
begin
  if FSpeechMarkTypes <> Value then
  begin
    FSpeechMarkTypes.Free;
    FSpeechMarkTypes := Value;
  end;
end;

function TSynthesizeSpeechRequest.IsSetSpeechMarkTypes: Boolean;
begin
  Result := (FSpeechMarkTypes <> nil) and (FSpeechMarkTypes.Count > 0);
end;

function TSynthesizeSpeechRequest.GetText: string;
begin
  Result := FText.ValueOrDefault;
end;

procedure TSynthesizeSpeechRequest.SetText(const Value: string);
begin
  FText := Value;
end;

function TSynthesizeSpeechRequest.IsSetText: Boolean;
begin
  Result := FText.HasValue;
end;

function TSynthesizeSpeechRequest.GetTextType: TTextType;
begin
  Result := FTextType.ValueOrDefault;
end;

procedure TSynthesizeSpeechRequest.SetTextType(const Value: TTextType);
begin
  FTextType := Value;
end;

function TSynthesizeSpeechRequest.IsSetTextType: Boolean;
begin
  Result := FTextType.HasValue;
end;

function TSynthesizeSpeechRequest.GetVoiceId: TVoiceId;
begin
  Result := FVoiceId.ValueOrDefault;
end;

procedure TSynthesizeSpeechRequest.SetVoiceId(const Value: TVoiceId);
begin
  FVoiceId := Value;
end;

function TSynthesizeSpeechRequest.IsSetVoiceId: Boolean;
begin
  Result := FVoiceId.HasValue;
end;

end.
