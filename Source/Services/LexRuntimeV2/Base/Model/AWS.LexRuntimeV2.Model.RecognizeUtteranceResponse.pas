unit AWS.LexRuntimeV2.Model.RecognizeUtteranceResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  System.Classes;

type
  TRecognizeUtteranceResponse = class;
  
  IRecognizeUtteranceResponse = interface(IAmazonWebServiceResponse)
    function GetAudioStream: TStream;
    procedure SetAudioStream(const Value: TStream);
    function GetKeepAudioStream: Boolean;
    procedure SetKeepAudioStream(const Value: Boolean);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetInputMode: string;
    procedure SetInputMode(const Value: string);
    function GetInputTranscript: string;
    procedure SetInputTranscript(const Value: string);
    function GetInterpretations: string;
    procedure SetInterpretations(const Value: string);
    function GetMessages: string;
    procedure SetMessages(const Value: string);
    function GetRequestAttributes: string;
    procedure SetRequestAttributes(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSessionState: string;
    procedure SetSessionState(const Value: string);
    function Obj: TRecognizeUtteranceResponse;
    function IsSetAudioStream: Boolean;
    function IsSetContentType: Boolean;
    function IsSetInputMode: Boolean;
    function IsSetInputTranscript: Boolean;
    function IsSetInterpretations: Boolean;
    function IsSetMessages: Boolean;
    function IsSetRequestAttributes: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSessionState: Boolean;
    property AudioStream: TStream read GetAudioStream write SetAudioStream;
    property KeepAudioStream: Boolean read GetKeepAudioStream write SetKeepAudioStream;
    property ContentType: string read GetContentType write SetContentType;
    property InputMode: string read GetInputMode write SetInputMode;
    property InputTranscript: string read GetInputTranscript write SetInputTranscript;
    property Interpretations: string read GetInterpretations write SetInterpretations;
    property Messages: string read GetMessages write SetMessages;
    property RequestAttributes: string read GetRequestAttributes write SetRequestAttributes;
    property SessionId: string read GetSessionId write SetSessionId;
    property SessionState: string read GetSessionState write SetSessionState;
  end;
  
  TRecognizeUtteranceResponse = class(TAmazonWebServiceResponse, IRecognizeUtteranceResponse)
  strict private
    FAudioStream: TStream;
    FKeepAudioStream: Boolean;
    FContentType: Nullable<string>;
    FInputMode: Nullable<string>;
    FInputTranscript: Nullable<string>;
    FInterpretations: Nullable<string>;
    FMessages: Nullable<string>;
    FRequestAttributes: Nullable<string>;
    FSessionId: Nullable<string>;
    FSessionState: Nullable<string>;
    function GetAudioStream: TStream;
    procedure SetAudioStream(const Value: TStream);
    function GetKeepAudioStream: Boolean;
    procedure SetKeepAudioStream(const Value: Boolean);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetInputMode: string;
    procedure SetInputMode(const Value: string);
    function GetInputTranscript: string;
    procedure SetInputTranscript(const Value: string);
    function GetInterpretations: string;
    procedure SetInterpretations(const Value: string);
    function GetMessages: string;
    procedure SetMessages(const Value: string);
    function GetRequestAttributes: string;
    procedure SetRequestAttributes(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSessionState: string;
    procedure SetSessionState(const Value: string);
  strict protected
    function Obj: TRecognizeUtteranceResponse;
  public
    destructor Destroy; override;
    function IsSetAudioStream: Boolean;
    function IsSetContentType: Boolean;
    function IsSetInputMode: Boolean;
    function IsSetInputTranscript: Boolean;
    function IsSetInterpretations: Boolean;
    function IsSetMessages: Boolean;
    function IsSetRequestAttributes: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSessionState: Boolean;
    property AudioStream: TStream read GetAudioStream write SetAudioStream;
    property KeepAudioStream: Boolean read GetKeepAudioStream write SetKeepAudioStream;
    property ContentType: string read GetContentType write SetContentType;
    property InputMode: string read GetInputMode write SetInputMode;
    property InputTranscript: string read GetInputTranscript write SetInputTranscript;
    property Interpretations: string read GetInterpretations write SetInterpretations;
    property Messages: string read GetMessages write SetMessages;
    property RequestAttributes: string read GetRequestAttributes write SetRequestAttributes;
    property SessionId: string read GetSessionId write SetSessionId;
    property SessionState: string read GetSessionState write SetSessionState;
  end;
  
implementation

{ TRecognizeUtteranceResponse }

destructor TRecognizeUtteranceResponse.Destroy;
begin
  AudioStream := nil;
  inherited;
end;

function TRecognizeUtteranceResponse.Obj: TRecognizeUtteranceResponse;
begin
  Result := Self;
end;

function TRecognizeUtteranceResponse.GetAudioStream: TStream;
begin
  Result := FAudioStream;
end;

procedure TRecognizeUtteranceResponse.SetAudioStream(const Value: TStream);
begin
  if FAudioStream <> Value then
  begin
    if not KeepAudioStream then
      FAudioStream.Free;
    FAudioStream := Value;
  end;
end;

function TRecognizeUtteranceResponse.GetKeepAudioStream: Boolean;
begin
  Result := FKeepAudioStream;
end;

procedure TRecognizeUtteranceResponse.SetKeepAudioStream(const Value: Boolean);
begin
  FKeepAudioStream := Value;
end;

function TRecognizeUtteranceResponse.IsSetAudioStream: Boolean;
begin
  Result := FAudioStream <> nil;
end;

function TRecognizeUtteranceResponse.GetContentType: string;
begin
  Result := FContentType.ValueOrDefault;
end;

procedure TRecognizeUtteranceResponse.SetContentType(const Value: string);
begin
  FContentType := Value;
end;

function TRecognizeUtteranceResponse.IsSetContentType: Boolean;
begin
  Result := FContentType.HasValue;
end;

function TRecognizeUtteranceResponse.GetInputMode: string;
begin
  Result := FInputMode.ValueOrDefault;
end;

procedure TRecognizeUtteranceResponse.SetInputMode(const Value: string);
begin
  FInputMode := Value;
end;

function TRecognizeUtteranceResponse.IsSetInputMode: Boolean;
begin
  Result := FInputMode.HasValue;
end;

function TRecognizeUtteranceResponse.GetInputTranscript: string;
begin
  Result := FInputTranscript.ValueOrDefault;
end;

procedure TRecognizeUtteranceResponse.SetInputTranscript(const Value: string);
begin
  FInputTranscript := Value;
end;

function TRecognizeUtteranceResponse.IsSetInputTranscript: Boolean;
begin
  Result := FInputTranscript.HasValue;
end;

function TRecognizeUtteranceResponse.GetInterpretations: string;
begin
  Result := FInterpretations.ValueOrDefault;
end;

procedure TRecognizeUtteranceResponse.SetInterpretations(const Value: string);
begin
  FInterpretations := Value;
end;

function TRecognizeUtteranceResponse.IsSetInterpretations: Boolean;
begin
  Result := FInterpretations.HasValue;
end;

function TRecognizeUtteranceResponse.GetMessages: string;
begin
  Result := FMessages.ValueOrDefault;
end;

procedure TRecognizeUtteranceResponse.SetMessages(const Value: string);
begin
  FMessages := Value;
end;

function TRecognizeUtteranceResponse.IsSetMessages: Boolean;
begin
  Result := FMessages.HasValue;
end;

function TRecognizeUtteranceResponse.GetRequestAttributes: string;
begin
  Result := FRequestAttributes.ValueOrDefault;
end;

procedure TRecognizeUtteranceResponse.SetRequestAttributes(const Value: string);
begin
  FRequestAttributes := Value;
end;

function TRecognizeUtteranceResponse.IsSetRequestAttributes: Boolean;
begin
  Result := FRequestAttributes.HasValue;
end;

function TRecognizeUtteranceResponse.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TRecognizeUtteranceResponse.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TRecognizeUtteranceResponse.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

function TRecognizeUtteranceResponse.GetSessionState: string;
begin
  Result := FSessionState.ValueOrDefault;
end;

procedure TRecognizeUtteranceResponse.SetSessionState(const Value: string);
begin
  FSessionState := Value;
end;

function TRecognizeUtteranceResponse.IsSetSessionState: Boolean;
begin
  Result := FSessionState.HasValue;
end;

end.
