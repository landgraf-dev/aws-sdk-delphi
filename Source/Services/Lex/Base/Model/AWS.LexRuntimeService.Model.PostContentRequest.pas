unit AWS.LexRuntimeService.Model.PostContentRequest;

interface

uses
  AWS.LexRuntimeService.Model.Request, 
  AWS.Nullable, 
  System.Classes, 
  AWS.Auth.Signer;

type
  TPostContentRequest = class;
  
  IPostContentRequest = interface
    function GetAccept: string;
    procedure SetAccept(const Value: string);
    function GetActiveContexts: string;
    procedure SetActiveContexts(const Value: string);
    function GetBotAlias: string;
    procedure SetBotAlias(const Value: string);
    function GetBotName: string;
    procedure SetBotName(const Value: string);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetInputStream: TStream;
    procedure SetInputStream(const Value: TStream);
    function GetKeepInputStream: Boolean;
    procedure SetKeepInputStream(const Value: Boolean);
    function GetRequestAttributes: string;
    procedure SetRequestAttributes(const Value: string);
    function GetSessionAttributes: string;
    procedure SetSessionAttributes(const Value: string);
    function GetUserId: string;
    procedure SetUserId(const Value: string);
    function Obj: TPostContentRequest;
    function CreateSigner: TAbstractAWSSigner;
    function IsSetAccept: Boolean;
    function IsSetActiveContexts: Boolean;
    function IsSetBotAlias: Boolean;
    function IsSetBotName: Boolean;
    function IsSetContentType: Boolean;
    function IsSetInputStream: Boolean;
    function IsSetRequestAttributes: Boolean;
    function IsSetSessionAttributes: Boolean;
    function IsSetUserId: Boolean;
    property Accept: string read GetAccept write SetAccept;
    property ActiveContexts: string read GetActiveContexts write SetActiveContexts;
    property BotAlias: string read GetBotAlias write SetBotAlias;
    property BotName: string read GetBotName write SetBotName;
    property ContentType: string read GetContentType write SetContentType;
    property InputStream: TStream read GetInputStream write SetInputStream;
    property KeepInputStream: Boolean read GetKeepInputStream write SetKeepInputStream;
    property RequestAttributes: string read GetRequestAttributes write SetRequestAttributes;
    property SessionAttributes: string read GetSessionAttributes write SetSessionAttributes;
    property UserId: string read GetUserId write SetUserId;
  end;
  
  TPostContentRequest = class(TAmazonLexRequest, IPostContentRequest)
  strict private
    FAccept: Nullable<string>;
    FActiveContexts: Nullable<string>;
    FBotAlias: Nullable<string>;
    FBotName: Nullable<string>;
    FContentType: Nullable<string>;
    FInputStream: TStream;
    FKeepInputStream: Boolean;
    FRequestAttributes: Nullable<string>;
    FSessionAttributes: Nullable<string>;
    FUserId: Nullable<string>;
    function GetAccept: string;
    procedure SetAccept(const Value: string);
    function GetActiveContexts: string;
    procedure SetActiveContexts(const Value: string);
    function GetBotAlias: string;
    procedure SetBotAlias(const Value: string);
    function GetBotName: string;
    procedure SetBotName(const Value: string);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetInputStream: TStream;
    procedure SetInputStream(const Value: TStream);
    function GetKeepInputStream: Boolean;
    procedure SetKeepInputStream(const Value: Boolean);
    function GetRequestAttributes: string;
    procedure SetRequestAttributes(const Value: string);
    function GetSessionAttributes: string;
    procedure SetSessionAttributes(const Value: string);
    function GetUserId: string;
    procedure SetUserId(const Value: string);
  strict protected
    function Obj: TPostContentRequest;
    function CreateSigner: TAbstractAWSSigner; override;
  public
    destructor Destroy; override;
    function IsSetAccept: Boolean;
    function IsSetActiveContexts: Boolean;
    function IsSetBotAlias: Boolean;
    function IsSetBotName: Boolean;
    function IsSetContentType: Boolean;
    function IsSetInputStream: Boolean;
    function IsSetRequestAttributes: Boolean;
    function IsSetSessionAttributes: Boolean;
    function IsSetUserId: Boolean;
    property Accept: string read GetAccept write SetAccept;
    property ActiveContexts: string read GetActiveContexts write SetActiveContexts;
    property BotAlias: string read GetBotAlias write SetBotAlias;
    property BotName: string read GetBotName write SetBotName;
    property ContentType: string read GetContentType write SetContentType;
    property InputStream: TStream read GetInputStream write SetInputStream;
    property KeepInputStream: Boolean read GetKeepInputStream write SetKeepInputStream;
    property RequestAttributes: string read GetRequestAttributes write SetRequestAttributes;
    property SessionAttributes: string read GetSessionAttributes write SetSessionAttributes;
    property UserId: string read GetUserId write SetUserId;
  end;
  
