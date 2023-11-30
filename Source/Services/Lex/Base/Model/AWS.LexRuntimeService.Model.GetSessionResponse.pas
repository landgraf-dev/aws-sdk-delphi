unit AWS.LexRuntimeService.Model.GetSessionResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.LexRuntimeService.Model.ActiveContext, 
  AWS.LexRuntimeService.Model.DialogAction, 
  AWS.LexRuntimeService.Model.IntentSummary, 
  AWS.Nullable;

type
  TGetSessionResponse = class;
  
  IGetSessionResponse = interface(IAmazonWebServiceResponse)
    function GetActiveContexts: TObjectList<TActiveContext>;
    procedure SetActiveContexts(const Value: TObjectList<TActiveContext>);
    function GetKeepActiveContexts: Boolean;
    procedure SetKeepActiveContexts(const Value: Boolean);
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
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function Obj: TGetSessionResponse;
    function IsSetActiveContexts: Boolean;
    function IsSetDialogAction: Boolean;
    function IsSetRecentIntentSummaryView: Boolean;
    function IsSetSessionAttributes: Boolean;
    function IsSetSessionId: Boolean;
    property ActiveContexts: TObjectList<TActiveContext> read GetActiveContexts write SetActiveContexts;
    property KeepActiveContexts: Boolean read GetKeepActiveContexts write SetKeepActiveContexts;
    property DialogAction: TDialogAction read GetDialogAction write SetDialogAction;
    property KeepDialogAction: Boolean read GetKeepDialogAction write SetKeepDialogAction;
    property RecentIntentSummaryView: TObjectList<TIntentSummary> read GetRecentIntentSummaryView write SetRecentIntentSummaryView;
    property KeepRecentIntentSummaryView: Boolean read GetKeepRecentIntentSummaryView write SetKeepRecentIntentSummaryView;
    property SessionAttributes: TDictionary<string, string> read GetSessionAttributes write SetSessionAttributes;
    property KeepSessionAttributes: Boolean read GetKeepSessionAttributes write SetKeepSessionAttributes;
    property SessionId: string read GetSessionId write SetSessionId;
  end;
  
  TGetSessionResponse = class(TAmazonWebServiceResponse, IGetSessionResponse)
  strict private
    FActiveContexts: TObjectList<TActiveContext>;
    FKeepActiveContexts: Boolean;
    FDialogAction: TDialogAction;
    FKeepDialogAction: Boolean;
    FRecentIntentSummaryView: TObjectList<TIntentSummary>;
    FKeepRecentIntentSummaryView: Boolean;
    FSessionAttributes: TDictionary<string, string>;
    FKeepSessionAttributes: Boolean;
    FSessionId: Nullable<string>;
    function GetActiveContexts: TObjectList<TActiveContext>;
    procedure SetActiveContexts(const Value: TObjectList<TActiveContext>);
    function GetKeepActiveContexts: Boolean;
    procedure SetKeepActiveContexts(const Value: Boolean);
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
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
  strict protected
    function Obj: TGetSessionResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetActiveContexts: Boolean;
    function IsSetDialogAction: Boolean;
    function IsSetRecentIntentSummaryView: Boolean;
    function IsSetSessionAttributes: Boolean;
    function IsSetSessionId: Boolean;
    property ActiveContexts: TObjectList<TActiveContext> read GetActiveContexts write SetActiveContexts;
    property KeepActiveContexts: Boolean read GetKeepActiveContexts write SetKeepActiveContexts;
    property DialogAction: TDialogAction read GetDialogAction write SetDialogAction;
    property KeepDialogAction: Boolean read GetKeepDialogAction write SetKeepDialogAction;
    property RecentIntentSummaryView: TObjectList<TIntentSummary> read GetRecentIntentSummaryView write SetRecentIntentSummaryView;
    property KeepRecentIntentSummaryView: Boolean read GetKeepRecentIntentSummaryView write SetKeepRecentIntentSummaryView;
    property SessionAttributes: TDictionary<string, string> read GetSessionAttributes write SetSessionAttributes;
    property KeepSessionAttributes: Boolean read GetKeepSessionAttributes write SetKeepSessionAttributes;
    property SessionId: string read GetSessionId write SetSessionId;
  end;
  
implementation

