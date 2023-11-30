unit AWS.LexRuntimeService.Model.PostTextResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.LexRuntimeService.Model.ActiveContext, 
  AWS.LexRuntimeService.Model.PredictedIntent, 
  AWS.Nullable, 
  AWS.LexRuntimeService.Enums, 
  AWS.LexRuntimeService.Model.IntentConfidence, 
  AWS.LexRuntimeService.Model.ResponseCard, 
  AWS.LexRuntimeService.Model.SentimentResponse;

type
  TPostTextResponse = class;
  
  IPostTextResponse = interface(IAmazonWebServiceResponse)
    function GetActiveContexts: TObjectList<TActiveContext>;
    procedure SetActiveContexts(const Value: TObjectList<TActiveContext>);
    function GetKeepActiveContexts: Boolean;
    procedure SetKeepActiveContexts(const Value: Boolean);
    function GetAlternativeIntents: TObjectList<TPredictedIntent>;
    procedure SetAlternativeIntents(const Value: TObjectList<TPredictedIntent>);
    function GetKeepAlternativeIntents: Boolean;
    procedure SetKeepAlternativeIntents(const Value: Boolean);
    function GetBotVersion: string;
    procedure SetBotVersion(const Value: string);
    function GetDialogState: TDialogState;
    procedure SetDialogState(const Value: TDialogState);
    function GetIntentName: string;
    procedure SetIntentName(const Value: string);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetMessageFormat: TMessageFormatType;
    procedure SetMessageFormat(const Value: TMessageFormatType);
    function GetNluIntentConfidence: TIntentConfidence;
    procedure SetNluIntentConfidence(const Value: TIntentConfidence);
    function GetKeepNluIntentConfidence: Boolean;
    procedure SetKeepNluIntentConfidence(const Value: Boolean);
    function GetResponseCard: TResponseCard;
    procedure SetResponseCard(const Value: TResponseCard);
    function GetKeepResponseCard: Boolean;
    procedure SetKeepResponseCard(const Value: Boolean);
    function GetSentimentResponse: TSentimentResponse;
    procedure SetSentimentResponse(const Value: TSentimentResponse);
    function GetKeepSentimentResponse: Boolean;
    procedure SetKeepSentimentResponse(const Value: Boolean);
    function GetSessionAttributes: TDictionary<string, string>;
    procedure SetSessionAttributes(const Value: TDictionary<string, string>);
    function GetKeepSessionAttributes: Boolean;
    procedure SetKeepSessionAttributes(const Value: Boolean);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSlotToElicit: string;
    procedure SetSlotToElicit(const Value: string);
    function GetSlots: TDictionary<string, string>;
    procedure SetSlots(const Value: TDictionary<string, string>);
    function GetKeepSlots: Boolean;
    procedure SetKeepSlots(const Value: Boolean);
    function Obj: TPostTextResponse;
    function IsSetActiveContexts: Boolean;
    function IsSetAlternativeIntents: Boolean;
    function IsSetBotVersion: Boolean;
    function IsSetDialogState: Boolean;
    function IsSetIntentName: Boolean;
    function IsSetMessage: Boolean;
    function IsSetMessageFormat: Boolean;
    function IsSetNluIntentConfidence: Boolean;
    function IsSetResponseCard: Boolean;
    function IsSetSentimentResponse: Boolean;
    function IsSetSessionAttributes: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSlotToElicit: Boolean;
    function IsSetSlots: Boolean;
    property ActiveContexts: TObjectList<TActiveContext> read GetActiveContexts write SetActiveContexts;
    property KeepActiveContexts: Boolean read GetKeepActiveContexts write SetKeepActiveContexts;
    property AlternativeIntents: TObjectList<TPredictedIntent> read GetAlternativeIntents write SetAlternativeIntents;
    property KeepAlternativeIntents: Boolean read GetKeepAlternativeIntents write SetKeepAlternativeIntents;
    property BotVersion: string read GetBotVersion write SetBotVersion;
    property DialogState: TDialogState read GetDialogState write SetDialogState;
    property IntentName: string read GetIntentName write SetIntentName;
    property Message: string read GetMessage write SetMessage;
    property MessageFormat: TMessageFormatType read GetMessageFormat write SetMessageFormat;
    property NluIntentConfidence: TIntentConfidence read GetNluIntentConfidence write SetNluIntentConfidence;
    property KeepNluIntentConfidence: Boolean read GetKeepNluIntentConfidence write SetKeepNluIntentConfidence;
    property ResponseCard: TResponseCard read GetResponseCard write SetResponseCard;
    property KeepResponseCard: Boolean read GetKeepResponseCard write SetKeepResponseCard;
    property SentimentResponse: TSentimentResponse read GetSentimentResponse write SetSentimentResponse;
    property KeepSentimentResponse: Boolean read GetKeepSentimentResponse write SetKeepSentimentResponse;
    property SessionAttributes: TDictionary<string, string> read GetSessionAttributes write SetSessionAttributes;
    property KeepSessionAttributes: Boolean read GetKeepSessionAttributes write SetKeepSessionAttributes;
    property SessionId: string read GetSessionId write SetSessionId;
    property SlotToElicit: string read GetSlotToElicit write SetSlotToElicit;
    property Slots: TDictionary<string, string> read GetSlots write SetSlots;
    property KeepSlots: Boolean read GetKeepSlots write SetKeepSlots;
  end;
  
  TPostTextResponse = class(TAmazonWebServiceResponse, IPostTextResponse)
  strict private
    FActiveContexts: TObjectList<TActiveContext>;
    FKeepActiveContexts: Boolean;
    FAlternativeIntents: TObjectList<TPredictedIntent>;
    FKeepAlternativeIntents: Boolean;
    FBotVersion: Nullable<string>;
    FDialogState: Nullable<TDialogState>;
    FIntentName: Nullable<string>;
    FMessage: Nullable<string>;
    FMessageFormat: Nullable<TMessageFormatType>;
    FNluIntentConfidence: TIntentConfidence;
    FKeepNluIntentConfidence: Boolean;
    FResponseCard: TResponseCard;
    FKeepResponseCard: Boolean;
    FSentimentResponse: TSentimentResponse;
    FKeepSentimentResponse: Boolean;
    FSessionAttributes: TDictionary<string, string>;
    FKeepSessionAttributes: Boolean;
    FSessionId: Nullable<string>;
    FSlotToElicit: Nullable<string>;
    FSlots: TDictionary<string, string>;
    FKeepSlots: Boolean;
    function GetActiveContexts: TObjectList<TActiveContext>;
    procedure SetActiveContexts(const Value: TObjectList<TActiveContext>);
    function GetKeepActiveContexts: Boolean;
    procedure SetKeepActiveContexts(const Value: Boolean);
    function GetAlternativeIntents: TObjectList<TPredictedIntent>;
    procedure SetAlternativeIntents(const Value: TObjectList<TPredictedIntent>);
    function GetKeepAlternativeIntents: Boolean;
    procedure SetKeepAlternativeIntents(const Value: Boolean);
    function GetBotVersion: string;
    procedure SetBotVersion(const Value: string);
    function GetDialogState: TDialogState;
    procedure SetDialogState(const Value: TDialogState);
    function GetIntentName: string;
    procedure SetIntentName(const Value: string);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetMessageFormat: TMessageFormatType;
    procedure SetMessageFormat(const Value: TMessageFormatType);
    function GetNluIntentConfidence: TIntentConfidence;
    procedure SetNluIntentConfidence(const Value: TIntentConfidence);
    function GetKeepNluIntentConfidence: Boolean;
    procedure SetKeepNluIntentConfidence(const Value: Boolean);
    function GetResponseCard: TResponseCard;
    procedure SetResponseCard(const Value: TResponseCard);
    function GetKeepResponseCard: Boolean;
    procedure SetKeepResponseCard(const Value: Boolean);
    function GetSentimentResponse: TSentimentResponse;
    procedure SetSentimentResponse(const Value: TSentimentResponse);
    function GetKeepSentimentResponse: Boolean;
    procedure SetKeepSentimentResponse(const Value: Boolean);
    function GetSessionAttributes: TDictionary<string, string>;
    procedure SetSessionAttributes(const Value: TDictionary<string, string>);
    function GetKeepSessionAttributes: Boolean;
    procedure SetKeepSessionAttributes(const Value: Boolean);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSlotToElicit: string;
    procedure SetSlotToElicit(const Value: string);
    function GetSlots: TDictionary<string, string>;
    procedure SetSlots(const Value: TDictionary<string, string>);
    function GetKeepSlots: Boolean;
    procedure SetKeepSlots(const Value: Boolean);
  strict protected
    function Obj: TPostTextResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetActiveContexts: Boolean;
    function IsSetAlternativeIntents: Boolean;
    function IsSetBotVersion: Boolean;
    function IsSetDialogState: Boolean;
    function IsSetIntentName: Boolean;
    function IsSetMessage: Boolean;
    function IsSetMessageFormat: Boolean;
    function IsSetNluIntentConfidence: Boolean;
    function IsSetResponseCard: Boolean;
    function IsSetSentimentResponse: Boolean;
    function IsSetSessionAttributes: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSlotToElicit: Boolean;
    function IsSetSlots: Boolean;
    property ActiveContexts: TObjectList<TActiveContext> read GetActiveContexts write SetActiveContexts;
    property KeepActiveContexts: Boolean read GetKeepActiveContexts write SetKeepActiveContexts;
    property AlternativeIntents: TObjectList<TPredictedIntent> read GetAlternativeIntents write SetAlternativeIntents;
    property KeepAlternativeIntents: Boolean read GetKeepAlternativeIntents write SetKeepAlternativeIntents;
    property BotVersion: string read GetBotVersion write SetBotVersion;
    property DialogState: TDialogState read GetDialogState write SetDialogState;
    property IntentName: string read GetIntentName write SetIntentName;
    property Message: string read GetMessage write SetMessage;
    property MessageFormat: TMessageFormatType read GetMessageFormat write SetMessageFormat;
    property NluIntentConfidence: TIntentConfidence read GetNluIntentConfidence write SetNluIntentConfidence;
    property KeepNluIntentConfidence: Boolean read GetKeepNluIntentConfidence write SetKeepNluIntentConfidence;
    property ResponseCard: TResponseCard read GetResponseCard write SetResponseCard;
    property KeepResponseCard: Boolean read GetKeepResponseCard write SetKeepResponseCard;
    property SentimentResponse: TSentimentResponse read GetSentimentResponse write SetSentimentResponse;
    property KeepSentimentResponse: Boolean read GetKeepSentimentResponse write SetKeepSentimentResponse;
    property SessionAttributes: TDictionary<string, string> read GetSessionAttributes write SetSessionAttributes;
    property KeepSessionAttributes: Boolean read GetKeepSessionAttributes write SetKeepSessionAttributes;
    property SessionId: string read GetSessionId write SetSessionId;
    property SlotToElicit: string read GetSlotToElicit write SetSlotToElicit;
    property Slots: TDictionary<string, string> read GetSlots write SetSlots;
    property KeepSlots: Boolean read GetKeepSlots write SetKeepSlots;
  end;
  
