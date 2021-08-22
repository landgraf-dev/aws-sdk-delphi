unit AWS.LexRuntimeV2.Model.RecognizeTextRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.LexRuntimeV2.Model.Request, 
  AWS.LexRuntimeV2.Model.SessionState;

type
  TRecognizeTextRequest = class;
  
  IRecognizeTextRequest = interface
    function GetBotAliasId: string;
    procedure SetBotAliasId(const Value: string);
    function GetBotId: string;
    procedure SetBotId(const Value: string);
    function GetLocaleId: string;
    procedure SetLocaleId(const Value: string);
    function GetRequestAttributes: TDictionary<string, string>;
    procedure SetRequestAttributes(const Value: TDictionary<string, string>);
    function GetKeepRequestAttributes: Boolean;
    procedure SetKeepRequestAttributes(const Value: Boolean);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSessionState: TSessionState;
    procedure SetSessionState(const Value: TSessionState);
    function GetKeepSessionState: Boolean;
    procedure SetKeepSessionState(const Value: Boolean);
    function GetText: string;
    procedure SetText(const Value: string);
    function Obj: TRecognizeTextRequest;
    function IsSetBotAliasId: Boolean;
    function IsSetBotId: Boolean;
    function IsSetLocaleId: Boolean;
    function IsSetRequestAttributes: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSessionState: Boolean;
    function IsSetText: Boolean;
    property BotAliasId: string read GetBotAliasId write SetBotAliasId;
    property BotId: string read GetBotId write SetBotId;
    property LocaleId: string read GetLocaleId write SetLocaleId;
    property RequestAttributes: TDictionary<string, string> read GetRequestAttributes write SetRequestAttributes;
    property KeepRequestAttributes: Boolean read GetKeepRequestAttributes write SetKeepRequestAttributes;
    property SessionId: string read GetSessionId write SetSessionId;
    property SessionState: TSessionState read GetSessionState write SetSessionState;
    property KeepSessionState: Boolean read GetKeepSessionState write SetKeepSessionState;
    property Text: string read GetText write SetText;
  end;
  
  TRecognizeTextRequest = class(TAmazonLexRuntimeV2Request, IRecognizeTextRequest)
  strict private
    FBotAliasId: Nullable<string>;
    FBotId: Nullable<string>;
    FLocaleId: Nullable<string>;
    FRequestAttributes: TDictionary<string, string>;
    FKeepRequestAttributes: Boolean;
    FSessionId: Nullable<string>;
    FSessionState: TSessionState;
    FKeepSessionState: Boolean;
    FText: Nullable<string>;
    function GetBotAliasId: string;
    procedure SetBotAliasId(const Value: string);
    function GetBotId: string;
    procedure SetBotId(const Value: string);
    function GetLocaleId: string;
    procedure SetLocaleId(const Value: string);
    function GetRequestAttributes: TDictionary<string, string>;
    procedure SetRequestAttributes(const Value: TDictionary<string, string>);
    function GetKeepRequestAttributes: Boolean;
    procedure SetKeepRequestAttributes(const Value: Boolean);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSessionState: TSessionState;
    procedure SetSessionState(const Value: TSessionState);
    function GetKeepSessionState: Boolean;
    procedure SetKeepSessionState(const Value: Boolean);
    function GetText: string;
    procedure SetText(const Value: string);
  strict protected
    function Obj: TRecognizeTextRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBotAliasId: Boolean;
    function IsSetBotId: Boolean;
    function IsSetLocaleId: Boolean;
    function IsSetRequestAttributes: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSessionState: Boolean;
    function IsSetText: Boolean;
    property BotAliasId: string read GetBotAliasId write SetBotAliasId;
    property BotId: string read GetBotId write SetBotId;
    property LocaleId: string read GetLocaleId write SetLocaleId;
    property RequestAttributes: TDictionary<string, string> read GetRequestAttributes write SetRequestAttributes;
    property KeepRequestAttributes: Boolean read GetKeepRequestAttributes write SetKeepRequestAttributes;
    property SessionId: string read GetSessionId write SetSessionId;
    property SessionState: TSessionState read GetSessionState write SetSessionState;
    property KeepSessionState: Boolean read GetKeepSessionState write SetKeepSessionState;
    property Text: string read GetText write SetText;
  end;
  
