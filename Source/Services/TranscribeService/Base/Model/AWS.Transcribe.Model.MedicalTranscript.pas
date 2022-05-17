unit AWS.Transcribe.Model.MedicalTranscript;

interface

uses
  Bcl.Types.Nullable;

type
  TMedicalTranscript = class;
  
  IMedicalTranscript = interface
    function GetTranscriptFileUri: string;
    procedure SetTranscriptFileUri(const Value: string);
    function Obj: TMedicalTranscript;
    function IsSetTranscriptFileUri: Boolean;
    property TranscriptFileUri: string read GetTranscriptFileUri write SetTranscriptFileUri;
  end;
  
  TMedicalTranscript = class
  strict private
    FTranscriptFileUri: Nullable<string>;
    function GetTranscriptFileUri: string;
    procedure SetTranscriptFileUri(const Value: string);
  strict protected
    function Obj: TMedicalTranscript;
  public
    function IsSetTranscriptFileUri: Boolean;
    property TranscriptFileUri: string read GetTranscriptFileUri write SetTranscriptFileUri;
  end;
  
implementation

{ TMedicalTranscript }

function TMedicalTranscript.Obj: TMedicalTranscript;
begin
  Result := Self;
end;

function TMedicalTranscript.GetTranscriptFileUri: string;
begin
  Result := FTranscriptFileUri.ValueOrDefault;
end;

procedure TMedicalTranscript.SetTranscriptFileUri(const Value: string);
begin
  FTranscriptFileUri := Value;
end;

function TMedicalTranscript.IsSetTranscriptFileUri: Boolean;
begin
  Result := FTranscriptFileUri.HasValue;
end;

end.
