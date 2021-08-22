unit AWS.LexRuntimeV2.Model.SessionState;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.LexRuntimeV2.Model.ActiveContext, 
  AWS.LexRuntimeV2.Model.DialogAction, 
  AWS.LexRuntimeV2.Model.Intent;

type
  TSessionState = class;
  
  ISessionState = interface
    function GetActiveContexts: TObjectList<TActiveContext>;
    procedure SetActiveContexts(const Value: TObjectList<TActiveContext>);
    function GetKeepActiveContexts: Boolean;
    procedure SetKeepActiveContexts(const Value: Boolean);
    function GetDialogAction: TDialogAction;
    procedure SetDialogAction(const Value: TDialogAction);
    function GetKeepDialogAction: Boolean;
    procedure SetKeepDialogAction(const Value: Boolean);
    function GetIntent: TIntent;
    procedure SetIntent(const Value: TIntent);
    function GetKeepIntent: Boolean;
    procedure SetKeepIntent(const Value: Boolean);
    function GetOriginatingRequestId: string;
    procedure SetOriginatingRequestId(const Value: string);
    function GetSessionAttributes: TDictionary<string, string>;
    procedure SetSessionAttributes(const Value: TDictionary<string, string>);
    function GetKeepSessionAttributes: Boolean;
    procedure SetKeepSessionAttributes(const Value: Boolean);
    function Obj: TSessionState;
    function IsSetActiveContexts: Boolean;
    function IsSetDialogAction: Boolean;
    function IsSetIntent: Boolean;
    function IsSetOriginatingRequestId: Boolean;
    function IsSetSessionAttributes: Boolean;
    property ActiveContexts: TObjectList<TActiveContext> read GetActiveContexts write SetActiveContexts;
    property KeepActiveContexts: Boolean read GetKeepActiveContexts write SetKeepActiveContexts;
    property DialogAction: TDialogAction read GetDialogAction write SetDialogAction;
    property KeepDialogAction: Boolean read GetKeepDialogAction write SetKeepDialogAction;
    property Intent: TIntent read GetIntent write SetIntent;
    property KeepIntent: Boolean read GetKeepIntent write SetKeepIntent;
    property OriginatingRequestId: string read GetOriginatingRequestId write SetOriginatingRequestId;
    property SessionAttributes: TDictionary<string, string> read GetSessionAttributes write SetSessionAttributes;
    property KeepSessionAttributes: Boolean read GetKeepSessionAttributes write SetKeepSessionAttributes;
  end;
  
  TSessionState = class
  strict private
    FActiveContexts: TObjectList<TActiveContext>;
    FKeepActiveContexts: Boolean;
    FDialogAction: TDialogAction;
    FKeepDialogAction: Boolean;
    FIntent: TIntent;
    FKeepIntent: Boolean;
    FOriginatingRequestId: Nullable<string>;
    FSessionAttributes: TDictionary<string, string>;
    FKeepSessionAttributes: Boolean;
    function GetActiveContexts: TObjectList<TActiveContext>;
    procedure SetActiveContexts(const Value: TObjectList<TActiveContext>);
    function GetKeepActiveContexts: Boolean;
    procedure SetKeepActiveContexts(const Value: Boolean);
    function GetDialogAction: TDialogAction;
    procedure SetDialogAction(const Value: TDialogAction);
    function GetKeepDialogAction: Boolean;
    procedure SetKeepDialogAction(const Value: Boolean);
    function GetIntent: TIntent;
    procedure SetIntent(const Value: TIntent);
    function GetKeepIntent: Boolean;
    procedure SetKeepIntent(const Value: Boolean);
    function GetOriginatingRequestId: string;
    procedure SetOriginatingRequestId(const Value: string);
    function GetSessionAttributes: TDictionary<string, string>;
    procedure SetSessionAttributes(const Value: TDictionary<string, string>);
    function GetKeepSessionAttributes: Boolean;
    procedure SetKeepSessionAttributes(const Value: Boolean);
  strict protected
    function Obj: TSessionState;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetActiveContexts: Boolean;
    function IsSetDialogAction: Boolean;
    function IsSetIntent: Boolean;
    function IsSetOriginatingRequestId: Boolean;
    function IsSetSessionAttributes: Boolean;
    property ActiveContexts: TObjectList<TActiveContext> read GetActiveContexts write SetActiveContexts;
    property KeepActiveContexts: Boolean read GetKeepActiveContexts write SetKeepActiveContexts;
    property DialogAction: TDialogAction read GetDialogAction write SetDialogAction;
    property KeepDialogAction: Boolean read GetKeepDialogAction write SetKeepDialogAction;
    property Intent: TIntent read GetIntent write SetIntent;
    property KeepIntent: Boolean read GetKeepIntent write SetKeepIntent;
    property OriginatingRequestId: string read GetOriginatingRequestId write SetOriginatingRequestId;
    property SessionAttributes: TDictionary<string, string> read GetSessionAttributes write SetSessionAttributes;
    property KeepSessionAttributes: Boolean read GetKeepSessionAttributes write SetKeepSessionAttributes;
  end;
  
