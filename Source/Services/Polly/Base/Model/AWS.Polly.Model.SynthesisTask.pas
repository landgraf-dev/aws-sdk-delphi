unit AWS.Polly.Model.SynthesisTask;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.Polly.Enums;

type
  TSynthesisTask = class;
  
  ISynthesisTask = interface
    function GetCreationTime: TDateTime;
    procedure SetCreationTime(const Value: TDateTime);
    function GetEngine: TEngine;
    procedure SetEngine(const Value: TEngine);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLexiconNames: TList<string>;
    procedure SetLexiconNames(const Value: TList<string>);
    function GetKeepLexiconNames: Boolean;
    procedure SetKeepLexiconNames(const Value: Boolean);
    function GetOutputFormat: TOutputFormat;
    procedure SetOutputFormat(const Value: TOutputFormat);
    function GetOutputUri: string;
    procedure SetOutputUri(const Value: string);
    function GetRequestCharacters: Integer;
    procedure SetRequestCharacters(const Value: Integer);
    function GetSampleRate: string;
    procedure SetSampleRate(const Value: string);
    function GetSnsTopicArn: string;
    procedure SetSnsTopicArn(const Value: string);
    function GetSpeechMarkTypes: TList<string>;
    procedure SetSpeechMarkTypes(const Value: TList<string>);
    function GetKeepSpeechMarkTypes: Boolean;
    procedure SetKeepSpeechMarkTypes(const Value: Boolean);
    function GetTaskId: string;
    procedure SetTaskId(const Value: string);
    function GetTaskStatus: TTaskStatus;
    procedure SetTaskStatus(const Value: TTaskStatus);
    function GetTaskStatusReason: string;
    procedure SetTaskStatusReason(const Value: string);
    function GetTextType: TTextType;
    procedure SetTextType(const Value: TTextType);
    function GetVoiceId: TVoiceId;
    procedure SetVoiceId(const Value: TVoiceId);
    function Obj: TSynthesisTask;
    function IsSetCreationTime: Boolean;
    function IsSetEngine: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLexiconNames: Boolean;
    function IsSetOutputFormat: Boolean;
    function IsSetOutputUri: Boolean;
    function IsSetRequestCharacters: Boolean;
    function IsSetSampleRate: Boolean;
    function IsSetSnsTopicArn: Boolean;
    function IsSetSpeechMarkTypes: Boolean;
    function IsSetTaskId: Boolean;
    function IsSetTaskStatus: Boolean;
    function IsSetTaskStatusReason: Boolean;
    function IsSetTextType: Boolean;
    function IsSetVoiceId: Boolean;
    property CreationTime: TDateTime read GetCreationTime write SetCreationTime;
    property Engine: TEngine read GetEngine write SetEngine;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LexiconNames: TList<string> read GetLexiconNames write SetLexiconNames;
    property KeepLexiconNames: Boolean read GetKeepLexiconNames write SetKeepLexiconNames;
    property OutputFormat: TOutputFormat read GetOutputFormat write SetOutputFormat;
    property OutputUri: string read GetOutputUri write SetOutputUri;
    property RequestCharacters: Integer read GetRequestCharacters write SetRequestCharacters;
    property SampleRate: string read GetSampleRate write SetSampleRate;
    property SnsTopicArn: string read GetSnsTopicArn write SetSnsTopicArn;
    property SpeechMarkTypes: TList<string> read GetSpeechMarkTypes write SetSpeechMarkTypes;
    property KeepSpeechMarkTypes: Boolean read GetKeepSpeechMarkTypes write SetKeepSpeechMarkTypes;
    property TaskId: string read GetTaskId write SetTaskId;
    property TaskStatus: TTaskStatus read GetTaskStatus write SetTaskStatus;
    property TaskStatusReason: string read GetTaskStatusReason write SetTaskStatusReason;
    property TextType: TTextType read GetTextType write SetTextType;
    property VoiceId: TVoiceId read GetVoiceId write SetVoiceId;
  end;
  
  TSynthesisTask = class
  strict private
    FCreationTime: Nullable<TDateTime>;
    FEngine: Nullable<TEngine>;
    FLanguageCode: Nullable<TLanguageCode>;
    FLexiconNames: TList<string>;
    FKeepLexiconNames: Boolean;
    FOutputFormat: Nullable<TOutputFormat>;
    FOutputUri: Nullable<string>;
    FRequestCharacters: Nullable<Integer>;
    FSampleRate: Nullable<string>;
    FSnsTopicArn: Nullable<string>;
    FSpeechMarkTypes: TList<string>;
    FKeepSpeechMarkTypes: Boolean;
    FTaskId: Nullable<string>;
    FTaskStatus: Nullable<TTaskStatus>;
    FTaskStatusReason: Nullable<string>;
    FTextType: Nullable<TTextType>;
    FVoiceId: Nullable<TVoiceId>;
    function GetCreationTime: TDateTime;
    procedure SetCreationTime(const Value: TDateTime);
    function GetEngine: TEngine;
    procedure SetEngine(const Value: TEngine);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLexiconNames: TList<string>;
    procedure SetLexiconNames(const Value: TList<string>);
    function GetKeepLexiconNames: Boolean;
    procedure SetKeepLexiconNames(const Value: Boolean);
    function GetOutputFormat: TOutputFormat;
    procedure SetOutputFormat(const Value: TOutputFormat);
    function GetOutputUri: string;
    procedure SetOutputUri(const Value: string);
    function GetRequestCharacters: Integer;
    procedure SetRequestCharacters(const Value: Integer);
    function GetSampleRate: string;
    procedure SetSampleRate(const Value: string);
    function GetSnsTopicArn: string;
    procedure SetSnsTopicArn(const Value: string);
    function GetSpeechMarkTypes: TList<string>;
    procedure SetSpeechMarkTypes(const Value: TList<string>);
    function GetKeepSpeechMarkTypes: Boolean;
    procedure SetKeepSpeechMarkTypes(const Value: Boolean);
    function GetTaskId: string;
    procedure SetTaskId(const Value: string);
    function GetTaskStatus: TTaskStatus;
    procedure SetTaskStatus(const Value: TTaskStatus);
    function GetTaskStatusReason: string;
    procedure SetTaskStatusReason(const Value: string);
    function GetTextType: TTextType;
    procedure SetTextType(const Value: TTextType);
    function GetVoiceId: TVoiceId;
    procedure SetVoiceId(const Value: TVoiceId);
  strict protected
    function Obj: TSynthesisTask;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCreationTime: Boolean;
    function IsSetEngine: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLexiconNames: Boolean;
    function IsSetOutputFormat: Boolean;
    function IsSetOutputUri: Boolean;
    function IsSetRequestCharacters: Boolean;
    function IsSetSampleRate: Boolean;
    function IsSetSnsTopicArn: Boolean;
    function IsSetSpeechMarkTypes: Boolean;
    function IsSetTaskId: Boolean;
    function IsSetTaskStatus: Boolean;
    function IsSetTaskStatusReason: Boolean;
    function IsSetTextType: Boolean;
    function IsSetVoiceId: Boolean;
    property CreationTime: TDateTime read GetCreationTime write SetCreationTime;
    property Engine: TEngine read GetEngine write SetEngine;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LexiconNames: TList<string> read GetLexiconNames write SetLexiconNames;
    property KeepLexiconNames: Boolean read GetKeepLexiconNames write SetKeepLexiconNames;
    property OutputFormat: TOutputFormat read GetOutputFormat write SetOutputFormat;
    property OutputUri: string read GetOutputUri write SetOutputUri;
    property RequestCharacters: Integer read GetRequestCharacters write SetRequestCharacters;
    property SampleRate: string read GetSampleRate write SetSampleRate;
    property SnsTopicArn: string read GetSnsTopicArn write SetSnsTopicArn;
    property SpeechMarkTypes: TList<string> read GetSpeechMarkTypes write SetSpeechMarkTypes;
    property KeepSpeechMarkTypes: Boolean read GetKeepSpeechMarkTypes write SetKeepSpeechMarkTypes;
    property TaskId: string read GetTaskId write SetTaskId;
    property TaskStatus: TTaskStatus read GetTaskStatus write SetTaskStatus;
    property TaskStatusReason: string read GetTaskStatusReason write SetTaskStatusReason;
    property TextType: TTextType read GetTextType write SetTextType;
    property VoiceId: TVoiceId read GetVoiceId write SetVoiceId;
  end;
  