implementation

{ TPostContentRequest }

destructor TPostContentRequest.Destroy;
begin
  InputStream := nil;
  inherited;
end;

function TPostContentRequest.Obj: TPostContentRequest;
begin
  Result := Self;
end;

function TPostContentRequest.GetAccept: string;
begin
  Result := FAccept.ValueOrDefault;
end;

procedure TPostContentRequest.SetAccept(const Value: string);
begin
  FAccept := Value;
end;

function TPostContentRequest.IsSetAccept: Boolean;
begin
  Result := FAccept.HasValue;
end;

function TPostContentRequest.GetActiveContexts: string;
begin
  Result := FActiveContexts.ValueOrDefault;
end;

procedure TPostContentRequest.SetActiveContexts(const Value: string);
begin
  FActiveContexts := Value;
end;

function TPostContentRequest.IsSetActiveContexts: Boolean;
begin
  Result := FActiveContexts.HasValue;
end;

function TPostContentRequest.GetBotAlias: string;
begin
  Result := FBotAlias.ValueOrDefault;
end;

procedure TPostContentRequest.SetBotAlias(const Value: string);
begin
  FBotAlias := Value;
end;

function TPostContentRequest.IsSetBotAlias: Boolean;
begin
  Result := FBotAlias.HasValue;
end;

function TPostContentRequest.GetBotName: string;
begin
  Result := FBotName.ValueOrDefault;
end;

procedure TPostContentRequest.SetBotName(const Value: string);
begin
  FBotName := Value;
end;

function TPostContentRequest.IsSetBotName: Boolean;
begin
  Result := FBotName.HasValue;
end;

function TPostContentRequest.GetContentType: string;
begin
  Result := FContentType.ValueOrDefault;
end;

procedure TPostContentRequest.SetContentType(const Value: string);
begin
  FContentType := Value;
end;

function TPostContentRequest.IsSetContentType: Boolean;
begin
  Result := FContentType.HasValue;
end;

function TPostContentRequest.GetInputStream: TStream;
begin
  Result := FInputStream;
end;

procedure TPostContentRequest.SetInputStream(const Value: TStream);
begin
  if FInputStream <> Value then
  begin
    if not KeepInputStream then
      FInputStream.Free;
    FInputStream := Value;
  end;
end;

function TPostContentRequest.GetKeepInputStream: Boolean;
begin
  Result := FKeepInputStream;
end;

procedure TPostContentRequest.SetKeepInputStream(const Value: Boolean);
begin
  FKeepInputStream := Value;
end;

function TPostContentRequest.IsSetInputStream: Boolean;
begin
  Result := FInputStream <> nil;
end;

function TPostContentRequest.GetRequestAttributes: string;
begin
  Result := FRequestAttributes.ValueOrDefault;
end;

procedure TPostContentRequest.SetRequestAttributes(const Value: string);
begin
  FRequestAttributes := Value;
end;

function TPostContentRequest.IsSetRequestAttributes: Boolean;
begin
  Result := FRequestAttributes.HasValue;
end;

function TPostContentRequest.GetSessionAttributes: string;
begin
  Result := FSessionAttributes.ValueOrDefault;
end;

procedure TPostContentRequest.SetSessionAttributes(const Value: string);
begin
  FSessionAttributes := Value;
end;

function TPostContentRequest.IsSetSessionAttributes: Boolean;
begin
  Result := FSessionAttributes.HasValue;
end;

function TPostContentRequest.GetUserId: string;
begin
  Result := FUserId.ValueOrDefault;
end;

procedure TPostContentRequest.SetUserId(const Value: string);
begin
  FUserId := Value;
end;

function TPostContentRequest.IsSetUserId: Boolean;
begin
  Result := FUserId.HasValue;
end;

function TPostContentRequest.CreateSigner: TAbstractAWSSigner;
begin
  Result := TAWS4Signer.Create(False);
end;

end.