implementation

{ TPostTextResponse }

constructor TPostTextResponse.Create;
begin
  inherited;
  FActiveContexts := TObjectList<TActiveContext>.Create;
  FAlternativeIntents := TObjectList<TPredictedIntent>.Create;
  FSessionAttributes := TDictionary<string, string>.Create;
  FSlots := TDictionary<string, string>.Create;
end;

destructor TPostTextResponse.Destroy;
begin
  Slots := nil;
  SessionAttributes := nil;
  SentimentResponse := nil;
  ResponseCard := nil;
  NluIntentConfidence := nil;
  AlternativeIntents := nil;
  ActiveContexts := nil;
  inherited;
end;

function TPostTextResponse.Obj: TPostTextResponse;
begin
  Result := Self;
end;

function TPostTextResponse.GetActiveContexts: TObjectList<TActiveContext>;
begin
  Result := FActiveContexts;
end;

procedure TPostTextResponse.SetActiveContexts(const Value: TObjectList<TActiveContext>);
begin
  if FActiveContexts <> Value then
  begin
    if not KeepActiveContexts then
      FActiveContexts.Free;
    FActiveContexts := Value;
  end;
end;

function TPostTextResponse.GetKeepActiveContexts: Boolean;
begin
  Result := FKeepActiveContexts;
