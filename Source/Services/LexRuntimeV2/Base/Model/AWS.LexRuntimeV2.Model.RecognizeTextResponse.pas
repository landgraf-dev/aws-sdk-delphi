unit AWS.LexRuntimeV2.Model.RecognizeTextResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.LexRuntimeV2.Model.Interpretation, 
  AWS.LexRuntimeV2.Model.Message, 
  AWS.LexRuntimeV2.Model.SessionState;

type
  TRecognizeTextResponse = class;
  
  IRecognizeTextResponse = interface(IAmazonWebServiceResponse)
    function GetInterpretations: TObjectList<TInterpretation>;
    procedure SetInterpretations(const Value: TObjectList<TInterpretation>);
    function GetKeepInterpretations: Boolean;
    procedure SetKeepInterpretations(const Value: Boolean);
    function GetMessages: TObjectList<TMessage>;
    procedure SetMessages(const Value: TObjectList<TMessage>);
    function GetKeepMessages: Boolean;
    procedure SetKeepMessages(const Value: Boolean);
    function GetRequestAttributes: TDictionary<string, string>;
    procedure SetRequestAttributes(const Value: TDictionary<string, string>);
    function GetKeepRequestAttributes: Boolean;
    procedure SetKeepRequestAttributes(const Value: Boolean);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSessionState: TSessionState;
    procedure SetSessionState(const Value: TSessionState);
    function GetKeepSessionState: Boolean;
    procedure SetKeepSessionState(const Value: Boolean);
    function Obj: TRecognizeTextResponse;
    function IsSetInterpretations: Boolean;
    function IsSetMessages: Boolean;
    function IsSetRequestAttributes: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSessionState: Boolean;
    property Interpretations: TObjectList<TInterpretation> read GetInterpretations write SetInterpretations;
    property KeepInterpretations: Boolean read GetKeepInterpretations write SetKeepInterpretations;
    property Messages: TObjectList<TMessage> read GetMessages write SetMessages;
    property KeepMessages: Boolean read GetKeepMessages write SetKeepMessages;
    property RequestAttributes: TDictionary<string, string> read GetRequestAttributes write SetRequestAttributes;
    property KeepRequestAttributes: Boolean read GetKeepRequestAttributes write SetKeepRequestAttributes;
    property SessionId: string read GetSessionId write SetSessionId;
    property SessionState: TSessionState read GetSessionState write SetSessionState;
    property KeepSessionState: Boolean read GetKeepSessionState write SetKeepSessionState;
  end;
  
  TRecognizeTextResponse = class(TAmazonWebServiceResponse, IRecognizeTextResponse)
  strict private
    FInterpretations: TObjectList<TInterpretation>;
    FKeepInterpretations: Boolean;
    FMessages: TObjectList<TMessage>;
    FKeepMessages: Boolean;
    FRequestAttributes: TDictionary<string, string>;
    FKeepRequestAttributes: Boolean;
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
    function GetRequestAttributes: TDictionary<string, string>;
    procedure SetRequestAttributes(const Value: TDictionary<string, string>);
    function GetKeepRequestAttributes: Boolean;
    procedure SetKeepRequestAttributes(const Value: Boolean);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSessionState: TSessionState;
    procedure SetSessionState(const Value: TSessionState);
    function GetKeepSessionState: Boolean;
    procedure SetKeepSessionState(const Value: Boolean);
  strict protected
    function Obj: TRecognizeTextResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetInterpretations: Boolean;
    function IsSetMessages: Boolean;
    function IsSetRequestAttributes: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSessionState: Boolean;
    property Interpretations: TObjectList<TInterpretation> read GetInterpretations write SetInterpretations;
    property KeepInterpretations: Boolean read GetKeepInterpretations write SetKeepInterpretations;
    property Messages: TObjectList<TMessage> read GetMessages write SetMessages;
    property KeepMessages: Boolean read GetKeepMessages write SetKeepMessages;
    property RequestAttributes: TDictionary<string, string> read GetRequestAttributes write SetRequestAttributes;
    property KeepRequestAttributes: Boolean read GetKeepRequestAttributes write SetKeepRequestAttributes;
    property SessionId: string read GetSessionId write SetSessionId;
    property SessionState: TSessionState read GetSessionState write SetSessionState;
    property KeepSessionState: Boolean read GetKeepSessionState write SetKeepSessionState;
  end;
  
