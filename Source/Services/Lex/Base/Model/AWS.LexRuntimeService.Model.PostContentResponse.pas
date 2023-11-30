unit AWS.LexRuntimeService.Model.PostContentResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  System.Classes, 
  AWS.LexRuntimeService.Enums;

type
  TPostContentResponse = class;
  
  IPostContentResponse = interface(IAmazonWebServiceResponse)
    function GetActiveContexts: string;
    procedure SetActiveContexts(const Value: string);
    function GetAlternativeIntents: string;
    procedure SetAlternativeIntents(const Value: string);
    function GetAudioStream: TStream;
    procedure SetAudioStream(const Value: TStream);
    function GetKeepAudioStream: Boolean;
    procedure SetKeepAudioStream(const Value: Boolean);
    function GetBotVersion: string;
    procedure SetBotVersion(const Value: string);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetDialogState: TDialogState;
    procedure SetDialogState(const Value: TDialogState);
    function GetEncodedInputTranscript: string;
    procedure SetEncodedInputTranscript(const Value: string);
    function GetEncodedMessage: string;
    procedure SetEncodedMessage(const Value: string);
    function GetInputTranscript: string;
    procedure SetInputTranscript(const Value: string);
    function GetIntentName: string;
    procedure SetIntentName(const Value: string);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetMessageFormat: TMessageFormatType;
    procedure SetMessageFormat(const Value: TMessageFormatType);
    function GetNluIntentConfidence: string;
    procedure SetNluIntentConfidence(const Value: string);
    function GetSentimentResponse: string;
    procedure SetSentimentResponse(const Value: string);
    function GetSessionAttributes: string;
    procedure SetSessionAttributes(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSlotToElicit: string;
    procedure SetSlotToElicit(const Value: string);
    function GetSlots: string;
    procedure SetSlots(const Value: string);
    function Obj: TPostContentResponse;
    function IsSetActiveContexts: Boolean;
    function IsSetAlternativeIntents: Boolean;
    function IsSetAudioStream: Boolean;
    function IsSetBotVersion: Boolean;
    function IsSetContentType: Boolean;
    function IsSetDialogState: Boolean;
    function IsSetEncodedInputTranscript: Boolean;
    function IsSetEncodedMessage: Boolean;
    function IsSetInputTranscript: Boolean;
    function IsSetIntentName: Boolean;
    function IsSetMessage: Boolean;
    function IsSetMessageFormat: Boolean;
    function IsSetNluIntentConfidence: Boolean;
    function IsSetSentimentResponse: Boolean;
    function IsSetSessionAttributes: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSlotToElicit: Boolean;
    function IsSetSlots: Boolean;
    property ActiveContexts: string read GetActiveContexts write SetActiveContexts;
    property AlternativeIntents: string read GetAlternativeIntents write SetAlternativeIntents;
    property AudioStream: TStream read GetAudioStream write SetAudioStream;
    property KeepAudioStream: Boolean read GetKeepAudioStream write SetKeepAudioStream;
    property BotVersion: string read GetBotVersion write SetBotVersion;
    property ContentType: string read GetContentType write SetContentType;
    property DialogState: TDialogState read GetDialogState write SetDialogState;
    property EncodedInputTranscript: string read GetEncodedInputTranscript write SetEncodedInputTranscript;
    property EncodedMessage: string read GetEncodedMessage write SetEncodedMessage;
    property InputTranscript: string read GetInputTranscript write SetInputTranscript;
    property IntentName: string read GetIntentName write SetIntentName;
    property Message: string read GetMessage write SetMessage;
    property MessageFormat: TMessageFormatType read GetMessageFormat write SetMessageFormat;
    property NluIntentConfidence: string read GetNluIntentConfidence write SetNluIntentConfidence;
    property SentimentResponse: string read GetSentimentResponse write SetSentimentResponse;
    property SessionAttributes: string read GetSessionAttributes write SetSessionAttributes;
    property SessionId: string read GetSessionId write SetSessionId;
    property SlotToElicit: string read GetSlotToElicit write SetSlotToElicit;
    property Slots: string read GetSlots write SetSlots;
  end;
  
  TPostContentResponse = class(TAmazonWebServiceResponse, IPostContentResponse)
  strict private
    FActiveContexts: Nullable<string>;
    FAlternativeIntents: Nullable<string>;
    FAudioStream: TStream;
    FKeepAudioStream: Boolean;
    FBotVersion: Nullable<string>;
    FContentType: Nullable<string>;
    FDialogState: Nullable<TDialogState>;
    FEncodedInputTranscript: Nullable<string>;
    FEncodedMessage: Nullable<string>;
    FInputTranscript: Nullable<string>;
    FIntentName: Nullable<string>;
    FMessage: Nullable<string>;
    FMessageFormat: Nullable<TMessageFormatType>;
    FNluIntentConfidence: Nullable<string>;
    FSentimentResponse: Nullable<string>;
    FSessionAttributes: Nullable<string>;
    FSessionId: Nullable<string>;
    FSlotToElicit: Nullable<string>;
    FSlots: Nullable<string>;
    function GetActiveContexts: string;
    procedure SetActiveContexts(const Value: string);
    function GetAlternativeIntents: string;
    procedure SetAlternativeIntents(const Value: string);
    function GetAudioStream: TStream;
    procedure SetAudioStream(const Value: TStream);
    function GetKeepAudioStream: Boolean;
    procedure SetKeepAudioStream(const Value: Boolean);
    function GetBotVersion: string;
    procedure SetBotVersion(const Value: string);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetDialogState: TDialogState;
    procedure SetDialogState(const Value: TDialogState);
    function GetEncodedInputTranscript: string;
    procedure SetEncodedInputTranscript(const Value: string);
    function GetEncodedMessage: string;
    procedure SetEncodedMessage(const Value: string);
    function GetInputTranscript: string;
    procedure SetInputTranscript(const Value: string);
    function GetIntentName: string;
    procedure SetIntentName(const Value: string);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetMessageFormat: TMessageFormatType;
    procedure SetMessageFormat(const Value: TMessageFormatType);
    function GetNluIntentConfidence: string;
    procedure SetNluIntentConfidence(const Value: string);
    function GetSentimentResponse: string;
    procedure SetSentimentResponse(const Value: string);
    function GetSessionAttributes: string;
    procedure SetSessionAttributes(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSlotToElicit: string;
    procedure SetSlotToElicit(const Value: string);
    function GetSlots: string;
    procedure SetSlots(const Value: string);
  strict protected
    function Obj: TPostContentResponse;
  public
    destructor Destroy; override;
    function IsSetActiveContexts: Boolean;
    function IsSetAlternativeIntents: Boolean;
    function IsSetAudioStream: Boolean;
    function IsSetBotVersion: Boolean;
    function IsSetContentType: Boolean;
    function IsSetDialogState: Boolean;
    function IsSetEncodedInputTranscript: Boolean;
    function IsSetEncodedMessage: Boolean;
    function IsSetInputTranscript: Boolean;
    function IsSetIntentName: Boolean;
    function IsSetMessage: Boolean;
    function IsSetMessageFormat: Boolean;
    function IsSetNluIntentConfidence: Boolean;
    function IsSetSentimentResponse: Boolean;
    function IsSetSessionAttributes: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSlotToElicit: Boolean;
    function IsSetSlots: Boolean;
    property ActiveContexts: string read GetActiveContexts write SetActiveContexts;
    property AlternativeIntents: string read GetAlternativeIntents write SetAlternativeIntents;
    property AudioStream: TStream read GetAudioStream write SetAudioStream;
    property KeepAudioStream: Boolean read GetKeepAudioStream write SetKeepAudioStream;
    property BotVersion: string read GetBotVersion write SetBotVersion;
    property ContentType: string read GetContentType write SetContentType;
    property DialogState: TDialogState read GetDialogState write SetDialogState;
    property EncodedInputTranscript: string read GetEncodedInputTranscript write SetEncodedInputTranscript;
    property EncodedMessage: string read GetEncodedMessage write SetEncodedMessage;
    property InputTranscript: string read GetInputTranscript write SetInputTranscript;
    property IntentName: string read GetIntentName write SetIntentName;
    property Message: string read GetMessage write SetMessage;
    property MessageFormat: TMessageFormatType read GetMessageFormat write SetMessageFormat;
    property NluIntentConfidence: string read GetNluIntentConfidence write SetNluIntentConfidence;
    property SentimentResponse: string read GetSentimentResponse write SetSentimentResponse;
    property SessionAttributes: string read GetSessionAttributes write SetSessionAttributes;
    property SessionId: string read GetSessionId write SetSessionId;
    property SlotToElicit: string read GetSlotToElicit write SetSlotToElicit;
    property Slots: string read GetSlots write SetSlots;
  end;
  
implementation

{ TPostContentResponse }

destructor TPostContentResponse.Destroy;
begin
  AudioStream := nil;
  inherited;
end;

function TPostContentResponse.Obj: TPostContentResponse;
begin
  Result := Self;
end;

function TPostContentResponse.GetActiveContexts: string;
begin
  Result := FActiveContexts.ValueOrDefault;
end;

procedure TPostContentResponse.SetActiveContexts(const Value: string);
begin
  FActiveContexts := Value;
end;

function TPostContentResponse.IsSetActiveContexts: Boolean;
begin
  Result := FActiveContexts.HasValue;
end;

function TPostContentResponse.GetAlternativeIntents: string;
begin
  Result := FAlternativeIntents.ValueOrDefault;
end;

procedure TPostContentResponse.SetAlternativeIntents(const Value: string);
begin
  FAlternativeIntents := Value;
end;

function TPostContentResponse.IsSetAlternativeIntents: Boolean;
begin
  Result := FAlternativeIntents.HasValue;
end;

function TPostContentResponse.GetAudioStream: TStream;
begin
  Result := FAudioStream;
end;

procedure TPostContentResponse.SetAudioStream(const Value: TStream);
begin
  if FAudioStream <> Value then
  begin
    if not KeepAudioStream then
      FAudioStream.Free;
    FAudioStream := Value;
  end;
end;

function TPostContentResponse.GetKeepAudioStream: Boolean;
begin
  Result := FKeepAudioStream;
end;

procedure TPostContentResponse.SetKeepAudioStream(const Value: Boolean);
begin
  FKeepAudioStream := Value;
end;

function TPostContentResponse.IsSetAudioStream: Boolean;
begin
  Result := FAudioStream <> nil;
end;

function TPostContentResponse.GetBotVersion: string;
begin
  Result := FBotVersion.ValueOrDefault;
end;

procedure TPostContentResponse.SetBotVersion(const Value: string);
begin
  FBotVersion := Value;
end;

function TPostContentResponse.IsSetBotVersion: Boolean;
begin
  Result := FBotVersion.HasValue;
end;

function TPostContentResponse.GetContentType: string;
begin
  Result := FContentType.ValueOrDefault;
end;

procedure TPostContentResponse.SetContentType(const Value: string);
begin
  FContentType := Value;
end;

function TPostContentResponse.IsSetContentType: Boolean;
begin
  Result := FContentType.HasValue;
end;

function TPostContentResponse.GetDialogState: TDialogState;
begin
  Result := FDialogState.ValueOrDefault;
end;

procedure TPostContentResponse.SetDialogState(const Value: TDialogState);
begin
  FDialogState := Value;
end;

function TPostContentResponse.IsSetDialogState: Boolean;
begin
  Result := FDialogState.HasValue;
end;

function TPostContentResponse.GetEncodedInputTranscript: string;
begin
  Result := FEncodedInputTranscript.ValueOrDefault;
end;

procedure TPostContentResponse.SetEncodedInputTranscript(const Value: string);
begin
  FEncodedInputTranscript := Value;
end;

function TPostContentResponse.IsSetEncodedInputTranscript: Boolean;
begin
  Result := FEncodedInputTranscript.HasValue;
end;

function TPostContentResponse.GetEncodedMessage: string;
begin
  Result := FEncodedMessage.ValueOrDefault;
end;

procedure TPostContentResponse.SetEncodedMessage(const Value: string);
begin
  FEncodedMessage := Value;
end;

function TPostContentResponse.IsSetEncodedMessage: Boolean;
begin
  Result := FEncodedMessage.HasValue;
end;

function TPostContentResponse.GetInputTranscript: string;
begin
  Result := FInputTranscript.ValueOrDefault;
end;

procedure TPostContentResponse.SetInputTranscript(const Value: string);
begin
  FInputTranscript := Value;
end;

function TPostContentResponse.IsSetInputTranscript: Boolean;
begin
  Result := FInputTranscript.HasValue;
end;

function TPostContentResponse.GetIntentName: string;
begin
  Result := FIntentName.ValueOrDefault;
end;

procedure TPostContentResponse.SetIntentName(const Value: string);
begin
  FIntentName := Value;
end;

function TPostContentResponse.IsSetIntentName: Boolean;
begin
  Result := FIntentName.HasValue;
end;

function TPostContentResponse.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure TPostContentResponse.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function TPostContentResponse.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

function TPostContentResponse.GetMessageFormat: TMessageFormatType;
begin
  Result := FMessageFormat.ValueOrDefault;
end;

procedure TPostContentResponse.SetMessageFormat(const Value: TMessageFormatType);
begin
  FMessageFormat := Value;
end;

function TPostContentResponse.IsSetMessageFormat: Boolean;
begin
  Result := FMessageFormat.HasValue;
end;

function TPostContentResponse.GetNluIntentConfidence: string;
begin
  Result := FNluIntentConfidence.ValueOrDefault;
end;

procedure TPostContentResponse.SetNluIntentConfidence(const Value: string);
begin
  FNluIntentConfidence := Value;
end;

function TPostContentResponse.IsSetNluIntentConfidence: Boolean;
begin
  Result := FNluIntentConfidence.HasValue;
end;

function TPostContentResponse.GetSentimentResponse: string;
begin
  Result := FSentimentResponse.ValueOrDefault;
end;

procedure TPostContentResponse.SetSentimentResponse(const Value: string);
begin
  FSentimentResponse := Value;
end;

function TPostContentResponse.IsSetSentimentResponse: Boolean;
begin
  Result := FSentimentResponse.HasValue;
end;

function TPostContentResponse.GetSessionAttributes: string;
begin
  Result := FSessionAttributes.ValueOrDefault;
end;

procedure TPostContentResponse.SetSessionAttributes(const Value: string);
begin
  FSessionAttributes := Value;
end;

function TPostContentResponse.IsSetSessionAttributes: Boolean;
begin
  Result := FSessionAttributes.HasValue;
end;

function TPostContentResponse.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TPostContentResponse.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TPostContentResponse.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

function TPostContentResponse.GetSlotToElicit: string;
begin
  Result := FSlotToElicit.ValueOrDefault;
end;

procedure TPostContentResponse.SetSlotToElicit(const Value: string);
begin
  FSlotToElicit := Value;
end;

function TPostContentResponse.IsSetSlotToElicit: Boolean;
begin
  Result := FSlotToElicit.HasValue;
end;

function TPostContentResponse.GetSlots: string;
begin
  Result := FSlots.ValueOrDefault;
end;

procedure TPostContentResponse.SetSlots(const Value: string);
begin
  FSlots := Value;
end;

function TPostContentResponse.IsSetSlots: Boolean;
begin
  Result := FSlots.HasValue;
end;

end.
