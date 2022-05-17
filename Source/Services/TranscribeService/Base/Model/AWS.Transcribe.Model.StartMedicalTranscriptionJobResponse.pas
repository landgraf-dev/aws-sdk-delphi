unit AWS.Transcribe.Model.StartMedicalTranscriptionJobResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.MedicalTranscriptionJob;

type
  TStartMedicalTranscriptionJobResponse = class;
  
  IStartMedicalTranscriptionJobResponse = interface(IAmazonWebServiceResponse)
    function GetMedicalTranscriptionJob: TMedicalTranscriptionJob;
    procedure SetMedicalTranscriptionJob(const Value: TMedicalTranscriptionJob);
    function GetKeepMedicalTranscriptionJob: Boolean;
    procedure SetKeepMedicalTranscriptionJob(const Value: Boolean);
    function Obj: TStartMedicalTranscriptionJobResponse;
    function IsSetMedicalTranscriptionJob: Boolean;
    property MedicalTranscriptionJob: TMedicalTranscriptionJob read GetMedicalTranscriptionJob write SetMedicalTranscriptionJob;
    property KeepMedicalTranscriptionJob: Boolean read GetKeepMedicalTranscriptionJob write SetKeepMedicalTranscriptionJob;
  end;
  
  TStartMedicalTranscriptionJobResponse = class(TAmazonWebServiceResponse, IStartMedicalTranscriptionJobResponse)
  strict private
    FMedicalTranscriptionJob: TMedicalTranscriptionJob;
    FKeepMedicalTranscriptionJob: Boolean;
    function GetMedicalTranscriptionJob: TMedicalTranscriptionJob;
    procedure SetMedicalTranscriptionJob(const Value: TMedicalTranscriptionJob);
    function GetKeepMedicalTranscriptionJob: Boolean;
    procedure SetKeepMedicalTranscriptionJob(const Value: Boolean);
  strict protected
    function Obj: TStartMedicalTranscriptionJobResponse;
  public
    destructor Destroy; override;
    function IsSetMedicalTranscriptionJob: Boolean;
    property MedicalTranscriptionJob: TMedicalTranscriptionJob read GetMedicalTranscriptionJob write SetMedicalTranscriptionJob;
    property KeepMedicalTranscriptionJob: Boolean read GetKeepMedicalTranscriptionJob write SetKeepMedicalTranscriptionJob;
  end;
  
implementation

{ TStartMedicalTranscriptionJobResponse }

destructor TStartMedicalTranscriptionJobResponse.Destroy;
begin
  MedicalTranscriptionJob := nil;
  inherited;
end;

function TStartMedicalTranscriptionJobResponse.Obj: TStartMedicalTranscriptionJobResponse;
begin
  Result := Self;
end;

function TStartMedicalTranscriptionJobResponse.GetMedicalTranscriptionJob: TMedicalTranscriptionJob;
begin
  Result := FMedicalTranscriptionJob;
end;

procedure TStartMedicalTranscriptionJobResponse.SetMedicalTranscriptionJob(const Value: TMedicalTranscriptionJob);
begin
  if FMedicalTranscriptionJob <> Value then
  begin
    if not KeepMedicalTranscriptionJob then
      FMedicalTranscriptionJob.Free;
    FMedicalTranscriptionJob := Value;
  end;
end;

function TStartMedicalTranscriptionJobResponse.GetKeepMedicalTranscriptionJob: Boolean;
begin
  Result := FKeepMedicalTranscriptionJob;
end;

procedure TStartMedicalTranscriptionJobResponse.SetKeepMedicalTranscriptionJob(const Value: Boolean);
begin
  FKeepMedicalTranscriptionJob := Value;
end;

function TStartMedicalTranscriptionJobResponse.IsSetMedicalTranscriptionJob: Boolean;
begin
  Result := FMedicalTranscriptionJob <> nil;
end;

end.
