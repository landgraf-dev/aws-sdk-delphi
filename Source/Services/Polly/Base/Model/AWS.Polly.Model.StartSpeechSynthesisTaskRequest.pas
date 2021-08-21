unit AWS.Polly.Model.StartSpeechSynthesisTaskRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Polly.Model.Request, 
  AWS.Polly.Enums;

type
  TStartSpeechSynthesisTaskRequest = class;
  
  IStartSpeechSynthesisTaskRequest = interface
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
    function GetOutputS3BucketName: string;
    procedure SetOutputS3BucketName(const Value: string);
    function GetOutputS3KeyPrefix: string;
    procedure SetOutputS3KeyPrefix(const Value: string);
    function GetSampleRate: string;
    procedure SetSampleRate(const Value: string);
    function GetSnsTopicArn: string;
    procedure SetSnsTopicArn(const Value: string);
    function GetSpeechMarkTypes: TList<string>;
    procedure SetSpeechMarkTypes(const Value: TList<string>);
    function GetKeepSpeechMarkTypes: Boolean;
    procedure SetKeepSpeechMarkTypes(const Value: Boolean);
    function GetText: string;
    procedure SetText(const Value: string);
    function GetTextType: TTextType;
    procedure SetTextType(const Value: TTextType);
    function GetVoiceId: TVoiceId;
    procedure SetVoiceId(const Value: TVoiceId);
    function Obj: TStartSpeechSynthesisTaskRequest;
    function IsSetEngine: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLexiconNames: Boolean;
    function IsSetOutputFormat: Boolean;
    function IsSetOutputS3BucketName: Boolean;
    function IsSetOutputS3KeyPrefix: Boolean;
    function IsSetSampleRate: Boolean;
    function IsSetSnsTopicArn: Boolean;
    function IsSetSpeechMarkTypes: Boolean;
    function IsSetText: Boolean;
    function IsSetTextType: Boolean;
    function IsSetVoiceId: Boolean;
    property Engine: TEngine read GetEngine write SetEngine;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LexiconNames: TList<string> read GetLexiconNames write SetLexiconNames;
    property KeepLexiconNames: Boolean read GetKeepLexiconNames write SetKeepLexiconNames;
    property OutputFormat: TOutputFormat read GetOutputFormat write SetOutputFormat;
    property OutputS3BucketName: string read GetOutputS3BucketName write SetOutputS3BucketName;
    property OutputS3KeyPrefix: string read GetOutputS3KeyPrefix write SetOutputS3KeyPrefix;
    property SampleRate: string read GetSampleRate write SetSampleRate;
    property SnsTopicArn: string read GetSnsTopicArn write SetSnsTopicArn;
    property SpeechMarkTypes: TList<string> read GetSpeechMarkTypes write SetSpeechMarkTypes;
    property KeepSpeechMarkTypes: Boolean read GetKeepSpeechMarkTypes write SetKeepSpeechMarkTypes;
    property Text: string read GetText write SetText;
    property TextType: TTextType read GetTextType write SetTextType;
    property VoiceId: TVoiceId read GetVoiceId write SetVoiceId;
  end;
  
  TStartSpeechSynthesisTaskRequest = class(TAmazonPollyRequest, IStartSpeechSynthesisTaskRequest)
  strict private
    FEngine: Nullable<TEngine>;
    FLanguageCode: Nullable<TLanguageCode>;
    FLexiconNames: TList<string>;
    FKeepLexiconNames: Boolean;
    FOutputFormat: Nullable<TOutputFormat>;
    FOutputS3BucketName: Nullable<string>;
    FOutputS3KeyPrefix: Nullable<string>;
    FSampleRate: Nullable<string>;
    FSnsTopicArn: Nullable<string>;
    FSpeechMarkTypes: TList<string>;
    FKeepSpeechMarkTypes: Boolean;
    FText: Nullable<string>;
    FTextType: Nullable<TTextType>;
    FVoiceId: Nullable<TVoiceId>;
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
    function GetOutputS3BucketName: string;
    procedure SetOutputS3BucketName(const Value: string);
    function GetOutputS3KeyPrefix: string;
    procedure SetOutputS3KeyPrefix(const Value: string);
    function GetSampleRate: string;
    procedure SetSampleRate(const Value: string);
    function GetSnsTopicArn: string;
    procedure SetSnsTopicArn(const Value: string);
    function GetSpeechMarkTypes: TList<string>;
    procedure SetSpeechMarkTypes(const Value: TList<string>);
    function GetKeepSpeechMarkTypes: Boolean;
    procedure SetKeepSpeechMarkTypes(const Value: Boolean);
    function GetText: string;
    procedure SetText(const Value: string);
    function GetTextType: TTextType;
    procedure SetTextType(const Value: TTextType);
    function GetVoiceId: TVoiceId;
    procedure SetVoiceId(const Value: TVoiceId);
  strict protected
    function Obj: TStartSpeechSynthesisTaskRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetEngine: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLexiconNames: Boolean;
    function IsSetOutputFormat: Boolean;
    function IsSetOutputS3BucketName: Boolean;
    function IsSetOutputS3KeyPrefix: Boolean;
    function IsSetSampleRate: Boolean;
    function IsSetSnsTopicArn: Boolean;
    function IsSetSpeechMarkTypes: Boolean;
    function IsSetText: Boolean;
    function IsSetTextType: Boolean;
    function IsSetVoiceId: Boolean;
    property Engine: TEngine read GetEngine write SetEngine;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LexiconNames: TList<string> read GetLexiconNames write SetLexiconNames;
    property KeepLexiconNames: Boolean read GetKeepLexiconNames write SetKeepLexiconNames;
    property OutputFormat: TOutputFormat read GetOutputFormat write SetOutputFormat;
    property OutputS3BucketName: string read GetOutputS3BucketName write SetOutputS3BucketName;
    property OutputS3KeyPrefix: string read GetOutputS3KeyPrefix write SetOutputS3KeyPrefix;
    property SampleRate: string read GetSampleRate write SetSampleRate;
    property SnsTopicArn: string read GetSnsTopicArn write SetSnsTopicArn;
    property SpeechMarkTypes: TList<string> read GetSpeechMarkTypes write SetSpeechMarkTypes;
    property KeepSpeechMarkTypes: Boolean read GetKeepSpeechMarkTypes write SetKeepSpeechMarkTypes;
    property Text: string read GetText write SetText;
    property TextType: TTextType read GetTextType write SetTextType;
    property VoiceId: TVoiceId read GetVoiceId write SetVoiceId;
  end;
  
