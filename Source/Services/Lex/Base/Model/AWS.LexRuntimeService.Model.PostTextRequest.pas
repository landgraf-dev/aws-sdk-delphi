unit AWS.LexRuntimeService.Model.PostTextRequest;

interface

uses
  System.Generics.Collections, 
  AWS.LexRuntimeService.Model.Request, 
  AWS.LexRuntimeService.Model.ActiveContext, 
  AWS.Nullable;

type
  TPostTextRequest = class;
  
  IPostTextRequest = interface
    function GetActiveContexts: TObjectList<TActiveContext>;
    procedure SetActiveContexts(const Value: TObjectList<TActiveContext>);
    function GetKeepActiveContexts: Boolean;
    procedure SetKeepActiveContexts(const Value: Boolean);
    function GetBotAlias: string;
    procedure SetBotAlias(const Value: string);
    function GetBotName: string;
    procedure SetBotName(const Value: string);
    function GetInputText: string;
    procedure SetInputText(const Value: string);
    function GetRequestAttributes: TDictionary<string, string>;
    procedure SetRequestAttributes(const Value: TDictionary<string, string>);
    function GetKeepRequestAttributes: Boolean;
    procedure SetKeepRequestAttributes(const Value: Boolean);
    function GetSessionAttributes: TDictionary<string, string>;
    procedure SetSessionAttributes(const Value: TDictionary<string, string>);
    function GetKeepSessionAttributes: Boolean;
    procedure SetKeepSessionAttributes(const Value: Boolean);
    function GetUserId: string;
    procedure SetUserId(const Value: string);
    function Obj: TPostTextRequest;
    function IsSetActiveContexts: Boolean;
    function IsSetBotAlias: Boolean;
    function IsSetBotName: Boolean;
    function IsSetInputText: Boolean;
    function IsSetRequestAttributes: Boolean;
    function IsSetSessionAttributes: Boolean;
    function IsSetUserId: Boolean;
    property ActiveContexts: TObjectList<TActiveContext> read GetActiveContexts write SetActiveContexts;
    property KeepActiveContexts: Boolean read GetKeepActiveContexts write SetKeepActiveContexts;
    property BotAlias: string read GetBotAlias write SetBotAlias;
    property BotName: string read GetBotName write SetBotName;
    property InputText: string read GetInputText write SetInputText;
    property RequestAttributes: TDictionary<string, string> read GetRequestAttributes write SetRequestAttributes;
    property KeepRequestAttributes: Boolean read GetKeepRequestAttributes write SetKeepRequestAttributes;
    property SessionAttributes: TDictionary<string, string> read GetSessionAttributes write SetSessionAttributes;
    property KeepSessionAttributes: Boolean read GetKeepSessionAttributes write SetKeepSessionAttributes;
    property UserId: string read GetUserId write SetUserId;
  end;
  
  TPostTextRequest = class(TAmazonLexRequest, IPostTextRequest)
  strict private
    FActiveContexts: TObjectList<TActiveContext>;
    FKeepActiveContexts: Boolean;
    FBotAlias: Nullable<string>;
    FBotName: Nullable<string>;
    FInputText: Nullable<string>;
    FRequestAttributes: TDictionary<string, string>;
    FKeepRequestAttributes: Boolean;
    FSessionAttributes: TDictionary<string, string>;
    FKeepSessionAttributes: Boolean;
    FUserId: Nullable<string>;
    function GetActiveContexts: TObjectList<TActiveContext>;
    procedure SetActiveContexts(const Value: TObjectList<TActiveContext>);
    function GetKeepActiveContexts: Boolean;
    procedure SetKeepActiveContexts(const Value: Boolean);
    function GetBotAlias: string;
    procedure SetBotAlias(const Value: string);
    function GetBotName: string;
    procedure SetBotName(const Value: string);
    function GetInputText: string;
    procedure SetInputText(const Value: string);
    function GetRequestAttributes: TDictionary<string, string>;
    procedure SetRequestAttributes(const Value: TDictionary<string, string>);
    function GetKeepRequestAttributes: Boolean;
    procedure SetKeepRequestAttributes(const Value: Boolean);
    function GetSessionAttributes: TDictionary<string, string>;
    procedure SetSessionAttributes(const Value: TDictionary<string, string>);
    function GetKeepSessionAttributes: Boolean;
    procedure SetKeepSessionAttributes(const Value: Boolean);
    function GetUserId: string;
    procedure SetUserId(const Value: string);
  strict protected
    function Obj: TPostTextRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetActiveContexts: Boolean;
    function IsSetBotAlias: Boolean;
    function IsSetBotName: Boolean;
    function IsSetInputText: Boolean;
    function IsSetRequestAttributes: Boolean;
    function IsSetSessionAttributes: Boolean;
    function IsSetUserId: Boolean;
    property ActiveContexts: TObjectList<TActiveContext> read GetActiveContexts write SetActiveContexts;
    property KeepActiveContexts: Boolean read GetKeepActiveContexts write SetKeepActiveContexts;
    property BotAlias: string read GetBotAlias write SetBotAlias;
    property BotName: string read GetBotName write SetBotName;
    property InputText: string read GetInputText write SetInputText;
    property RequestAttributes: TDictionary<string, string> read GetRequestAttributes write SetRequestAttributes;
    property KeepRequestAttributes: Boolean read GetKeepRequestAttributes write SetKeepRequestAttributes;
    property SessionAttributes: TDictionary<string, string> read GetSessionAttributes write SetSessionAttributes;
    property KeepSessionAttributes: Boolean read GetKeepSessionAttributes write SetKeepSessionAttributes;
    property UserId: string read GetUserId write SetUserId;
  end;
  
