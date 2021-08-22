unit AWS.LexRuntimeV2.Model.GetSessionResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.LexRuntimeV2.Model.Interpretation, 
  AWS.LexRuntimeV2.Model.Message, 
  AWS.LexRuntimeV2.Model.SessionState;

type
  TGetSessionResponse = class;
  
  IGetSessionResponse = interface(IAmazonWebServiceResponse)
    function GetInterpretations: TObjectList<TInterpretation>;
    procedure SetInterpretations(const Value: TObjectList<TInterpretation>);
    function GetKeepInterpretations: Boolean;
    procedure SetKeepInterpretations(const Value: Boolean);
    function GetMessages: TObjectList<TMessage>;
    procedure SetMessages(const Value: TObjectList<TMessage>);
    function GetKeepMessages: Boolean;
    procedure SetKeepMessages(const Value: Boolean);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSessionState: TSessionState;
    procedure SetSessionState(const Value: TSessionState);
    function GetKeepSessionState: Boolean;
    procedure SetKeepSessionState(const Value: Boolean);
    function Obj: TGetSessionResponse;
    function IsSetInterpretations: Boolean;
    function IsSetMessages: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSessionState: Boolean;
    property Interpretations: TObjectList<TInterpretation> read GetInterpretations write SetInterpretations;
    property KeepInterpretations: Boolean read GetKeepInterpretations write SetKeepInterpretations;
    property Messages: TObjectList<TMessage> read GetMessages write SetMessages;
    property KeepMessages: Boolean read GetKeepMessages write SetKeepMessages;
    property SessionId: string read GetSessionId write SetSessionId;
    property SessionState: TSessionState read GetSessionState write SetSessionState;
    property KeepSessionState: Boolean read GetKeepSessionState write SetKeepSessionState;
  end;
  
  TGetSessionResponse = class(TAmazonWebServiceResponse, IGetSessionResponse)
  strict private
    FInterpretations: TObjectList<TInterpretation>;
    FKeepInterpretations: Boolean;
    FMessages: TObjectList<TMessage>;
    FKeepMessages: Boolean;
    FSessionId: Nullable<string>;
    FSessionState: TSessionState;
    FKeepSessionState: Boolean;
    function GetInterpretations: TObjectList<TInterpretation>;
    procedure SetInterpretations(const Value: TObjectList<TInterpretation>);
    function GetKeepInterpretations: Boolean;
    procedure SetKeepInterpretations(const Value: Boolean);
    function GetMessages: TObjectList<TMessage>;
    procedure SetMessages(const Value: TObjectList<TMessage>);
    function GetKeepMessages: Boolean;
    procedure SetKeepMessages(const Value: Boolean);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSessionState: TSessionState;
    procedure SetSessionState(const Value: TSessionState);
    function GetKeepSessionState: Boolean;
    procedure SetKeepSessionState(const Value: Boolean);
  strict protected
    function Obj: TGetSessionResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetInterpretations: Boolean;
    function IsSetMessages: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSessionState: Boolean;
    property Interpretations: TObjectList<TInterpretation> read GetInterpretations write SetInterpretations;
    property KeepInterpretations: Boolean read GetKeepInterpretations write SetKeepInterpretations;
    property Messages: TObjectList<TMessage> read GetMessages write SetMessages;
    property KeepMessages: Boolean read GetKeepMessages write SetKeepMessages;
    property SessionId: string read GetSessionId write SetSessionId;
    property SessionState: TSessionState read GetSessionState write SetSessionState;
    property KeepSessionState: Boolean read GetKeepSessionState write SetKeepSessionState;
  end;
  
implementation

{ TGetSessionResponse }

constructor TGetSessionResponse.Create;
begin
  inherited;
  FInterpretations := TObjectList<TInterpretation>.Create;
  FMessages := TObjectList<TMessage>.Create;
end;

destructor TGetSessionResponse.Destroy;
begin
  SessionState := nil;
  Messages := nil;
  Interpretations := nil;
  inherited;
end;

function TGetSessionResponse.Obj: TGetSessionResponse;
begin
  Result := Self;
end;

function TGetSessionResponse.GetInterpretations: TObjectList<TInterpretation>;
begin
  Result := FInterpretations;
end;

procedure TGetSessionResponse.SetInterpretations(const Value: TObjectList<TInterpretation>);
begin
  if FInterpretations <> Value then
  begin
    if not KeepInterpretations then
      FInterpretations.Free;
    FInterpretations := Value;
  end;
end;

function TGetSessionResponse.GetKeepInterpretations: Boolean;
begin
  Result := FKeepInterpretations;
end;

procedure TGetSessionResponse.SetKeepInterpretations(const Value: Boolean);
begin
  FKeepInterpretations := Value;
end;

function TGetSessionResponse.IsSetInterpretations: Boolean;
begin
  Result := (FInterpretations <> nil) and (FInterpretations.Count > 0);
end;

function TGetSessionResponse.GetMessages: TObjectList<TMessage>;
begin
  Result := FMessages;
end;

procedure TGetSessionResponse.SetMessages(const Value: TObjectList<TMessage>);
begin
  if FMessages <> Value then
  begin
    if not KeepMessages then
      FMessages.Free;
    FMessages := Value;
  end;
end;

function TGetSessionResponse.GetKeepMessages: Boolean;
begin
  Result := FKeepMessages;
end;

procedure TGetSessionResponse.SetKeepMessages(const Value: Boolean);
begin
  FKeepMessages := Value;
end;

function TGetSessionResponse.IsSetMessages: Boolean;
begin
  Result := (FMessages <> nil) and (FMessages.Count > 0);
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

function TGetSessionResponse.GetSessionState: TSessionState;
begin
  Result := FSessionState;
end;

procedure TGetSessionResponse.SetSessionState(const Value: TSessionState);
begin
  if FSessionState <> Value then
  begin
    if not KeepSessionState then
      FSessionState.Free;
    FSessionState := Value;
  end;
end;

function TGetSessionResponse.GetKeepSessionState: Boolean;
begin
  Result := FKeepSessionState;
end;

procedure TGetSessionResponse.SetKeepSessionState(const Value: Boolean);
begin
  FKeepSessionState := Value;
end;

function TGetSessionResponse.IsSetSessionState: Boolean;
begin
  Result := FSessionState <> nil;
end;

end.
