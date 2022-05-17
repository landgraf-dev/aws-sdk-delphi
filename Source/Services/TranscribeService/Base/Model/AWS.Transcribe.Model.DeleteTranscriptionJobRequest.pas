unit AWS.Transcribe.Model.DeleteTranscriptionJobRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.Request;

type
  TDeleteTranscriptionJobRequest = class;
  
  IDeleteTranscriptionJobRequest = interface
    function GetTranscriptionJobName: string;
    procedure SetTranscriptionJobName(const Value: string);
    function Obj: TDeleteTranscriptionJobRequest;
    function IsSetTranscriptionJobName: Boolean;
    property TranscriptionJobName: string read GetTranscriptionJobName write SetTranscriptionJobName;
  end;
  
  TDeleteTranscriptionJobRequest = class(TAmazonTranscribeServiceRequest, IDeleteTranscriptionJobRequest)
  strict private
    FTranscriptionJobName: Nullable<string>;
    function GetTranscriptionJobName: string;
    procedure SetTranscriptionJobName(const Value: string);
  strict protected
    function Obj: TDeleteTranscriptionJobRequest;
  public
    function IsSetTranscriptionJobName: Boolean;
    property TranscriptionJobName: string read GetTranscriptionJobName write SetTranscriptionJobName;
  end;
  
implementation

{ TDeleteTranscriptionJobRequest }

function TDeleteTranscriptionJobRequest.Obj: TDeleteTranscriptionJobRequest;
begin
  Result := Self;
end;

function TDeleteTranscriptionJobRequest.GetTranscriptionJobName: string;
begin
  Result := FTranscriptionJobName.ValueOrDefault;
end;

procedure TDeleteTranscriptionJobRequest.SetTranscriptionJobName(const Value: string);
begin
  FTranscriptionJobName := Value;
end;

function TDeleteTranscriptionJobRequest.IsSetTranscriptionJobName: Boolean;
begin
  Result := FTranscriptionJobName.HasValue;
end;

end.