implementation

{ TPostTextRequest }

constructor TPostTextRequest.Create;
begin
  inherited;
  FActiveContexts := TObjectList<TActiveContext>.Create;
  FRequestAttributes := TDictionary<string, string>.Create;
  FSessionAttributes := TDictionary<string, string>.Create;
end;

destructor TPostTextRequest.Destroy;
begin
  SessionAttributes := nil;
  RequestAttributes := nil;
  ActiveContexts := nil;
  inherited;
end;

function TPostTextRequest.Obj: TPostTextRequest;
begin
  Result := Self;
end;

function TPostTextRequest.GetActiveContexts: TObjectList<TActiveContext>;
begin
  Result := FActiveContexts;
end;

procedure TPostTextRequest.SetActiveContexts(const Value: TObjectList<TActiveContext>);
begin
  if FActiveContexts <> Value then
  begin
    if not KeepActiveContexts then
      FActiveContexts.Free;
    FActiveContexts := Value;
  end;
end;

function TPostTextRequest.GetKeepActiveContexts: Boolean;
begin
  Result := FKeepActiveContexts;
end;

procedure TPostTextRequest.SetKeepActiveContexts(const Value: Boolean);
begin
  FKeepActiveContexts := Value;
end;

function TPostTextRequest.IsSetActiveContexts: Boolean;
begin
  Result := (FActiveContexts <> nil) and (FActiveContexts.Count > 0);
end;

function TPostTextRequest.GetBotAlias: string;
begin
  Result := FBotAlias.ValueOrDefault;
end;

procedure TPostTextRequest.SetBotAlias(const Value: string);
begin
  FBotAlias := Value;
end;

function TPostTextRequest.IsSetBotAlias: Boolean;
begin
  Result := FBotAlias.HasValue;
end;

function TPostTextRequest.GetBotName: string;
begin
  Result := FBotName.ValueOrDefault;
end;

procedure TPostTextRequest.SetBotName(const Value: string);
begin
  FBotName := Value;
end;

function TPostTextRequest.IsSetBotName: Boolean;
begin
  Result := FBotName.HasValue;
end;

function TPostTextRequest.GetInputText: string;
begin
  Result := FInputText.ValueOrDefault;
end;

procedure TPostTextRequest.SetInputText(const Value: string);
begin
  FInputText := Value;
end;

function TPostTextRequest.IsSetInputText: Boolean;
begin
  Result := FInputText.HasValue;
end;

function TPostTextRequest.GetRequestAttributes: TDictionary<string, string>;
begin
  Result := FRequestAttributes;
end;

procedure TPostTextRequest.SetRequestAttributes(const Value: TDictionary<string, string>);
begin
  if FRequestAttributes <> Value then
  begin
    if not KeepRequestAttributes then
      FRequestAttributes.Free;
    FRequestAttributes := Value;
  end;
end;

function TPostTextRequest.GetKeepRequestAttributes: Boolean;
begin
  Result := FKeepRequestAttributes;
end;

procedure TPostTextRequest.SetKeepRequestAttributes(const Value: Boolean);
begin
  FKeepRequestAttributes := Value;
end;

function TPostTextRequest.IsSetRequestAttributes: Boolean;
begin
  Result := (FRequestAttributes <> nil) and (FRequestAttributes.Count > 0);
end;

function TPostTextRequest.GetSessionAttributes: TDictionary<string, string>;
begin
  Result := FSessionAttributes;
end;

procedure TPostTextRequest.SetSessionAttributes(const Value: TDictionary<string, string>);
begin
  if FSessionAttributes <> Value then
  begin
    if not KeepSessionAttributes then
      FSessionAttributes.Free;
    FSessionAttributes := Value;
  end;
end;

function TPostTextRequest.GetKeepSessionAttributes: Boolean;
begin
  Result := FKeepSessionAttributes;
end;

procedure TPostTextRequest.SetKeepSessionAttributes(const Value: Boolean);
begin
  FKeepSessionAttributes := Value;
end;

function TPostTextRequest.IsSetSessionAttributes: Boolean;
begin
  Result := (FSessionAttributes <> nil) and (FSessionAttributes.Count > 0);
end;

function TPostTextRequest.GetUserId: string;
begin
  Result := FUserId.ValueOrDefault;
end;

procedure TPostTextRequest.SetUserId(const Value: string);
begin
  FUserId := Value;
end;

function TPostTextRequest.IsSetUserId: Boolean;
begin
  Result := FUserId.HasValue;
end;

end.
