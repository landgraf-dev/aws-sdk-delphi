unit AWS.LexRuntimeService.Model.PutSessionResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  System.Classes, 
  AWS.LexRuntimeService.Enums;

type
  TPutSessionResponse = class;
  
  IPutSessionResponse = interface(IAmazonWebServiceResponse)
    function GetActiveContexts: string;
    procedure SetActiveContexts(const Value: string);
    function GetAudioStream: TStream;
    procedure SetAudioStream(const Value: TStream);
    function GetKeepAudioStream: Boolean;
    procedure SetKeepAudioStream(const Value: Boolean);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetDialogState: TDialogState;
    procedure SetDialogState(const Value: TDialogState);
    function GetEncodedMessage: string;
    procedure SetEncodedMessage(const Value: string);
    function GetIntentName: string;
    procedure SetIntentName(const Value: string);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetMessageFormat: TMessageFormatType;
    procedure SetMessageFormat(const Value: TMessageFormatType);
    function GetSessionAttributes: string;
    procedure SetSessionAttributes(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSlotToElicit: string;
    procedure SetSlotToElicit(const Value: string);
    function GetSlots: string;
    procedure SetSlots(const Value: string);
    function Obj: TPutSessionResponse;
    function IsSetActiveContexts: Boolean;
    function IsSetAudioStream: Boolean;
    function IsSetContentType: Boolean;
    function IsSetDialogState: Boolean;
    function IsSetEncodedMessage: Boolean;
    function IsSetIntentName: Boolean;
    function IsSetMessage: Boolean;
    function IsSetMessageFormat: Boolean;
    function IsSetSessionAttributes: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSlotToElicit: Boolean;
    function IsSetSlots: Boolean;
    property ActiveContexts: string read GetActiveContexts write SetActiveContexts;
    property AudioStream: TStream read GetAudioStream write SetAudioStream;
    property KeepAudioStream: Boolean read GetKeepAudioStream write SetKeepAudioStream;
    property ContentType: string read GetContentType write SetContentType;
    property DialogState: TDialogState read GetDialogState write SetDialogState;
    property EncodedMessage: string read GetEncodedMessage write SetEncodedMessage;
    property IntentName: string read GetIntentName write SetIntentName;
    property Message: string read GetMessage write SetMessage;
    property MessageFormat: TMessageFormatType read GetMessageFormat write SetMessageFormat;
    property SessionAttributes: string read GetSessionAttributes write SetSessionAttributes;
    property SessionId: string read GetSessionId write SetSessionId;
    property SlotToElicit: string read GetSlotToElicit write SetSlotToElicit;
    property Slots: string read GetSlots write SetSlots;
  end;
  
  TPutSessionResponse = class(TAmazonWebServiceResponse, IPutSessionResponse)
  strict private
    FActiveContexts: Nullable<string>;
    FAudioStream: TStream;
    FKeepAudioStream: Boolean;
    FContentType: Nullable<string>;
    FDialogState: Nullable<TDialogState>;
    FEncodedMessage: Nullable<string>;
    FIntentName: Nullable<string>;
    FMessage: Nullable<string>;
    FMessageFormat: Nullable<TMessageFormatType>;
    FSessionAttributes: Nullable<string>;
    FSessionId: Nullable<string>;
    FSlotToElicit: Nullable<string>;
    FSlots: Nullable<string>;
    function GetActiveContexts: string;
    procedure SetActiveContexts(const Value: string);
    function GetAudioStream: TStream;
    procedure SetAudioStream(const Value: TStream);
    function GetKeepAudioStream: Boolean;
    procedure SetKeepAudioStream(const Value: Boolean);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetDialogState: TDialogState;
    procedure SetDialogState(const Value: TDialogState);
    function GetEncodedMessage: string;
    procedure SetEncodedMessage(const Value: string);
    function GetIntentName: string;
    procedure SetIntentName(const Value: string);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetMessageFormat: TMessageFormatType;
    procedure SetMessageFormat(const Value: TMessageFormatType);
    function GetSessionAttributes: string;
    procedure SetSessionAttributes(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSlotToElicit: string;
    procedure SetSlotToElicit(const Value: string);
    function GetSlots: string;
    procedure SetSlots(const Value: string);
  strict protected
    function Obj: TPutSessionResponse;
  public
    destructor Destroy; override;
    function IsSetActiveContexts: Boolean;
    function IsSetAudioStream: Boolean;
    function IsSetContentType: Boolean;
    function IsSetDialogState: Boolean;
    function IsSetEncodedMessage: Boolean;
    function IsSetIntentName: Boolean;
    function IsSetMessage: Boolean;
    function IsSetMessageFormat: Boolean;
    function IsSetSessionAttributes: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSlotToElicit: Boolean;
    function IsSetSlots: Boolean;
    property ActiveContexts: string read GetActiveContexts write SetActiveContexts;
    property AudioStream: TStream read GetAudioStream write SetAudioStream;
    property KeepAudioStream: Boolean read GetKeepAudioStream write SetKeepAudioStream;
    property ContentType: string read GetContentType write SetContentType;
    property DialogState: TDialogState read GetDialogState write SetDialogState;
    property EncodedMessage: string read GetEncodedMessage write SetEncodedMessage;
    property IntentName: string read GetIntentName write SetIntentName;
    property Message: string read GetMessage write SetMessage;
    property MessageFormat: TMessageFormatType read GetMessageFormat write SetMessageFormat;
    property SessionAttributes: string read GetSessionAttributes write SetSessionAttributes;
    property SessionId: string read GetSessionId write SetSessionId;
    property SlotToElicit: string read GetSlotToElicit write SetSlotToElicit;
    property Slots: string read GetSlots write SetSlots;
  end;
  
implementation

{ TPutSessionResponse }

destructor TPutSessionResponse.Destroy;
begin
  AudioStream := nil;
  inherited;
end;

function TPutSessionResponse.Obj: TPutSessionResponse;
begin
  Result := Self;
end;

function TPutSessionResponse.GetActiveContexts: string;
begin
  Result := FActiveContexts.ValueOrDefault;
end;

procedure TPutSessionResponse.SetActiveContexts(const Value: string);
begin
  FActiveContexts := Value;
end;

function TPutSessionResponse.IsSetActiveContexts: Boolean;
begin
  Result := FActiveContexts.HasValue;
end;

function TPutSessionResponse.GetAudioStream: TStream;
begin
  Result := FAudioStream;
end;

procedure TPutSessionResponse.SetAudioStream(const Value: TStream);
begin
  if FAudioStream <> Value then
  begin
    if not KeepAudioStream then
      FAudioStream.Free;
    FAudioStream := Value;
  end;
end;

function TPutSessionResponse.GetKeepAudioStream: Boolean;
begin
  Result := FKeepAudioStream;
end;

procedure TPutSessionResponse.SetKeepAudioStream(const Value: Boolean);
begin
  FKeepAudioStream := Value;
end;

function TPutSessionResponse.IsSetAudioStream: Boolean;
begin
  Result := FAudioStream <> nil;
end;

function TPutSessionResponse.GetContentType: string;
begin
  Result := FContentType.ValueOrDefault;
end;

procedure TPutSessionResponse.SetContentType(const Value: string);
begin
  FContentType := Value;
end;

function TPutSessionResponse.IsSetContentType: Boolean;
begin
  Result := FContentType.HasValue;
end;

function TPutSessionResponse.GetDialogState: TDialogState;
begin
  Result := FDialogState.ValueOrDefault;
end;

procedure TPutSessionResponse.SetDialogState(const Value: TDialogState);
begin
  FDialogState := Value;
end;

function TPutSessionResponse.IsSetDialogState: Boolean;
begin
  Result := FDialogState.HasValue;
end;

function TPutSessionResponse.GetEncodedMessage: string;
begin
  Result := FEncodedMessage.ValueOrDefault;
end;

procedure TPutSessionResponse.SetEncodedMessage(const Value: string);
begin
  FEncodedMessage := Value;
end;

function TPutSessionResponse.IsSetEncodedMessage: Boolean;
begin
  Result := FEncodedMessage.HasValue;
end;

function TPutSessionResponse.GetIntentName: string;
begin
  Result := FIntentName.ValueOrDefault;
end;

procedure TPutSessionResponse.SetIntentName(const Value: string);
begin
  FIntentName := Value;
end;

function TPutSessionResponse.IsSetIntentName: Boolean;
begin
  Result := FIntentName.HasValue;
end;

function TPutSessionResponse.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure TPutSessionResponse.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function TPutSessionResponse.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

function TPutSessionResponse.GetMessageFormat: TMessageFormatType;
begin
  Result := FMessageFormat.ValueOrDefault;
end;

procedure TPutSessionResponse.SetMessageFormat(const Value: TMessageFormatType);
begin
  FMessageFormat := Value;
end;

function TPutSessionResponse.IsSetMessageFormat: Boolean;
begin
  Result := FMessageFormat.HasValue;
end;

function TPutSessionResponse.GetSessionAttributes: string;
begin
  Result := FSessionAttributes.ValueOrDefault;
end;

procedure TPutSessionResponse.SetSessionAttributes(const Value: string);
begin
  FSessionAttributes := Value;
end;

function TPutSessionResponse.IsSetSessionAttributes: Boolean;
begin
  Result := FSessionAttributes.HasValue;
end;

function TPutSessionResponse.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TPutSessionResponse.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TPutSessionResponse.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

function TPutSessionResponse.GetSlotToElicit: string;
begin
  Result := FSlotToElicit.ValueOrDefault;
end;

procedure TPutSessionResponse.SetSlotToElicit(const Value: string);
begin
  FSlotToElicit := Value;
end;

function TPutSessionResponse.IsSetSlotToElicit: Boolean;
begin
  Result := FSlotToElicit.HasValue;
end;

function TPutSessionResponse.GetSlots: string;
begin
  Result := FSlots.ValueOrDefault;
end;

procedure TPutSessionResponse.SetSlots(const Value: string);
begin
  FSlots := Value;
end;

function TPutSessionResponse.IsSetSlots: Boolean;
begin
  Result := FSlots.HasValue;
end;

end.