implementation

{ TStartSpeechSynthesisTaskRequest }

constructor TStartSpeechSynthesisTaskRequest.Create;
begin
  inherited;
  FLexiconNames := TList<string>.Create;
  FSpeechMarkTypes := TList<string>.Create;
end;

destructor TStartSpeechSynthesisTaskRequest.Destroy;
begin
  SpeechMarkTypes := nil;
  LexiconNames := nil;
  inherited;
end;

function TStartSpeechSynthesisTaskRequest.Obj: TStartSpeechSynthesisTaskRequest;
begin
  Result := Self;
end;

function TStartSpeechSynthesisTaskRequest.GetEngine: TEngine;
begin
  Result := FEngine.ValueOrDefault;
end;

procedure TStartSpeechSynthesisTaskRequest.SetEngine(const Value: TEngine);
begin
  FEngine := Value;
end;

function TStartSpeechSynthesisTaskRequest.IsSetEngine: Boolean;
begin
  Result := FEngine.HasValue;
end;

function TStartSpeechSynthesisTaskRequest.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TStartSpeechSynthesisTaskRequest.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TStartSpeechSynthesisTaskRequest.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TStartSpeechSynthesisTaskRequest.GetLexiconNames: TList<string>;
begin
  Result := FLexiconNames;
end;

procedure TStartSpeechSynthesisTaskRequest.SetLexiconNames(const Value: TList<string>);
begin
  if FLexiconNames <> Value then
  begin
    if not KeepLexiconNames then
      FLexiconNames.Free;
    FLexiconNames := Value;
  end;
end;

function TStartSpeechSynthesisTaskRequest.GetKeepLexiconNames: Boolean;
begin
  Result := FKeepLexiconNames;
end;

procedure TStartSpeechSynthesisTaskRequest.SetKeepLexiconNames(const Value: Boolean);
begin
  FKeepLexiconNames := Value;
end;

function TStartSpeechSynthesisTaskRequest.IsSetLexiconNames: Boolean;
begin
  Result := (FLexiconNames <> nil) and (FLexiconNames.Count > 0);
end;

function TStartSpeechSynthesisTaskRequest.GetOutputFormat: TOutputFormat;
begin
  Result := FOutputFormat.ValueOrDefault;
end;

procedure TStartSpeechSynthesisTaskRequest.SetOutputFormat(const Value: TOutputFormat);
begin
  FOutputFormat := Value;
