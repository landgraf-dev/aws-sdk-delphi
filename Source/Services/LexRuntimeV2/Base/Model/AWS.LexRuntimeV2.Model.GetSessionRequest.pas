unit AWS.LexRuntimeV2.Model.GetSessionRequest;

interface

uses
  AWS.LexRuntimeV2.Model.Request, 
  AWS.Nullable;

type
  TGetSessionRequest = class;
  
  IGetSessionRequest = interface
    function GetBotAliasId: string;
    procedure SetBotAliasId(const Value: string);
    function GetBotId: string;
    procedure SetBotId(const Value: string);
    function GetLocaleId: string;
    procedure SetLocaleId(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function Obj: TGetSessionRequest;
    function IsSetBotAliasId: Boolean;
    function IsSetBotId: Boolean;
    function IsSetLocaleId: Boolean;
    function IsSetSessionId: Boolean;
    property BotAliasId: string read GetBotAliasId write SetBotAliasId;
    property BotId: string read GetBotId write SetBotId;
    property LocaleId: string read GetLocaleId write SetLocaleId;
    property SessionId: string read GetSessionId write SetSessionId;
  end;
  
  TGetSessionRequest = class(TAmazonLexRuntimeV2Request, IGetSessionRequest)
  strict private
    FBotAliasId: Nullable<string>;
    FBotId: Nullable<string>;
    FLocaleId: Nullable<string>;
    FSessionId: Nullable<string>;
    function GetBotAliasId: string;
    procedure SetBotAliasId(const Value: string);
    function GetBotId: string;
    procedure SetBotId(const Value: string);
    function GetLocaleId: string;
    procedure SetLocaleId(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
  strict protected
    function Obj: TGetSessionRequest;
  public
    function IsSetBotAliasId: Boolean;
    function IsSetBotId: Boolean;
    function IsSetLocaleId: Boolean;
    function IsSetSessionId: Boolean;
    property BotAliasId: string read GetBotAliasId write SetBotAliasId;
    property BotId: string read GetBotId write SetBotId;
    property LocaleId: string read GetLocaleId write SetLocaleId;
    property SessionId: string read GetSessionId write SetSessionId;
  end;
  
implementation

{ TGetSessionRequest }

function TGetSessionRequest.Obj: TGetSessionRequest;
begin
  Result := Self;
end;

function TGetSessionRequest.GetBotAliasId: string;
begin
  Result := FBotAliasId.ValueOrDefault;
end;

procedure TGetSessionRequest.SetBotAliasId(const Value: string);
begin
  FBotAliasId := Value;
end;

function TGetSessionRequest.IsSetBotAliasId: Boolean;
begin
  Result := FBotAliasId.HasValue;
end;

function TGetSessionRequest.GetBotId: string;
begin
  Result := FBotId.ValueOrDefault;
end;

procedure TGetSessionRequest.SetBotId(const Value: string);
begin
  FBotId := Value;
end;

function TGetSessionRequest.IsSetBotId: Boolean;
begin
  Result := FBotId.HasValue;
end;

function TGetSessionRequest.GetLocaleId: string;
begin
  Result := FLocaleId.ValueOrDefault;
end;

procedure TGetSessionRequest.SetLocaleId(const Value: string);
begin
  FLocaleId := Value;
end;

function TGetSessionRequest.IsSetLocaleId: Boolean;
begin
  Result := FLocaleId.HasValue;
end;

function TGetSessionRequest.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TGetSessionRequest.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TGetSessionRequest.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

end.
