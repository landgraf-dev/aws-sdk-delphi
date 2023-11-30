unit AWS.LexRuntimeV2.Model.DeleteSessionRequest;

interface

uses
  AWS.LexRuntimeV2.Model.Request, 
  AWS.Nullable;

type
  TDeleteSessionRequest = class;
  
  IDeleteSessionRequest = interface
    function GetBotAliasId: string;
    procedure SetBotAliasId(const Value: string);
    function GetBotId: string;
    procedure SetBotId(const Value: string);
    function GetLocaleId: string;
    procedure SetLocaleId(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function Obj: TDeleteSessionRequest;
    function IsSetBotAliasId: Boolean;
    function IsSetBotId: Boolean;
    function IsSetLocaleId: Boolean;
    function IsSetSessionId: Boolean;
    property BotAliasId: string read GetBotAliasId write SetBotAliasId;
    property BotId: string read GetBotId write SetBotId;
    property LocaleId: string read GetLocaleId write SetLocaleId;
    property SessionId: string read GetSessionId write SetSessionId;
  end;
  
  TDeleteSessionRequest = class(TAmazonLexRuntimeV2Request, IDeleteSessionRequest)
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
    function Obj: TDeleteSessionRequest;
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

{ TDeleteSessionRequest }

function TDeleteSessionRequest.Obj: TDeleteSessionRequest;
begin
  Result := Self;
end;

function TDeleteSessionRequest.GetBotAliasId: string;
begin
  Result := FBotAliasId.ValueOrDefault;
end;

procedure TDeleteSessionRequest.SetBotAliasId(const Value: string);
begin
  FBotAliasId := Value;
end;

function TDeleteSessionRequest.IsSetBotAliasId: Boolean;
begin
  Result := FBotAliasId.HasValue;
end;

function TDeleteSessionRequest.GetBotId: string;
begin
  Result := FBotId.ValueOrDefault;
end;

procedure TDeleteSessionRequest.SetBotId(const Value: string);
begin
  FBotId := Value;
end;

function TDeleteSessionRequest.IsSetBotId: Boolean;
begin
  Result := FBotId.HasValue;
end;

function TDeleteSessionRequest.GetLocaleId: string;
begin
  Result := FLocaleId.ValueOrDefault;
end;

procedure TDeleteSessionRequest.SetLocaleId(const Value: string);
begin
  FLocaleId := Value;
end;

function TDeleteSessionRequest.IsSetLocaleId: Boolean;
begin
  Result := FLocaleId.HasValue;
end;

function TDeleteSessionRequest.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TDeleteSessionRequest.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TDeleteSessionRequest.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

end.