end;

procedure TPostTextResponse.SetKeepActiveContexts(const Value: Boolean);
begin
  FKeepActiveContexts := Value;
end;

function TPostTextResponse.IsSetActiveContexts: Boolean;
begin
  Result := (FActiveContexts <> nil) and (FActiveContexts.Count > 0);
end;

function TPostTextResponse.GetAlternativeIntents: TObjectList<TPredictedIntent>;
begin
  Result := FAlternativeIntents;
end;

procedure TPostTextResponse.SetAlternativeIntents(const Value: TObjectList<TPredictedIntent>);
begin
  if FAlternativeIntents <> Value then
  begin
    if not KeepAlternativeIntents then
      FAlternativeIntents.Free;
    FAlternativeIntents := Value;
  end;
end;

function TPostTextResponse.GetKeepAlternativeIntents: Boolean;
begin
  Result := FKeepAlternativeIntents;
end;

procedure TPostTextResponse.SetKeepAlternativeIntents(const Value: Boolean);
begin
  FKeepAlternativeIntents := Value;
end;

function TPostTextResponse.IsSetAlternativeIntents: Boolean;
begin
  Result := (FAlternativeIntents <> nil) and (FAlternativeIntents.Count > 0);
end;

function TPostTextResponse.GetBotVersion: string;
begin
  Result := FBotVersion.ValueOrDefault;
