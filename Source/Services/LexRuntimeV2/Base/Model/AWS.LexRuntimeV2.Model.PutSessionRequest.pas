unit AWS.LexRuntimeV2.Model.PutSessionRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.LexRuntimeV2.Model.Request, 
  AWS.LexRuntimeV2.Model.Message, 
  AWS.LexRuntimeV2.Model.SessionState;

type
  TPutSessionRequest = class;
  
  IPutSessionRequest = interface
    function GetBotAliasId: string;
    procedure SetBotAliasId(const Value: string);
    function GetBotId: string;
    procedure SetBotId(const Value: string);
    function GetLocaleId: string;
    procedure SetLocaleId(const Value: string);
    function GetMessages: TObjectList<TMessage>;
    procedure SetMessages(const Value: TObjectList<TMessage>);
    function GetKeepMessages: Boolean;
    procedure SetKeepMessages(const Value: Boolean);
    function GetRequestAttributes: TDictionary<string, string>;
    procedure SetRequestAttributes(const Value: TDictionary<string, string>);
    function GetKeepRequestAttributes: Boolean;
    procedure SetKeepRequestAttributes(const Value: Boolean);
    function GetResponseContentType: string;
    procedure SetResponseContentType(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSessionStateValue: TSessionState;
    procedure SetSessionStateValue(const Value: TSessionState);
    function GetKeepSessionStateValue: Boolean;
    procedure SetKeepSessionStateValue(const Value: Boolean);
    function Obj: TPutSessionRequest;
    function IsSetBotAliasId: Boolean;
    function IsSetBotId: Boolean;
    function IsSetLocaleId: Boolean;
    function IsSetMessages: Boolean;
    function IsSetRequestAttributes: Boolean;
    function IsSetResponseContentType: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSessionStateValue: Boolean;
    property BotAliasId: string read GetBotAliasId write SetBotAliasId;
    property BotId: string read GetBotId write SetBotId;
    property LocaleId: string read GetLocaleId write SetLocaleId;
    property Messages: TObjectList<TMessage> read GetMessages write SetMessages;
    property KeepMessages: Boolean read GetKeepMessages write SetKeepMessages;
    property RequestAttributes: TDictionary<string, string> read GetRequestAttributes write SetRequestAttributes;
    property KeepRequestAttributes: Boolean read GetKeepRequestAttributes write SetKeepRequestAttributes;
    property ResponseContentType: string read GetResponseContentType write SetResponseContentType;
    property SessionId: string read GetSessionId write SetSessionId;
    property SessionStateValue: TSessionState read GetSessionStateValue write SetSessionStateValue;
    property KeepSessionStateValue: Boolean read GetKeepSessionStateValue write SetKeepSessionStateValue;
  end;
  
  TPutSessionRequest = class(TAmazonLexRuntimeV2Request, IPutSessionRequest)
  strict private
    FBotAliasId: Nullable<string>;
    FBotId: Nullable<string>;
    FLocaleId: Nullable<string>;
    FMessages: TObjectList<TMessage>;
    FKeepMessages: Boolean;
    FRequestAttributes: TDictionary<string, string>;
    FKeepRequestAttributes: Boolean;
    FResponseContentType: Nullable<string>;
    FSessionId: Nullable<string>;
    FSessionStateValue: TSessionState;
    FKeepSessionStateValue: Boolean;
    function GetBotAliasId: string;
    procedure SetBotAliasId(const Value: string);
    function GetBotId: string;
    procedure SetBotId(const Value: string);
    function GetLocaleId: string;
    procedure SetLocaleId(const Value: string);
    function GetMessages: TObjectList<TMessage>;
    procedure SetMessages(const Value: TObjectList<TMessage>);
    function GetKeepMessages: Boolean;
    procedure SetKeepMessages(const Value: Boolean);
    function GetRequestAttributes: TDictionary<string, string>;
    procedure SetRequestAttributes(const Value: TDictionary<string, string>);
    function GetKeepRequestAttributes: Boolean;
    procedure SetKeepRequestAttributes(const Value: Boolean);
    function GetResponseContentType: string;
    procedure SetResponseContentType(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSessionStateValue: TSessionState;
    procedure SetSessionStateValue(const Value: TSessionState);
    function GetKeepSessionStateValue: Boolean;
    procedure SetKeepSessionStateValue(const Value: Boolean);
  strict protected
    function Obj: TPutSessionRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBotAliasId: Boolean;
    function IsSetBotId: Boolean;
    function IsSetLocaleId: Boolean;
    function IsSetMessages: Boolean;
    function IsSetRequestAttributes: Boolean;
    function IsSetResponseContentType: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSessionStateValue: Boolean;
    property BotAliasId: string read GetBotAliasId write SetBotAliasId;
    property BotId: string read GetBotId write SetBotId;
    property LocaleId: string read GetLocaleId write SetLocaleId;
    property Messages: TObjectList<TMessage> read GetMessages write SetMessages;
    property KeepMessages: Boolean read GetKeepMessages write SetKeepMessages;
    property RequestAttributes: TDictionary<string, string> read GetRequestAttributes write SetRequestAttributes;
    property KeepRequestAttributes: Boolean read GetKeepRequestAttributes write SetKeepRequestAttributes;
    property ResponseContentType: string read GetResponseContentType write SetResponseContentType;
    property SessionId: string read GetSessionId write SetSessionId;
    property SessionStateValue: TSessionState read GetSessionStateValue write SetSessionStateValue;
    property KeepSessionStateValue: Boolean read GetKeepSessionStateValue write SetKeepSessionStateValue;
  end;
  
implementation

{ TPutSessionRequest }

constructor TPutSessionRequest.Create;
begin
  inherited;
  FMessages := TObjectList<TMessage>.Create;
  FRequestAttributes := TDictionary<string, string>.Create;
end;

destructor TPutSessionRequest.Destroy;
begin
  SessionStateValue := nil;
  RequestAttributes := nil;
  Messages := nil;
  inherited;
end;

function TPutSessionRequest.Obj: TPutSessionRequest;
begin
  Result := Self;
end;

function TPutSessionRequest.GetBotAliasId: string;
begin
  Result := FBotAliasId.ValueOrDefault;
end;

procedure TPutSessionRequest.SetBotAliasId(const Value: string);
begin
  FBotAliasId := Value;
end;

function TPutSessionRequest.IsSetBotAliasId: Boolean;
begin
  Result := FBotAliasId.HasValue;
end;

function TPutSessionRequest.GetBotId: string;
begin
  Result := FBotId.ValueOrDefault;
end;

procedure TPutSessionRequest.SetBotId(const Value: string);
begin
  FBotId := Value;
end;

function TPutSessionRequest.IsSetBotId: Boolean;
begin
  Result := FBotId.HasValue;
end;

function TPutSessionRequest.GetLocaleId: string;
begin
  Result := FLocaleId.ValueOrDefault;
end;

procedure TPutSessionRequest.SetLocaleId(const Value: string);
begin
  FLocaleId := Value;
end;

function TPutSessionRequest.IsSetLocaleId: Boolean;
begin
  Result := FLocaleId.HasValue;
end;

function TPutSessionRequest.GetMessages: TObjectList<TMessage>;
begin
  Result := FMessages;
end;

procedure TPutSessionRequest.SetMessages(const Value: TObjectList<TMessage>);
begin
  if FMessages <> Value then
  begin
    if not KeepMessages then
      FMessages.Free;
    FMessages := Value;
  end;
end;

function TPutSessionRequest.GetKeepMessages: Boolean;
begin
  Result := FKeepMessages;
end;

procedure TPutSessionRequest.SetKeepMessages(const Value: Boolean);
begin
  FKeepMessages := Value;
end;

function TPutSessionRequest.IsSetMessages: Boolean;
begin
  Result := (FMessages <> nil) and (FMessages.Count > 0);
end;

function TPutSessionRequest.GetRequestAttributes: TDictionary<string, string>;
begin
  Result := FRequestAttributes;
end;

procedure TPutSessionRequest.SetRequestAttributes(const Value: TDictionary<string, string>);
begin
  if FRequestAttributes <> Value then
  begin
    if not KeepRequestAttributes then
      FRequestAttributes.Free;
    FRequestAttributes := Value;
  end;
end;

function TPutSessionRequest.GetKeepRequestAttributes: Boolean;
begin
  Result := FKeepRequestAttributes;
end;

procedure TPutSessionRequest.SetKeepRequestAttributes(const Value: Boolean);
begin
  FKeepRequestAttributes := Value;
end;

function TPutSessionRequest.IsSetRequestAttributes: Boolean;
begin
  Result := (FRequestAttributes <> nil) and (FRequestAttributes.Count > 0);
end;

function TPutSessionRequest.GetResponseContentType: string;
begin
  Result := FResponseContentType.ValueOrDefault;
end;

procedure TPutSessionRequest.SetResponseContentType(const Value: string);
begin
  FResponseContentType := Value;
end;

function TPutSessionRequest.IsSetResponseContentType: Boolean;
begin
  Result := FResponseContentType.HasValue;
end;

function TPutSessionRequest.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TPutSessionRequest.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TPutSessionRequest.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

function TPutSessionRequest.GetSessionStateValue: TSessionState;
begin
  Result := FSessionStateValue;
end;

procedure TPutSessionRequest.SetSessionStateValue(const Value: TSessionState);
begin
  if FSessionStateValue <> Value then
  begin
    if not KeepSessionStateValue then
      FSessionStateValue.Free;
    FSessionStateValue := Value;
  end;
end;

function TPutSessionRequest.GetKeepSessionStateValue: Boolean;
begin
  Result := FKeepSessionStateValue;
end;

procedure TPutSessionRequest.SetKeepSessionStateValue(const Value: Boolean);
begin
  FKeepSessionStateValue := Value;
end;

function TPutSessionRequest.IsSetSessionStateValue: Boolean;
begin
  Result := FSessionStateValue <> nil;
end;

end.