implementation

{ TSynthesisTask }

constructor TSynthesisTask.Create;
begin
  inherited;
  FLexiconNames := TList<string>.Create;
  FSpeechMarkTypes := TList<string>.Create;
end;

destructor TSynthesisTask.Destroy;
begin
  SpeechMarkTypes := nil;
  LexiconNames := nil;
  inherited;
end;

function TSynthesisTask.Obj: TSynthesisTask;
begin
  Result := Self;
end;

function TSynthesisTask.GetCreationTime: TDateTime;
begin
  Result := FCreationTime.ValueOrDefault;
end;

procedure TSynthesisTask.SetCreationTime(const Value: TDateTime);
begin
  FCreationTime := Value;
end;

function TSynthesisTask.IsSetCreationTime: Boolean;
begin
  Result := FCreationTime.HasValue;
end;

function TSynthesisTask.GetEngine: TEngine;
begin
  Result := FEngine.ValueOrDefault;
end;

procedure TSynthesisTask.SetEngine(const Value: TEngine);
begin
  FEngine := Value;
end;

function TSynthesisTask.IsSetEngine: Boolean;
begin
  Result := FEngine.HasValue;
end;

function TSynthesisTask.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TSynthesisTask.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TSynthesisTask.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TSynthesisTask.GetLexiconNames: TList<string>;
begin
  Result := FLexiconNames;
end;

procedure TSynthesisTask.SetLexiconNames(const Value: TList<string>);
begin
  if FLexiconNames <> Value then
  begin
    if not KeepLexiconNames then
      FLexiconNames.Free;
    FLexiconNames := Value;
  end;
end;

function TSynthesisTask.GetKeepLexiconNames: Boolean;
begin
  Result := FKeepLexiconNames;