end;

procedure TPostTextResponse.SetBotVersion(const Value: string);
begin
  FBotVersion := Value;
end;

function TPostTextResponse.IsSetBotVersion: Boolean;
begin
  Result := FBotVersion.HasValue;
end;

function TPostTextResponse.GetDialogState: TDialogState;
begin
  Result := FDialogState.ValueOrDefault;
end;

procedure TPostTextResponse.SetDialogState(const Value: TDialogState);
begin
  FDialogState := Value;
end;

function TPostTextResponse.IsSetDialogState: Boolean;
begin
  Result := FDialogState.HasValue;
end;

function TPostTextResponse.GetIntentName: string;
begin
  Result := FIntentName.ValueOrDefault;
end;

procedure TPostTextResponse.SetIntentName(const Value: string);
begin
  FIntentName := Value;
end;

function TPostTextResponse.IsSetIntentName: Boolean;
begin
  Result := FIntentName.HasValue;
end;

function TPostTextResponse.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure TPostTextResponse.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function TPostTextResponse.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

function TPostTextResponse.GetMessageFormat: TMessageFormatType;
begin
  Result := FMessageFormat.ValueOrDefault;
end;

procedure TPostTextResponse.SetMessageFormat(const Value: TMessageFormatType);
begin
  FMessageFormat := Value;
end;

function TPostTextResponse.IsSetMessageFormat: Boolean;
begin
  Result := FMessageFormat.HasValue;
end;

function TPostTextResponse.GetNluIntentConfidence: TIntentConfidence;
begin
  Result := FNluIntentConfidence;
end;

procedure TPostTextResponse.SetNluIntentConfidence(const Value: TIntentConfidence);
begin
  if FNluIntentConfidence <> Value then
  begin
    if not KeepNluIntentConfidence then
      FNluIntentConfidence.Free;
    FNluIntentConfidence := Value;
  end;
end;