implementation

{ TRecognizeTextResponse }

constructor TRecognizeTextResponse.Create;
begin
  inherited;
  FInterpretations := TObjectList<TInterpretation>.Create;
  FMessages := TObjectList<TMessage>.Create;
  FRequestAttributes := TDictionary<string, string>.Create;
end;

destructor TRecognizeTextResponse.Destroy;
begin
  SessionState := nil;
  RequestAttributes := nil;
  Messages := nil;
  Interpretations := nil;
  inherited;
end;

function TRecognizeTextResponse.Obj: TRecognizeTextResponse;
begin
  Result := Self;
end;

function TRecognizeTextResponse.GetInterpretations: TObjectList<TInterpretation>;
begin
  Result := FInterpretations;
end;

procedure TRecognizeTextResponse.SetInterpretations(const Value: TObjectList<TInterpretation>);
begin
  if FInterpretations <> Value then
  begin
    if not KeepInterpretations then
      FInterpretations.Free;
    FInterpretations := Value;
  end;
end;

function TRecognizeTextResponse.GetKeepInterpretations: Boolean;
begin
  Result := FKeepInterpretations;
end;

procedure TRecognizeTextResponse.SetKeepInterpretations(const Value: Boolean);
begin
  FKeepInterpretations := Value;
end;

function TRecognizeTextResponse.IsSetInterpretations: Boolean;
begin
  Result := (FInterpretations <> nil) and (FInterpretations.Count > 0);
end;

function TRecognizeTextResponse.GetMessages: TObjectList<TMessage>;
begin
  Result := FMessages;
end;

procedure TRecognizeTextResponse.SetMessages(const Value: TObjectList<TMessage>);
begin
  if FMessages <> Value then
  begin
    if not KeepMessages then
      FMessages.Free;
    FMessages := Value;
  end;
end;

function TRecognizeTextResponse.GetKeepMessages: Boolean;
begin
  Result := FKeepMessages;
end;

procedure TRecognizeTextResponse.SetKeepMessages(const Value: Boolean);
begin
  FKeepMessages := Value;
end;

function TRecognizeTextResponse.IsSetMessages: Boolean;
begin
  Result := (FMessages <> nil) and (FMessages.Count > 0);
end;

function TRecognizeTextResponse.GetRequestAttributes: TDictionary<string, string>;
begin
  Result := FRequestAttributes;
end;

procedure TRecognizeTextResponse.SetRequestAttributes(const Value: TDictionary<string, string>);
begin
  if FRequestAttributes <> Value then
  begin
    if not KeepRequestAttributes then
      FRequestAttributes.Free;
    FRequestAttributes := Value;
  end;
end;

function TRecognizeTextResponse.GetKeepRequestAttributes: Boolean;
begin
  Result := FKeepRequestAttributes;
end;

procedure TRecognizeTextResponse.SetKeepRequestAttributes(const Value: Boolean);
begin
  FKeepRequestAttributes := Value;
end;

function TRecognizeTextResponse.IsSetRequestAttributes: Boolean;
begin
  Result := (FRequestAttributes <> nil) and (FRequestAttributes.Count > 0);
end;

function TRecognizeTextResponse.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TRecognizeTextResponse.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TRecognizeTextResponse.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

function TRecognizeTextResponse.GetSessionState: TSessionState;
begin
  Result := FSessionState;
end;

procedure TRecognizeTextResponse.SetSessionState(const Value: TSessionState);
begin
  if FSessionState <> Value then
  begin
    if not KeepSessionState then
      FSessionState.Free;
    FSessionState := Value;
  end;
end;

function TRecognizeTextResponse.GetKeepSessionState: Boolean;
begin
  Result := FKeepSessionState;
end;

procedure TRecognizeTextResponse.SetKeepSessionState(const Value: Boolean);
begin
  FKeepSessionState := Value;
end;

function TRecognizeTextResponse.IsSetSessionState: Boolean;
begin
  Result := FSessionState <> nil;
end;

end.