end;

procedure TSynthesisTask.SetKeepLexiconNames(const Value: Boolean);
begin
  FKeepLexiconNames := Value;
end;

function TSynthesisTask.IsSetLexiconNames: Boolean;
begin
  Result := (FLexiconNames <> nil) and (FLexiconNames.Count > 0);
end;

function TSynthesisTask.GetOutputFormat: TOutputFormat;
begin
  Result := FOutputFormat.ValueOrDefault;
end;

procedure TSynthesisTask.SetOutputFormat(const Value: TOutputFormat);
begin
  FOutputFormat := Value;
end;

function TSynthesisTask.IsSetOutputFormat: Boolean;
begin
  Result := FOutputFormat.HasValue;
end;

function TSynthesisTask.GetOutputUri: string;
begin
  Result := FOutputUri.ValueOrDefault;
end;

procedure TSynthesisTask.SetOutputUri(const Value: string);
begin
  FOutputUri := Value;
end;

function TSynthesisTask.IsSetOutputUri: Boolean;
begin
  Result := FOutputUri.HasValue;
end;

function TSynthesisTask.GetRequestCharacters: Integer;
begin
  Result := FRequestCharacters.ValueOrDefault;
end;

procedure TSynthesisTask.SetRequestCharacters(const Value: Integer);
begin
  FRequestCharacters := Value;
end;

function TSynthesisTask.IsSetRequestCharacters: Boolean;
begin
  Result := FRequestCharacters.HasValue;
end;

function TSynthesisTask.GetSampleRate: string;
begin
  Result := FSampleRate.ValueOrDefault;
end;

procedure TSynthesisTask.SetSampleRate(const Value: string);
begin
  FSampleRate := Value;
end;

function TSynthesisTask.IsSetSampleRate: Boolean;
begin
  Result := FSampleRate.HasValue;
end;

function TSynthesisTask.GetSnsTopicArn: string;
begin
  Result := FSnsTopicArn.ValueOrDefault;
end;

procedure TSynthesisTask.SetSnsTopicArn(const Value: string);
begin
  FSnsTopicArn := Value;
end;

function TSynthesisTask.IsSetSnsTopicArn: Boolean;
begin
  Result := FSnsTopicArn.HasValue;
end;

function TSynthesisTask.GetSpeechMarkTypes: TList<string>;
begin
  Result := FSpeechMarkTypes;
end;

procedure TSynthesisTask.SetSpeechMarkTypes(const Value: TList<string>);
begin
  if FSpeechMarkTypes <> Value then
  begin
    if not KeepSpeechMarkTypes then
      FSpeechMarkTypes.Free;
    FSpeechMarkTypes := Value;
  end;
end;

function TSynthesisTask.GetKeepSpeechMarkTypes: Boolean;
begin
  Result := FKeepSpeechMarkTypes;
end;

procedure TSynthesisTask.SetKeepSpeechMarkTypes(const Value: Boolean);
begin
  FKeepSpeechMarkTypes := Value;
end;

function TSynthesisTask.IsSetSpeechMarkTypes: Boolean;
begin
  Result := (FSpeechMarkTypes <> nil) and (FSpeechMarkTypes.Count > 0);
end;

function TSynthesisTask.GetTaskId: string;
begin
  Result := FTaskId.ValueOrDefault;
end;

procedure TSynthesisTask.SetTaskId(const Value: string);
begin
  FTaskId := Value;
end;

function TSynthesisTask.IsSetTaskId: Boolean;
begin
  Result := FTaskId.HasValue;
end;

function TSynthesisTask.GetTaskStatus: TTaskStatus;
begin
  Result := FTaskStatus.ValueOrDefault;
end;

procedure TSynthesisTask.SetTaskStatus(const Value: TTaskStatus);
begin
  FTaskStatus := Value;
end;

function TSynthesisTask.IsSetTaskStatus: Boolean;
begin
  Result := FTaskStatus.HasValue;
end;

function TSynthesisTask.GetTaskStatusReason: string;
begin
  Result := FTaskStatusReason.ValueOrDefault;
end;

procedure TSynthesisTask.SetTaskStatusReason(const Value: string);
begin
  FTaskStatusReason := Value;
end;

function TSynthesisTask.IsSetTaskStatusReason: Boolean;
begin
  Result := FTaskStatusReason.HasValue;
end;

function TSynthesisTask.GetTextType: TTextType;
begin
  Result := FTextType.ValueOrDefault;
end;

procedure TSynthesisTask.SetTextType(const Value: TTextType);
begin
  FTextType := Value;
end;

function TSynthesisTask.IsSetTextType: Boolean;
begin
  Result := FTextType.HasValue;
end;

function TSynthesisTask.GetVoiceId: TVoiceId;
begin
  Result := FVoiceId.ValueOrDefault;
end;

procedure TSynthesisTask.SetVoiceId(const Value: TVoiceId);
begin
  FVoiceId := Value;
end;

function TSynthesisTask.IsSetVoiceId: Boolean;
begin
  Result := FVoiceId.HasValue;
end;

end.