end;

function TStartSpeechSynthesisTaskRequest.IsSetOutputFormat: Boolean;
begin
  Result := FOutputFormat.HasValue;
end;

function TStartSpeechSynthesisTaskRequest.GetOutputS3BucketName: string;
begin
  Result := FOutputS3BucketName.ValueOrDefault;
end;

procedure TStartSpeechSynthesisTaskRequest.SetOutputS3BucketName(const Value: string);
begin
  FOutputS3BucketName := Value;
end;

function TStartSpeechSynthesisTaskRequest.IsSetOutputS3BucketName: Boolean;
begin
  Result := FOutputS3BucketName.HasValue;
end;

function TStartSpeechSynthesisTaskRequest.GetOutputS3KeyPrefix: string;
begin
  Result := FOutputS3KeyPrefix.ValueOrDefault;
end;

procedure TStartSpeechSynthesisTaskRequest.SetOutputS3KeyPrefix(const Value: string);
begin
  FOutputS3KeyPrefix := Value;
end;

function TStartSpeechSynthesisTaskRequest.IsSetOutputS3KeyPrefix: Boolean;
begin
  Result := FOutputS3KeyPrefix.HasValue;
end;

function TStartSpeechSynthesisTaskRequest.GetSampleRate: string;
begin
  Result := FSampleRate.ValueOrDefault;
end;

procedure TStartSpeechSynthesisTaskRequest.SetSampleRate(const Value: string);
begin
  FSampleRate := Value;
end;

function TStartSpeechSynthesisTaskRequest.IsSetSampleRate: Boolean;
begin
  Result := FSampleRate.HasValue;
end;

function TStartSpeechSynthesisTaskRequest.GetSnsTopicArn: string;
begin
  Result := FSnsTopicArn.ValueOrDefault;
end;

procedure TStartSpeechSynthesisTaskRequest.SetSnsTopicArn(const Value: string);
begin
  FSnsTopicArn := Value;
end;

function TStartSpeechSynthesisTaskRequest.IsSetSnsTopicArn: Boolean;
begin
  Result := FSnsTopicArn.HasValue;
end;

function TStartSpeechSynthesisTaskRequest.GetSpeechMarkTypes: TList<string>;
begin
  Result := FSpeechMarkTypes;
end;

procedure TStartSpeechSynthesisTaskRequest.SetSpeechMarkTypes(const Value: TList<string>);
begin
  if FSpeechMarkTypes <> Value then
  begin
    if not KeepSpeechMarkTypes then
      FSpeechMarkTypes.Free;
    FSpeechMarkTypes := Value;
  end;
end;

function TStartSpeechSynthesisTaskRequest.GetKeepSpeechMarkTypes: Boolean;
begin
  Result := FKeepSpeechMarkTypes;
end;

procedure TStartSpeechSynthesisTaskRequest.SetKeepSpeechMarkTypes(const Value: Boolean);
begin
  FKeepSpeechMarkTypes := Value;
end;

function TStartSpeechSynthesisTaskRequest.IsSetSpeechMarkTypes: Boolean;
begin
  Result := (FSpeechMarkTypes <> nil) and (FSpeechMarkTypes.Count > 0);
end;

function TStartSpeechSynthesisTaskRequest.GetText: string;
begin
  Result := FText.ValueOrDefault;
end;

procedure TStartSpeechSynthesisTaskRequest.SetText(const Value: string);
begin
  FText := Value;
end;

function TStartSpeechSynthesisTaskRequest.IsSetText: Boolean;
begin
  Result := FText.HasValue;
end;

function TStartSpeechSynthesisTaskRequest.GetTextType: TTextType;
begin
  Result := FTextType.ValueOrDefault;
end;

procedure TStartSpeechSynthesisTaskRequest.SetTextType(const Value: TTextType);
begin
  FTextType := Value;
end;

function TStartSpeechSynthesisTaskRequest.IsSetTextType: Boolean;
begin
  Result := FTextType.HasValue;
end;

function TStartSpeechSynthesisTaskRequest.GetVoiceId: TVoiceId;
begin
  Result := FVoiceId.ValueOrDefault;
end;

procedure TStartSpeechSynthesisTaskRequest.SetVoiceId(const Value: TVoiceId);
begin
  FVoiceId := Value;
end;

function TStartSpeechSynthesisTaskRequest.IsSetVoiceId: Boolean;
begin
  Result := FVoiceId.HasValue;
end;

end.
