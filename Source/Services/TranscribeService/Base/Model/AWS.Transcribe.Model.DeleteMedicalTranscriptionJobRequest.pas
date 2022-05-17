unit AWS.Transcribe.Model.DeleteMedicalTranscriptionJobRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.Request;

type
  TDeleteMedicalTranscriptionJobRequest = class;
  
  IDeleteMedicalTranscriptionJobRequest = interface
    function GetMedicalTranscriptionJobName: string;
    procedure SetMedicalTranscriptionJobName(const Value: string);
    function Obj: TDeleteMedicalTranscriptionJobRequest;
    function IsSetMedicalTranscriptionJobName: Boolean;
    property MedicalTranscriptionJobName: string read GetMedicalTranscriptionJobName write SetMedicalTranscriptionJobName;
  end;
  
  TDeleteMedicalTranscriptionJobRequest = class(TAmazonTranscribeServiceRequest, IDeleteMedicalTranscriptionJobRequest)
  strict private
    FMedicalTranscriptionJobName: Nullable<string>;
    function GetMedicalTranscriptionJobName: string;
    procedure SetMedicalTranscriptionJobName(const Value: string);
  strict protected
    function Obj: TDeleteMedicalTranscriptionJobRequest;
  public
    function IsSetMedicalTranscriptionJobName: Boolean;
    property MedicalTranscriptionJobName: string read GetMedicalTranscriptionJobName write SetMedicalTranscriptionJobName;
  end;
  
implementation

{ TDeleteMedicalTranscriptionJobRequest }

function TDeleteMedicalTranscriptionJobRequest.Obj: TDeleteMedicalTranscriptionJobRequest;
begin
  Result := Self;
end;

function TDeleteMedicalTranscriptionJobRequest.GetMedicalTranscriptionJobName: string;
begin
  Result := FMedicalTranscriptionJobName.ValueOrDefault;
end;

procedure TDeleteMedicalTranscriptionJobRequest.SetMedicalTranscriptionJobName(const Value: string);
begin
  FMedicalTranscriptionJobName := Value;
end;

function TDeleteMedicalTranscriptionJobRequest.IsSetMedicalTranscriptionJobName: Boolean;
begin
  Result := FMedicalTranscriptionJobName.HasValue;
end;

end.
