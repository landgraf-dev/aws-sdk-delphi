unit AWS.LexRuntimeV2.Model.DeleteSessionResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TDeleteSessionResponse = class;
  
  IDeleteSessionResponse = interface(IAmazonWebServiceResponse)
    function GetBotAliasId: string;
    procedure SetBotAliasId(const Value: string);
    function GetBotId: string;
    procedure SetBotId(const Value: string);
    function GetLocaleId: string;
    procedure SetLocaleId(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function Obj: TDeleteSessionResponse;
    function IsSetBotAliasId: Boolean;
    function IsSetBotId: Boolean;
    function IsSetLocaleId: Boolean;
    function IsSetSessionId: Boolean;
    property BotAliasId: string read GetBotAliasId write SetBotAliasId;
    property BotId: string read GetBotId write SetBotId;
    property LocaleId: string read GetLocaleId write SetLocaleId;
    property SessionId: string read GetSessionId write SetSessionId;
  end;
  
  TDeleteSessionResponse = class(TAmazonWebServiceResponse, IDeleteSessionResponse)
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
    function Obj: TDeleteSessionResponse;
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

{ TDeleteSessionResponse }

function TDeleteSessionResponse.Obj: TDeleteSessionResponse;
begin
  Result := Self;
end;

function TDeleteSessionResponse.GetBotAliasId: string;
begin
  Result := FBotAliasId.ValueOrDefault;
end;

procedure TDeleteSessionResponse.SetBotAliasId(const Value: string);
begin
  FBotAliasId := Value;
end;

function TDeleteSessionResponse.IsSetBotAliasId: Boolean;
begin
  Result := FBotAliasId.HasValue;
end;

function TDeleteSessionResponse.GetBotId: string;
begin
  Result := FBotId.ValueOrDefault;
end;

procedure TDeleteSessionResponse.SetBotId(const Value: string);
begin
  FBotId := Value;
end;

function TDeleteSessionResponse.IsSetBotId: Boolean;
begin
  Result := FBotId.HasValue;
end;

function TDeleteSessionResponse.GetLocaleId: string;
begin
  Result := FLocaleId.ValueOrDefault;
end;

procedure TDeleteSessionResponse.SetLocaleId(const Value: string);
begin
  FLocaleId := Value;
end;

function TDeleteSessionResponse.IsSetLocaleId: Boolean;
begin
  Result := FLocaleId.HasValue;
end;

function TDeleteSessionResponse.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TDeleteSessionResponse.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TDeleteSessionResponse.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

end.
