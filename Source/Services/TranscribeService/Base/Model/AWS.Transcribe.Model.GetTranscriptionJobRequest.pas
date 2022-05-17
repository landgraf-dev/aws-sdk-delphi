unit AWS.Transcribe.Model.GetTranscriptionJobRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.Request;

type
  TGetTranscriptionJobRequest = class;
  
  IGetTranscriptionJobRequest = interface
    function GetTranscriptionJobName: string;
    procedure SetTranscriptionJobName(const Value: string);
    function Obj: TGetTranscriptionJobRequest;
    function IsSetTranscriptionJobName: Boolean;
    property TranscriptionJobName: string read GetTranscriptionJobName write SetTranscriptionJobName;
  end;
  
  TGetTranscriptionJobRequest = class(TAmazonTranscribeServiceRequest, IGetTranscriptionJobRequest)
  strict private
    FTranscriptionJobName: Nullable<string>;
    function GetTranscriptionJobName: string;
    procedure SetTranscriptionJobName(const Value: string);
  strict protected
    function Obj: TGetTranscriptionJobRequest;
  public
    function IsSetTranscriptionJobName: Boolean;
    property TranscriptionJobName: string read GetTranscriptionJobName write SetTranscriptionJobName;
  end;
  
implementation

{ TGetTranscriptionJobRequest }

function TGetTranscriptionJobRequest.Obj: TGetTranscriptionJobRequest;
begin
  Result := Self;
end;

function TGetTranscriptionJobRequest.GetTranscriptionJobName: string;
begin
  Result := FTranscriptionJobName.ValueOrDefault;
end;

procedure TGetTranscriptionJobRequest.SetTranscriptionJobName(const Value: string);
begin
  FTranscriptionJobName := Value;
end;

function TGetTranscriptionJobRequest.IsSetTranscriptionJobName: Boolean;
begin
  Result := FTranscriptionJobName.HasValue;
end;

end.
