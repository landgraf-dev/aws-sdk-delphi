unit AWS.LexRuntimeService.Model.PutSessionRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.LexRuntimeService.Model.Request, 
  AWS.LexRuntimeService.Model.ActiveContext, 
  AWS.LexRuntimeService.Model.DialogAction, 
  AWS.LexRuntimeService.Model.IntentSummary;

type
  TPutSessionRequest = class;
  
  IPutSessionRequest = interface
    function GetAccept: string;
    procedure SetAccept(const Value: string);
    function GetActiveContexts: TObjectList<TActiveContext>;
    procedure SetActiveContexts(const Value: TObjectList<TActiveContext>);
    function GetKeepActiveContexts: Boolean;
    procedure SetKeepActiveContexts(const Value: Boolean);
    function GetBotAlias: string;
    procedure SetBotAlias(const Value: string);
    function GetBotName: string;
    procedure SetBotName(const Value: string);
    function GetDialogAction: TDialogAction;
    procedure SetDialogAction(const Value: TDialogAction);
    function GetKeepDialogAction: Boolean;
    procedure SetKeepDialogAction(const Value: Boolean);
    function GetRecentIntentSummaryView: TObjectList<TIntentSummary>;
    procedure SetRecentIntentSummaryView(const Value: TObjectList<TIntentSummary>);
    function GetKeepRecentIntentSummaryView: Boolean;
    procedure SetKeepRecentIntentSummaryView(const Value: Boolean);
    function GetSessionAttributes: TDictionary<string, string>;
    procedure SetSessionAttributes(const Value: TDictionary<string, string>);
    function GetKeepSessionAttributes: Boolean;
    procedure SetKeepSessionAttributes(const Value: Boolean);
    function GetUserId: string;
    procedure SetUserId(const Value: string);
    function Obj: TPutSessionRequest;
    function IsSetAccept: Boolean;
    function IsSetActiveContexts: Boolean;
    function IsSetBotAlias: Boolean;
    function IsSetBotName: Boolean;
    function IsSetDialogAction: Boolean;
    function IsSetRecentIntentSummaryView: Boolean;
    function IsSetSessionAttributes: Boolean;
    function IsSetUserId: Boolean;
    property Accept: string read GetAccept write SetAccept;
    property ActiveContexts: TObjectList<TActiveContext> read GetActiveContexts write SetActiveContexts;
    property KeepActiveContexts: Boolean read GetKeepActiveContexts write SetKeepActiveContexts;
    property BotAlias: string read GetBotAlias write SetBotAlias;
    property BotName: string read GetBotName write SetBotName;
    property DialogAction: TDialogAction read GetDialogAction write SetDialogAction;
    property KeepDialogAction: Boolean read GetKeepDialogAction write SetKeepDialogAction;
    property RecentIntentSummaryView: TObjectList<TIntentSummary> read GetRecentIntentSummaryView write SetRecentIntentSummaryView;
    property KeepRecentIntentSummaryView: Boolean read GetKeepRecentIntentSummaryView write SetKeepRecentIntentSummaryView;
    property SessionAttributes: TDictionary<string, string> read GetSessionAttributes write SetSessionAttributes;
    property KeepSessionAttributes: Boolean read GetKeepSessionAttributes write SetKeepSessionAttributes;
    property UserId: string read GetUserId write SetUserId;
  end;
  
  TPutSessionRequest = class(TAmazonLexRequest, IPutSessionRequest)
  strict private
    FAccept: Nullable<string>;
    FActiveContexts: TObjectList<TActiveContext>;
    FKeepActiveContexts: Boolean;
    FBotAlias: Nullable<string>;
    FBotName: Nullable<string>;
    FDialogAction: TDialogAction;
    FKeepDialogAction: Boolean;
    FRecentIntentSummaryView: TObjectList<TIntentSummary>;
    FKeepRecentIntentSummaryView: Boolean;
    FSessionAttributes: TDictionary<string, string>;
    FKeepSessionAttributes: Boolean;
    FUserId: Nullable<string>;
    function GetAccept: string;
    procedure SetAccept(const Value: string);
    function GetActiveContexts: TObjectList<TActiveContext>;
    procedure SetActiveContexts(const Value: TObjectList<TActiveContext>);
    function GetKeepActiveContexts: Boolean;
    procedure SetKeepActiveContexts(const Value: Boolean);
    function GetBotAlias: string;
    procedure SetBotAlias(const Value: string);
    function GetBotName: string;
    procedure SetBotName(const Value: string);
    function GetDialogAction: TDialogAction;
    procedure SetDialogAction(const Value: TDialogAction);
    function GetKeepDialogAction: Boolean;
    procedure SetKeepDialogAction(const Value: Boolean);
    function GetRecentIntentSummaryView: TObjectList<TIntentSummary>;
    procedure SetRecentIntentSummaryView(const Value: TObjectList<TIntentSummary>);
    function GetKeepRecentIntentSummaryView: Boolean;
    procedure SetKeepRecentIntentSummaryView(const Value: Boolean);
    function GetSessionAttributes: TDictionary<string, string>;
    procedure SetSessionAttributes(const Value: TDictionary<string, string>);
    function GetKeepSessionAttributes: Boolean;
    procedure SetKeepSessionAttributes(const Value: Boolean);
    function GetUserId: string;
    procedure SetUserId(const Value: string);
  strict protected
    function Obj: TPutSessionRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAccept: Boolean;
    function IsSetActiveContexts: Boolean;
    function IsSetBotAlias: Boolean;
    function IsSetBotName: Boolean;
    function IsSetDialogAction: Boolean;
    function IsSetRecentIntentSummaryView: Boolean;
    function IsSetSessionAttributes: Boolean;
    function IsSetUserId: Boolean;
    property Accept: string read GetAccept write SetAccept;
    property ActiveContexts: TObjectList<TActiveContext> read GetActiveContexts write SetActiveContexts;
    property KeepActiveContexts: Boolean read GetKeepActiveContexts write SetKeepActiveContexts;
    property BotAlias: string read GetBotAlias write SetBotAlias;
    property BotName: string read GetBotName write SetBotName;
    property DialogAction: TDialogAction read GetDialogAction write SetDialogAction;
    property KeepDialogAction: Boolean read GetKeepDialogAction write SetKeepDialogAction;
    property RecentIntentSummaryView: TObjectList<TIntentSummary> read GetRecentIntentSummaryView write SetRecentIntentSummaryView;
    property KeepRecentIntentSummaryView: Boolean read GetKeepRecentIntentSummaryView write SetKeepRecentIntentSummaryView;
    property SessionAttributes: TDictionary<string, string> read GetSessionAttributes write SetSessionAttributes;
    property KeepSessionAttributes: Boolean read GetKeepSessionAttributes write SetKeepSessionAttributes;
    property UserId: string read GetUserId write SetUserId;
  end;
  
