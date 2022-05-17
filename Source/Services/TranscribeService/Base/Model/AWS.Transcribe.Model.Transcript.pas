unit AWS.Transcribe.Model.Transcript;

interface

uses
  Bcl.Types.Nullable;

type
  TTranscript = class;
  
  ITranscript = interface
    function GetRedactedTranscriptFileUri: string;
    procedure SetRedactedTranscriptFileUri(const Value: string);
    function GetTranscriptFileUri: string;
    procedure SetTranscriptFileUri(const Value: string);
    function Obj: TTranscript;
    function IsSetRedactedTranscriptFileUri: Boolean;
    function IsSetTranscriptFileUri: Boolean;
    property RedactedTranscriptFileUri: string read GetRedactedTranscriptFileUri write SetRedactedTranscriptFileUri;
    property TranscriptFileUri: string read GetTranscriptFileUri write SetTranscriptFileUri;
  end;
  
  TTranscript = class
  strict private
    FRedactedTranscriptFileUri: Nullable<string>;
    FTranscriptFileUri: Nullable<string>;
    function GetRedactedTranscriptFileUri: string;
    procedure SetRedactedTranscriptFileUri(const Value: string);
    function GetTranscriptFileUri: string;
    procedure SetTranscriptFileUri(const Value: string);
  strict protected
    function Obj: TTranscript;
  public
    function IsSetRedactedTranscriptFileUri: Boolean;
    function IsSetTranscriptFileUri: Boolean;
    property RedactedTranscriptFileUri: string read GetRedactedTranscriptFileUri write SetRedactedTranscriptFileUri;
    property TranscriptFileUri: string read GetTranscriptFileUri write SetTranscriptFileUri;
  end;
  
implementation

{ TTranscript }

function TTranscript.Obj: TTranscript;
begin
  Result := Self;
end;

function TTranscript.GetRedactedTranscriptFileUri: string;
begin
  Result := FRedactedTranscriptFileUri.ValueOrDefault;
end;

procedure TTranscript.SetRedactedTranscriptFileUri(const Value: string);
begin
  FRedactedTranscriptFileUri := Value;
end;

function TTranscript.IsSetRedactedTranscriptFileUri: Boolean;
begin
  Result := FRedactedTranscriptFileUri.HasValue;
end;

function TTranscript.GetTranscriptFileUri: string;
begin
  Result := FTranscriptFileUri.ValueOrDefault;
end;

procedure TTranscript.SetTranscriptFileUri(const Value: string);
begin
  FTranscriptFileUri := Value;
end;

function TTranscript.IsSetTranscriptFileUri: Boolean;
begin
  Result := FTranscriptFileUri.HasValue;
end;

end.