function TPostTextResponse.GetKeepNluIntentConfidence: Boolean;
begin
  Result := FKeepNluIntentConfidence;
end;

procedure TPostTextResponse.SetKeepNluIntentConfidence(const Value: Boolean);
begin
  FKeepNluIntentConfidence := Value;
end;

function TPostTextResponse.IsSetNluIntentConfidence: Boolean;
begin
  Result := FNluIntentConfidence <> nil;
end;

function TPostTextResponse.GetResponseCard: TResponseCard;
begin
  Result := FResponseCard;
end;

procedure TPostTextResponse.SetResponseCard(const Value: TResponseCard);
begin
  if FResponseCard <> Value then
  begin
    if not KeepResponseCard then
      FResponseCard.Free;
    FResponseCard := Value;
  end;
end;

function TPostTextResponse.GetKeepResponseCard: Boolean;
begin
  Result := FKeepResponseCard;
end;

procedure TPostTextResponse.SetKeepResponseCard(const Value: Boolean);
begin
  FKeepResponseCard := Value;
end;

function TPostTextResponse.IsSetResponseCard: Boolean;
begin
  Result := FResponseCard <> nil;
end;

function TPostTextResponse.GetSentimentResponse: TSentimentResponse;
begin
  Result := FSentimentResponse;
end;

procedure TPostTextResponse.SetSentimentResponse(const Value: TSentimentResponse);
begin
  if FSentimentResponse <> Value then
  begin
    if not KeepSentimentResponse then
      FSentimentResponse.Free;
    FSentimentResponse := Value;
  end;
end;

function TPostTextResponse.GetKeepSentimentResponse: Boolean;
begin
  Result := FKeepSentimentResponse;
end;

procedure TPostTextResponse.SetKeepSentimentResponse(const Value: Boolean);
begin
  FKeepSentimentResponse := Value;
end;

function TPostTextResponse.IsSetSentimentResponse: Boolean;
begin
  Result := FSentimentResponse <> nil;
end;

function TPostTextResponse.GetSessionAttributes: TDictionary<string, string>;
begin
  Result := FSessionAttributes;
end;

procedure TPostTextResponse.SetSessionAttributes(const Value: TDictionary<string, string>);
begin
  if FSessionAttributes <> Value then
  begin
    if not KeepSessionAttributes then
      FSessionAttributes.Free;
    FSessionAttributes := Value;
  end;
end;

function TPostTextResponse.GetKeepSessionAttributes: Boolean;
begin
  Result := FKeepSessionAttributes;
end;

procedure TPostTextResponse.SetKeepSessionAttributes(const Value: Boolean);
begin
  FKeepSessionAttributes := Value;
end;

function TPostTextResponse.IsSetSessionAttributes: Boolean;
begin
  Result := (FSessionAttributes <> nil) and (FSessionAttributes.Count > 0);
end;

function TPostTextResponse.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TPostTextResponse.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TPostTextResponse.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

function TPostTextResponse.GetSlotToElicit: string;
begin
  Result := FSlotToElicit.ValueOrDefault;
end;

procedure TPostTextResponse.SetSlotToElicit(const Value: string);
begin
  FSlotToElicit := Value;
end;

function TPostTextResponse.IsSetSlotToElicit: Boolean;
begin
  Result := FSlotToElicit.HasValue;
end;

function TPostTextResponse.GetSlots: TDictionary<string, string>;
begin
  Result := FSlots;
end;

procedure TPostTextResponse.SetSlots(const Value: TDictionary<string, string>);
begin
  if FSlots <> Value then
  begin
    if not KeepSlots then
      FSlots.Free;
    FSlots := Value;
  end;
end;

function TPostTextResponse.GetKeepSlots: Boolean;
begin
  Result := FKeepSlots;
end;

procedure TPostTextResponse.SetKeepSlots(const Value: Boolean);
begin
  FKeepSlots := Value;
end;

function TPostTextResponse.IsSetSlots: Boolean;
begin
  Result := (FSlots <> nil) and (FSlots.Count > 0);
end;

end.