implementation

{ TPutSessionRequest }

constructor TPutSessionRequest.Create;
begin
  inherited;
  FActiveContexts := TObjectList<TActiveContext>.Create;
  FRecentIntentSummaryView := TObjectList<TIntentSummary>.Create;
  FSessionAttributes := TDictionary<string, string>.Create;
end;

destructor TPutSessionRequest.Destroy;
begin
  SessionAttributes := nil;
  RecentIntentSummaryView := nil;
  DialogAction := nil;
  ActiveContexts := nil;
  inherited;
end;

function TPutSessionRequest.Obj: TPutSessionRequest;
begin
  Result := Self;
end;

function TPutSessionRequest.GetAccept: string;
begin
  Result := FAccept.ValueOrDefault;
end;

procedure TPutSessionRequest.SetAccept(const Value: string);
begin
  FAccept := Value;
end;

function TPutSessionRequest.IsSetAccept: Boolean;
begin
  Result := FAccept.HasValue;
end;

function TPutSessionRequest.GetActiveContexts: TObjectList<TActiveContext>;
begin
  Result := FActiveContexts;
end;

procedure TPutSessionRequest.SetActiveContexts(const Value: TObjectList<TActiveContext>);
begin
  if FActiveContexts <> Value then
  begin
    if not KeepActiveContexts then
      FActiveContexts.Free;
    FActiveContexts := Value;
  end;