implementation

{ TSessionState }

constructor TSessionState.Create;
begin
  inherited;
  FActiveContexts := TObjectList<TActiveContext>.Create;
  FSessionAttributes := TDictionary<string, string>.Create;
end;

destructor TSessionState.Destroy;
begin
  SessionAttributes := nil;
  Intent := nil;
  DialogAction := nil;
  ActiveContexts := nil;
  inherited;
end;

function TSessionState.Obj: TSessionState;
begin
  Result := Self;
end;

function TSessionState.GetActiveContexts: TObjectList<TActiveContext>;
begin
  Result := FActiveContexts;
end;

procedure TSessionState.SetActiveContexts(const Value: TObjectList<TActiveContext>);
begin
  if FActiveContexts <> Value then
  begin
    if not KeepActiveContexts then
      FActiveContexts.Free;
    FActiveContexts := Value;
  end;
end;

function TSessionState.GetKeepActiveContexts: Boolean;
begin
  Result := FKeepActiveContexts;
end;

procedure TSessionState.SetKeepActiveContexts(const Value: Boolean);
begin
  FKeepActiveContexts := Value;
end;

function TSessionState.IsSetActiveContexts: Boolean;
begin
  Result := (FActiveContexts <> nil) and (FActiveContexts.Count > 0);
end;

function TSessionState.GetDialogAction: TDialogAction;
begin
  Result := FDialogAction;
end;

procedure TSessionState.SetDialogAction(const Value: TDialogAction);
begin
  if FDialogAction <> Value then
  begin
    if not KeepDialogAction then
      FDialogAction.Free;
    FDialogAction := Value;
  end;
end;

function TSessionState.GetKeepDialogAction: Boolean;
begin
  Result := FKeepDialogAction;
end;

procedure TSessionState.SetKeepDialogAction(const Value: Boolean);
begin
  FKeepDialogAction := Value;
end;

function TSessionState.IsSetDialogAction: Boolean;
begin
  Result := FDialogAction <> nil;
end;

function TSessionState.GetIntent: TIntent;
begin
  Result := FIntent;
end;

procedure TSessionState.SetIntent(const Value: TIntent);
begin
  if FIntent <> Value then
  begin
    if not KeepIntent then
      FIntent.Free;
    FIntent := Value;
  end;
end;

function TSessionState.GetKeepIntent: Boolean;
begin
  Result := FKeepIntent;
end;

procedure TSessionState.SetKeepIntent(const Value: Boolean);
begin
  FKeepIntent := Value;
end;

function TSessionState.IsSetIntent: Boolean;
begin
  Result := FIntent <> nil;
end;

function TSessionState.GetOriginatingRequestId: string;
begin
  Result := FOriginatingRequestId.ValueOrDefault;
end;

procedure TSessionState.SetOriginatingRequestId(const Value: string);
begin
  FOriginatingRequestId := Value;
end;

function TSessionState.IsSetOriginatingRequestId: Boolean;
begin
  Result := FOriginatingRequestId.HasValue;
end;

function TSessionState.GetSessionAttributes: TDictionary<string, string>;
begin
  Result := FSessionAttributes;
end;

procedure TSessionState.SetSessionAttributes(const Value: TDictionary<string, string>);
begin
  if FSessionAttributes <> Value then
  begin
    if not KeepSessionAttributes then
      FSessionAttributes.Free;
    FSessionAttributes := Value;
  end;
end;

function TSessionState.GetKeepSessionAttributes: Boolean;
begin
  Result := FKeepSessionAttributes;
end;

procedure TSessionState.SetKeepSessionAttributes(const Value: Boolean);
begin
  FKeepSessionAttributes := Value;
end;

function TSessionState.IsSetSessionAttributes: Boolean;
begin
  Result := (FSessionAttributes <> nil) and (FSessionAttributes.Count > 0);
end;

end.
