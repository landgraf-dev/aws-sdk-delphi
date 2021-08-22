unit AWS.LexRuntimeV2.Model.PutSessionResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  System.Classes;

type
  TPutSessionResponse = class;
  
  IPutSessionResponse = interface(IAmazonWebServiceResponse)
    function GetAudioStream: TStream;
    procedure SetAudioStream(const Value: TStream);
    function GetKeepAudioStream: Boolean;
    procedure SetKeepAudioStream(const Value: Boolean);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetMessages: string;
    procedure SetMessages(const Value: string);
    function GetRequestAttributes: string;
    procedure SetRequestAttributes(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSessionState: string;
    procedure SetSessionState(const Value: string);
    function Obj: TPutSessionResponse;
    function IsSetAudioStream: Boolean;
    function IsSetContentType: Boolean;
    function IsSetMessages: Boolean;
    function IsSetRequestAttributes: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSessionState: Boolean;
    property AudioStream: TStream read GetAudioStream write SetAudioStream;
    property KeepAudioStream: Boolean read GetKeepAudioStream write SetKeepAudioStream;
    property ContentType: string read GetContentType write SetContentType;
    property Messages: string read GetMessages write SetMessages;
    property RequestAttributes: string read GetRequestAttributes write SetRequestAttributes;
    property SessionId: string read GetSessionId write SetSessionId;
    property SessionState: string read GetSessionState write SetSessionState;
  end;
  
  TPutSessionResponse = class(TAmazonWebServiceResponse, IPutSessionResponse)
  strict private
    FAudioStream: TStream;
    FKeepAudioStream: Boolean;
    FContentType: Nullable<string>;
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
    function GetMessages: string;
    procedure SetMessages(const Value: string);
    function GetRequestAttributes: string;
    procedure SetRequestAttributes(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetSessionState: string;
    procedure SetSessionState(const Value: string);
  strict protected
    function Obj: TPutSessionResponse;
  public
    destructor Destroy; override;
    function IsSetAudioStream: Boolean;
    function IsSetContentType: Boolean;
    function IsSetMessages: Boolean;
    function IsSetRequestAttributes: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetSessionState: Boolean;
    property AudioStream: TStream read GetAudioStream write SetAudioStream;
    property KeepAudioStream: Boolean read GetKeepAudioStream write SetKeepAudioStream;
    property ContentType: string read GetContentType write SetContentType;
    property Messages: string read GetMessages write SetMessages;
    property RequestAttributes: string read GetRequestAttributes write SetRequestAttributes;
    property SessionId: string read GetSessionId write SetSessionId;
    property SessionState: string read GetSessionState write SetSessionState;
  end;
  
implementation

{ TPutSessionResponse }

destructor TPutSessionResponse.Destroy;
begin
  AudioStream := nil;
  inherited;
end;

function TPutSessionResponse.Obj: TPutSessionResponse;
begin
  Result := Self;
end;

function TPutSessionResponse.GetAudioStream: TStream;
begin
  Result := FAudioStream;
end;

procedure TPutSessionResponse.SetAudioStream(const Value: TStream);
begin
  if FAudioStream <> Value then
  begin
    if not KeepAudioStream then
      FAudioStream.Free;
    FAudioStream := Value;
  end;
end;

function TPutSessionResponse.GetKeepAudioStream: Boolean;
begin
  Result := FKeepAudioStream;
end;

procedure TPutSessionResponse.SetKeepAudioStream(const Value: Boolean);
begin
  FKeepAudioStream := Value;
end;

function TPutSessionResponse.IsSetAudioStream: Boolean;
begin
  Result := FAudioStream <> nil;
end;

function TPutSessionResponse.GetContentType: string;
begin
  Result := FContentType.ValueOrDefault;
end;

procedure TPutSessionResponse.SetContentType(const Value: string);
begin
  FContentType := Value;
end;

function TPutSessionResponse.IsSetContentType: Boolean;
begin
  Result := FContentType.HasValue;
end;

function TPutSessionResponse.GetMessages: string;
begin
  Result := FMessages.ValueOrDefault;
end;

procedure TPutSessionResponse.SetMessages(const Value: string);
begin
  FMessages := Value;
end;

function TPutSessionResponse.IsSetMessages: Boolean;
begin
  Result := FMessages.HasValue;
end;

function TPutSessionResponse.GetRequestAttributes: string;
begin
  Result := FRequestAttributes.ValueOrDefault;
end;

procedure TPutSessionResponse.SetRequestAttributes(const Value: string);
begin
  FRequestAttributes := Value;
end;

function TPutSessionResponse.IsSetRequestAttributes: Boolean;
begin
  Result := FRequestAttributes.HasValue;
end;

function TPutSessionResponse.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TPutSessionResponse.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TPutSessionResponse.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

function TPutSessionResponse.GetSessionState: string;
begin
  Result := FSessionState.ValueOrDefault;
end;

procedure TPutSessionResponse.SetSessionState(const Value: string);
begin
  FSessionState := Value;
end;

function TPutSessionResponse.IsSetSessionState: Boolean;
begin
  Result := FSessionState.HasValue;
end;

end.