end;

function TPutSessionRequest.GetKeepActiveContexts: Boolean;
begin
  Result := FKeepActiveContexts;
end;

procedure TPutSessionRequest.SetKeepActiveContexts(const Value: Boolean);
begin
  FKeepActiveContexts := Value;
end;

function TPutSessionRequest.IsSetActiveContexts: Boolean;
begin
  Result := (FActiveContexts <> nil) and (FActiveContexts.Count > 0);
end;

function TPutSessionRequest.GetBotAlias: string;
begin
  Result := FBotAlias.ValueOrDefault;
end;

procedure TPutSessionRequest.SetBotAlias(const Value: string);
begin
  FBotAlias := Value;
end;

function TPutSessionRequest.IsSetBotAlias: Boolean;
begin
  Result := FBotAlias.HasValue;
end;

function TPutSessionRequest.GetBotName: string;
begin
  Result := FBotName.ValueOrDefault;
end;

procedure TPutSessionRequest.SetBotName(const Value: string);
begin
  FBotName := Value;
end;

function TPutSessionRequest.IsSetBotName: Boolean;
begin
  Result := FBotName.HasValue;
end;

function TPutSessionRequest.GetDialogAction: TDialogAction;
begin
  Result := FDialogAction;
end;

procedure TPutSessionRequest.SetDialogAction(const Value: TDialogAction);
begin
  if FDialogAction <> Value then
  begin
    if not KeepDialogAction then
      FDialogAction.Free;
    FDialogAction := Value;
  end;
end;

function TPutSessionRequest.GetKeepDialogAction: Boolean;
begin
  Result := FKeepDialogAction;
end;

procedure TPutSessionRequest.SetKeepDialogAction(const Value: Boolean);
begin
  FKeepDialogAction := Value;
end;

function TPutSessionRequest.IsSetDialogAction: Boolean;
begin
  Result := FDialogAction <> nil;
end;

function TPutSessionRequest.GetRecentIntentSummaryView: TObjectList<TIntentSummary>;
begin
  Result := FRecentIntentSummaryView;
end;

procedure TPutSessionRequest.SetRecentIntentSummaryView(const Value: TObjectList<TIntentSummary>);
begin
  if FRecentIntentSummaryView <> Value then
  begin
    if not KeepRecentIntentSummaryView then
      FRecentIntentSummaryView.Free;
    FRecentIntentSummaryView := Value;
  end;
end;

function TPutSessionRequest.GetKeepRecentIntentSummaryView: Boolean;
begin
  Result := FKeepRecentIntentSummaryView;
end;

procedure TPutSessionRequest.SetKeepRecentIntentSummaryView(const Value: Boolean);
begin
  FKeepRecentIntentSummaryView := Value;
end;

function TPutSessionRequest.IsSetRecentIntentSummaryView: Boolean;
begin
  Result := (FRecentIntentSummaryView <> nil) and (FRecentIntentSummaryView.Count > 0);
end;

function TPutSessionRequest.GetSessionAttributes: TDictionary<string, string>;
begin
  Result := FSessionAttributes;
end;

procedure TPutSessionRequest.SetSessionAttributes(const Value: TDictionary<string, string>);
begin
  if FSessionAttributes <> Value then
  begin
    if not KeepSessionAttributes then
      FSessionAttributes.Free;
    FSessionAttributes := Value;
  end;
end;

function TPutSessionRequest.GetKeepSessionAttributes: Boolean;
begin
  Result := FKeepSessionAttributes;
end;

procedure TPutSessionRequest.SetKeepSessionAttributes(const Value: Boolean);
begin
  FKeepSessionAttributes := Value;
end;

function TPutSessionRequest.IsSetSessionAttributes: Boolean;
begin
  Result := (FSessionAttributes <> nil) and (FSessionAttributes.Count > 0);
end;

function TPutSessionRequest.GetUserId: string;
begin
  Result := FUserId.ValueOrDefault;
end;

procedure TPutSessionRequest.SetUserId(const Value: string);
begin
  FUserId := Value;
end;

function TPutSessionRequest.IsSetUserId: Boolean;
begin
  Result := FUserId.HasValue;
end;

end.
