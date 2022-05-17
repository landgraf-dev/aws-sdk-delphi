unit AWS.Transcribe.Model.GetMedicalTranscriptionJobRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.Request;

type
  TGetMedicalTranscriptionJobRequest = class;
  
  IGetMedicalTranscriptionJobRequest = interface
    function GetMedicalTranscriptionJobName: string;
    procedure SetMedicalTranscriptionJobName(const Value: string);
    function Obj: TGetMedicalTranscriptionJobRequest;
    function IsSetMedicalTranscriptionJobName: Boolean;
    property MedicalTranscriptionJobName: string read GetMedicalTranscriptionJobName write SetMedicalTranscriptionJobName;
  end;
  
  TGetMedicalTranscriptionJobRequest = class(TAmazonTranscribeServiceRequest, IGetMedicalTranscriptionJobRequest)
  strict private
    FMedicalTranscriptionJobName: Nullable<string>;
    function GetMedicalTranscriptionJobName: string;
    procedure SetMedicalTranscriptionJobName(const Value: string);
  strict protected
    function Obj: TGetMedicalTranscriptionJobRequest;
  public
    function IsSetMedicalTranscriptionJobName: Boolean;
    property MedicalTranscriptionJobName: string read GetMedicalTranscriptionJobName write SetMedicalTranscriptionJobName;
  end;
  
implementation

{ TGetMedicalTranscriptionJobRequest }

function TGetMedicalTranscriptionJobRequest.Obj: TGetMedicalTranscriptionJobRequest;
begin
  Result := Self;
end;

function TGetMedicalTranscriptionJobRequest.GetMedicalTranscriptionJobName: string;
begin
  Result := FMedicalTranscriptionJobName.ValueOrDefault;
end;

procedure TGetMedicalTranscriptionJobRequest.SetMedicalTranscriptionJobName(const Value: string);
begin
  FMedicalTranscriptionJobName := Value;
end;

function TGetMedicalTranscriptionJobRequest.IsSetMedicalTranscriptionJobName: Boolean;
begin
  Result := FMedicalTranscriptionJobName.HasValue;
end;

end.
