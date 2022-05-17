unit AWS.LexRuntimeV2.Model.RecognizeUtteranceRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.LexRuntimeV2.Model.Request, 
  System.Classes, 
  AWS.Auth.Signer;

type
  TRecognizeUtteranceRequest = class;
  
  IRecognizeUtteranceRequest = interface
    function GetBotAliasId: string;
    procedure SetBotAliasId(const Value: string);
    function GetBotId: string;
    procedure SetBotId(const Value: string);
    function GetInputStream: TStream;
    procedure SetInputStream(const Value: TStream);
    function GetKeepInputStream: Boolean;
    procedure SetKeepInputStream(const Value: Boolean);
    function GetLocaleId: string;
    procedure SetLocaleId(const Value: string);
    function GetRequestAttributes: string;
    procedure SetRequestAttributes(const Value: string);
    function GetRequestContentType: string;
    procedure SetRequestContentType(const Value: string);
    function GetResponseContentType: string;
    procedure SetResponseContentType(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSessionStateValue: string;
    procedure SetSessionStateValue(const Value: string);
    function Obj: TRecognizeUtteranceRequest;
    function CreateSigner: TAbstractAWSSigner;
    function IsSetBotAliasId: Boolean;
    function IsSetBotId: Boolean;
    function IsSetInputStream: Boolean;
    function IsSetLocaleId: Boolean;
    function IsSetRequestAttributes: Boolean;
    function IsSetRequestContentType: Boolean;
    function IsSetResponseContentType: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSessionStateValue: Boolean;
    property BotAliasId: string read GetBotAliasId write SetBotAliasId;
    property BotId: string read GetBotId write SetBotId;
    property InputStream: TStream read GetInputStream write SetInputStream;
    property KeepInputStream: Boolean read GetKeepInputStream write SetKeepInputStream;
    property LocaleId: string read GetLocaleId write SetLocaleId;
    property RequestAttributes: string read GetRequestAttributes write SetRequestAttributes;
    property RequestContentType: string read GetRequestContentType write SetRequestContentType;
    property ResponseContentType: string read GetResponseContentType write SetResponseContentType;
    property SessionId: string read GetSessionId write SetSessionId;
    property SessionStateValue: string read GetSessionStateValue write SetSessionStateValue;
  end;
  
  TRecognizeUtteranceRequest = class(TAmazonLexRuntimeV2Request, IRecognizeUtteranceRequest)
  strict private
    FBotAliasId: Nullable<string>;
    FBotId: Nullable<string>;
    FInputStream: TStream;
    FKeepInputStream: Boolean;
    FLocaleId: Nullable<string>;
    FRequestAttributes: Nullable<string>;
    FRequestContentType: Nullable<string>;
    FResponseContentType: Nullable<string>;
    FSessionId: Nullable<string>;
    FSessionStateValue: Nullable<string>;
    function GetBotAliasId: string;
    procedure SetBotAliasId(const Value: string);
    function GetBotId: string;
    procedure SetBotId(const Value: string);
    function GetInputStream: TStream;
    procedure SetInputStream(const Value: TStream);
    function GetKeepInputStream: Boolean;
    procedure SetKeepInputStream(const Value: Boolean);
    function GetLocaleId: string;
    procedure SetLocaleId(const Value: string);
    function GetRequestAttributes: string;
    procedure SetRequestAttributes(const Value: string);
    function GetRequestContentType: string;
    procedure SetRequestContentType(const Value: string);
    function GetResponseContentType: string;
    procedure SetResponseContentType(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSessionStateValue: string;
    procedure SetSessionStateValue(const Value: string);
  strict protected
    function Obj: TRecognizeUtteranceRequest;
    function CreateSigner: TAbstractAWSSigner; override;
  public
    destructor Destroy; override;
    function IsSetBotAliasId: Boolean;
    function IsSetBotId: Boolean;
    function IsSetInputStream: Boolean;
    function IsSetLocaleId: Boolean;
    function IsSetRequestAttributes: Boolean;
    function IsSetRequestContentType: Boolean;
    function IsSetResponseContentType: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSessionStateValue: Boolean;
    property BotAliasId: string read GetBotAliasId write SetBotAliasId;
    property BotId: string read GetBotId write SetBotId;
    property InputStream: TStream read GetInputStream write SetInputStream;
    property KeepInputStream: Boolean read GetKeepInputStream write SetKeepInputStream;
    property LocaleId: string read GetLocaleId write SetLocaleId;
    property RequestAttributes: string read GetRequestAttributes write SetRequestAttributes;
    property RequestContentType: string read GetRequestContentType write SetRequestContentType;
    property ResponseContentType: string read GetResponseContentType write SetResponseContentType;
    property SessionId: string read GetSessionId write SetSessionId;
    property SessionStateValue: string read GetSessionStateValue write SetSessionStateValue;
  end;
  
implementation

{ TRecognizeUtteranceRequest }

destructor TRecognizeUtteranceRequest.Destroy;
begin
  InputStream := nil;
  inherited;
end;

function TRecognizeUtteranceRequest.Obj: TRecognizeUtteranceRequest;
begin
  Result := Self;
end;

function TRecognizeUtteranceRequest.GetBotAliasId: string;
begin
  Result := FBotAliasId.ValueOrDefault;
end;

procedure TRecognizeUtteranceRequest.SetBotAliasId(const Value: string);
begin
  FBotAliasId := Value;
end;

function TRecognizeUtteranceRequest.IsSetBotAliasId: Boolean;
begin
  Result := FBotAliasId.HasValue;
end;

function TRecognizeUtteranceRequest.GetBotId: string;
begin
  Result := FBotId.ValueOrDefault;
end;

procedure TRecognizeUtteranceRequest.SetBotId(const Value: string);
begin
  FBotId := Value;
end;

function TRecognizeUtteranceRequest.IsSetBotId: Boolean;
begin
  Result := FBotId.HasValue;
end;

function TRecognizeUtteranceRequest.GetInputStream: TStream;
begin
  Result := FInputStream;
end;

procedure TRecognizeUtteranceRequest.SetInputStream(const Value: TStream);
begin
  if FInputStream <> Value then
  begin
    if not KeepInputStream then
      FInputStream.Free;
    FInputStream := Value;
  end;
end;

function TRecognizeUtteranceRequest.GetKeepInputStream: Boolean;
begin
  Result := FKeepInputStream;
end;

procedure TRecognizeUtteranceRequest.SetKeepInputStream(const Value: Boolean);
begin
  FKeepInputStream := Value;
end;

function TRecognizeUtteranceRequest.IsSetInputStream: Boolean;
begin
  Result := FInputStream <> nil;
end;

function TRecognizeUtteranceRequest.GetLocaleId: string;
begin
  Result := FLocaleId.ValueOrDefault;
end;

procedure TRecognizeUtteranceRequest.SetLocaleId(const Value: string);
begin
  FLocaleId := Value;
end;

function TRecognizeUtteranceRequest.IsSetLocaleId: Boolean;
begin
  Result := FLocaleId.HasValue;
end;

function TRecognizeUtteranceRequest.GetRequestAttributes: string;
begin
  Result := FRequestAttributes.ValueOrDefault;
end;

procedure TRecognizeUtteranceRequest.SetRequestAttributes(const Value: string);
begin
  FRequestAttributes := Value;
end;

function TRecognizeUtteranceRequest.IsSetRequestAttributes: Boolean;
begin
  Result := FRequestAttributes.HasValue;
end;

function TRecognizeUtteranceRequest.GetRequestContentType: string;
begin
  Result := FRequestContentType.ValueOrDefault;
end;

procedure TRecognizeUtteranceRequest.SetRequestContentType(const Value: string);
begin
  FRequestContentType := Value;
end;

function TRecognizeUtteranceRequest.IsSetRequestContentType: Boolean;
begin
  Result := FRequestContentType.HasValue;
end;

function TRecognizeUtteranceRequest.GetResponseContentType: string;
begin
  Result := FResponseContentType.ValueOrDefault;
end;

procedure TRecognizeUtteranceRequest.SetResponseContentType(const Value: string);
begin
  FResponseContentType := Value;
end;

function TRecognizeUtteranceRequest.IsSetResponseContentType: Boolean;
begin
  Result := FResponseContentType.HasValue;
end;

function TRecognizeUtteranceRequest.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TRecognizeUtteranceRequest.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TRecognizeUtteranceRequest.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

function TRecognizeUtteranceRequest.GetSessionStateValue: string;
begin
  Result := FSessionStateValue.ValueOrDefault;
end;

procedure TRecognizeUtteranceRequest.SetSessionStateValue(const Value: string);
begin
  FSessionStateValue := Value;
end;

function TRecognizeUtteranceRequest.IsSetSessionStateValue: Boolean;
begin
  Result := FSessionStateValue.HasValue;
end;

function TRecognizeUtteranceRequest.CreateSigner: TAbstractAWSSigner;
begin
  Result := TAWS4Signer.Create(False);
end;

end.
