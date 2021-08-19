unit AWS.Polly.Model.SynthesizeSpeechResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  System.Classes;

type
  TSynthesizeSpeechResponse = class;
  
  ISynthesizeSpeechResponse = interface(IAmazonWebServiceResponse)
    function GetAudioStream: TStream;
    procedure SetAudioStream(const Value: TStream);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetRequestCharacters: Integer;
    procedure SetRequestCharacters(const Value: Integer);
    function Obj: TSynthesizeSpeechResponse;
    function IsSetAudioStream: Boolean;
    function IsSetContentType: Boolean;
    function IsSetRequestCharacters: Boolean;
    property AudioStream: TStream read GetAudioStream write SetAudioStream;
    property ContentType: string read GetContentType write SetContentType;
    property RequestCharacters: Integer read GetRequestCharacters write SetRequestCharacters;
  end;
  
  TSynthesizeSpeechResponse = class(TAmazonWebServiceResponse, ISynthesizeSpeechResponse)
  strict private
    FAudioStream: TStream;
    FContentType: Nullable<string>;
    FRequestCharacters: Nullable<Integer>;
    function GetAudioStream: TStream;
    procedure SetAudioStream(const Value: TStream);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetRequestCharacters: Integer;
    procedure SetRequestCharacters(const Value: Integer);
  strict protected
    function Obj: TSynthesizeSpeechResponse;
  public
    destructor Destroy; override;
    function IsSetAudioStream: Boolean;
    function IsSetContentType: Boolean;
    function IsSetRequestCharacters: Boolean;
    property AudioStream: TStream read GetAudioStream write SetAudioStream;
    property ContentType: string read GetContentType write SetContentType;
    property RequestCharacters: Integer read GetRequestCharacters write SetRequestCharacters;
  end;
  
implementation

{ TSynthesizeSpeechResponse }

destructor TSynthesizeSpeechResponse.Destroy;
begin
  FAudioStream.Free;
  inherited;
end;

function TSynthesizeSpeechResponse.Obj: TSynthesizeSpeechResponse;
begin
  Result := Self;
end;

function TSynthesizeSpeechResponse.GetAudioStream: TStream;
begin
  Result := FAudioStream;
end;

procedure TSynthesizeSpeechResponse.SetAudioStream(const Value: TStream);
begin
  if FAudioStream <> Value then
  begin
    FAudioStream.Free;
    FAudioStream := Value;
  end;
end;

function TSynthesizeSpeechResponse.IsSetAudioStream: Boolean;
begin
  Result := FAudioStream <> nil;
end;

function TSynthesizeSpeechResponse.GetContentType: string;
begin
  Result := FContentType.ValueOrDefault;
end;

procedure TSynthesizeSpeechResponse.SetContentType(const Value: string);
begin
  FContentType := Value;
end;

function TSynthesizeSpeechResponse.IsSetContentType: Boolean;
begin
  Result := FContentType.HasValue;
end;

function TSynthesizeSpeechResponse.GetRequestCharacters: Integer;
begin
  Result := FRequestCharacters.ValueOrDefault;
end;

procedure TSynthesizeSpeechResponse.SetRequestCharacters(const Value: Integer);
begin
  FRequestCharacters := Value;
end;

function TSynthesizeSpeechResponse.IsSetRequestCharacters: Boolean;
begin
  Result := FRequestCharacters.HasValue;
end;

end.