{ TGetSessionResponse }

constructor TGetSessionResponse.Create;
begin
  inherited;
  FActiveContexts := TObjectList<TActiveContext>.Create;
  FRecentIntentSummaryView := TObjectList<TIntentSummary>.Create;
  FSessionAttributes := TDictionary<string, string>.Create;
end;

destructor TGetSessionResponse.Destroy;
begin
  SessionAttributes := nil;
  RecentIntentSummaryView := nil;
  DialogAction := nil;
  ActiveContexts := nil;
  inherited;
end;

function TGetSessionResponse.Obj: TGetSessionResponse;
begin
  Result := Self;
end;

function TGetSessionResponse.GetActiveContexts: TObjectList<TActiveContext>;
begin
  Result := FActiveContexts;
end;

procedure TGetSessionResponse.SetActiveContexts(const Value: TObjectList<TActiveContext>);
begin
  if FActiveContexts <> Value then
  begin
    if not KeepActiveContexts then
      FActiveContexts.Free;
    FActiveContexts := Value;
  end;
end;

function TGetSessionResponse.GetKeepActiveContexts: Boolean;
begin
  Result := FKeepActiveContexts;
end;

procedure TGetSessionResponse.SetKeepActiveContexts(const Value: Boolean);
begin
  FKeepActiveContexts := Value;
end;

function TGetSessionResponse.IsSetActiveContexts: Boolean;
begin
  Result := (FActiveContexts <> nil) and (FActiveContexts.Count > 0);
end;

function TGetSessionResponse.GetDialogAction: TDialogAction;
begin
  Result := FDialogAction;
end;

procedure TGetSessionResponse.SetDialogAction(const Value: TDialogAction);
begin
  if FDialogAction <> Value then
  begin
    if not KeepDialogAction then
      FDialogAction.Free;
    FDialogAction := Value;
  end;
end;

function TGetSessionResponse.GetKeepDialogAction: Boolean;
begin
  Result := FKeepDialogAction;
end;

procedure TGetSessionResponse.SetKeepDialogAction(const Value: Boolean);
begin
  FKeepDialogAction := Value;
end;

function TGetSessionResponse.IsSetDialogAction: Boolean;
begin
  Result := FDialogAction <> nil;
end;

function TGetSessionResponse.GetRecentIntentSummaryView: TObjectList<TIntentSummary>;
begin
  Result := FRecentIntentSummaryView;
end;

procedure TGetSessionResponse.SetRecentIntentSummaryView(const Value: TObjectList<TIntentSummary>);
begin
  if FRecentIntentSummaryView <> Value then
  begin
    if not KeepRecentIntentSummaryView then
      FRecentIntentSummaryView.Free;
    FRecentIntentSummaryView := Value;
  end;
end;

function TGetSessionResponse.GetKeepRecentIntentSummaryView: Boolean;
begin
  Result := FKeepRecentIntentSummaryView;
end;

procedure TGetSessionResponse.SetKeepRecentIntentSummaryView(const Value: Boolean);
begin
  FKeepRecentIntentSummaryView := Value;
end;

function TGetSessionResponse.IsSetRecentIntentSummaryView: Boolean;
begin
  Result := (FRecentIntentSummaryView <> nil) and (FRecentIntentSummaryView.Count > 0);
end;

function TGetSessionResponse.GetSessionAttributes: TDictionary<string, string>;
begin
  Result := FSessionAttributes;
end;

procedure TGetSessionResponse.SetSessionAttributes(const Value: TDictionary<string, string>);
begin
  if FSessionAttributes <> Value then
  begin
    if not KeepSessionAttributes then
      FSessionAttributes.Free;
    FSessionAttributes := Value;
  end;
end;

function TGetSessionResponse.GetKeepSessionAttributes: Boolean;
begin
  Result := FKeepSessionAttributes;
end;

procedure TGetSessionResponse.SetKeepSessionAttributes(const Value: Boolean);
begin
  FKeepSessionAttributes := Value;
end;

function TGetSessionResponse.IsSetSessionAttributes: Boolean;
begin
  Result := (FSessionAttributes <> nil) and (FSessionAttributes.Count > 0);
end;

function TGetSessionResponse.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TGetSessionResponse.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TGetSessionResponse.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

end.