implementation

{ TRecognizeTextRequest }

constructor TRecognizeTextRequest.Create;
begin
  inherited;
  FRequestAttributes := TDictionary<string, string>.Create;
end;

destructor TRecognizeTextRequest.Destroy;
begin
  SessionState := nil;
  RequestAttributes := nil;
  inherited;
end;

function TRecognizeTextRequest.Obj: TRecognizeTextRequest;
begin
  Result := Self;
end;

function TRecognizeTextRequest.GetBotAliasId: string;
begin
  Result := FBotAliasId.ValueOrDefault;
end;

procedure TRecognizeTextRequest.SetBotAliasId(const Value: string);
begin
  FBotAliasId := Value;
end;

function TRecognizeTextRequest.IsSetBotAliasId: Boolean;
begin
  Result := FBotAliasId.HasValue;
end;

function TRecognizeTextRequest.GetBotId: string;
begin
  Result := FBotId.ValueOrDefault;
end;

procedure TRecognizeTextRequest.SetBotId(const Value: string);
begin
  FBotId := Value;
end;

function TRecognizeTextRequest.IsSetBotId: Boolean;
begin
  Result := FBotId.HasValue;
end;

function TRecognizeTextRequest.GetLocaleId: string;
begin
  Result := FLocaleId.ValueOrDefault;
end;

procedure TRecognizeTextRequest.SetLocaleId(const Value: string);
begin
  FLocaleId := Value;
end;

function TRecognizeTextRequest.IsSetLocaleId: Boolean;
begin
  Result := FLocaleId.HasValue;
end;

function TRecognizeTextRequest.GetRequestAttributes: TDictionary<string, string>;
begin
  Result := FRequestAttributes;
end;

procedure TRecognizeTextRequest.SetRequestAttributes(const Value: TDictionary<string, string>);
begin
  if FRequestAttributes <> Value then
  begin
    if not KeepRequestAttributes then
      FRequestAttributes.Free;
    FRequestAttributes := Value;
  end;
end;

function TRecognizeTextRequest.GetKeepRequestAttributes: Boolean;
begin
  Result := FKeepRequestAttributes;
end;

procedure TRecognizeTextRequest.SetKeepRequestAttributes(const Value: Boolean);
begin
  FKeepRequestAttributes := Value;
end;

function TRecognizeTextRequest.IsSetRequestAttributes: Boolean;
begin
  Result := (FRequestAttributes <> nil) and (FRequestAttributes.Count > 0);
end;

function TRecognizeTextRequest.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TRecognizeTextRequest.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TRecognizeTextRequest.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

function TRecognizeTextRequest.GetSessionState: TSessionState;
begin
  Result := FSessionState;
end;

procedure TRecognizeTextRequest.SetSessionState(const Value: TSessionState);
begin
  if FSessionState <> Value then
  begin
    if not KeepSessionState then
      FSessionState.Free;
    FSessionState := Value;
  end;
end;

function TRecognizeTextRequest.GetKeepSessionState: Boolean;
begin
  Result := FKeepSessionState;
end;

procedure TRecognizeTextRequest.SetKeepSessionState(const Value: Boolean);
begin
  FKeepSessionState := Value;
end;

function TRecognizeTextRequest.IsSetSessionState: Boolean;
begin
  Result := FSessionState <> nil;
end;

function TRecognizeTextRequest.GetText: string;
begin
  Result := FText.ValueOrDefault;
end;

procedure TRecognizeTextRequest.SetText(const Value: string);
begin
  FText := Value;
end;

function TRecognizeTextRequest.IsSetText: Boolean;
begin
  Result := FText.HasValue;
end;

end.
