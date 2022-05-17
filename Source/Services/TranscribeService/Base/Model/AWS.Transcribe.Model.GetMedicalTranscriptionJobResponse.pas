unit AWS.Transcribe.Model.GetMedicalTranscriptionJobResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.MedicalTranscriptionJob;

type
  TGetMedicalTranscriptionJobResponse = class;
  
  IGetMedicalTranscriptionJobResponse = interface(IAmazonWebServiceResponse)
    function GetMedicalTranscriptionJob: TMedicalTranscriptionJob;
    procedure SetMedicalTranscriptionJob(const Value: TMedicalTranscriptionJob);
    function GetKeepMedicalTranscriptionJob: Boolean;
    procedure SetKeepMedicalTranscriptionJob(const Value: Boolean);
    function Obj: TGetMedicalTranscriptionJobResponse;
    function IsSetMedicalTranscriptionJob: Boolean;
    property MedicalTranscriptionJob: TMedicalTranscriptionJob read GetMedicalTranscriptionJob write SetMedicalTranscriptionJob;
    property KeepMedicalTranscriptionJob: Boolean read GetKeepMedicalTranscriptionJob write SetKeepMedicalTranscriptionJob;
  end;
  
  TGetMedicalTranscriptionJobResponse = class(TAmazonWebServiceResponse, IGetMedicalTranscriptionJobResponse)
  strict private
    FMedicalTranscriptionJob: TMedicalTranscriptionJob;
    FKeepMedicalTranscriptionJob: Boolean;
    function GetMedicalTranscriptionJob: TMedicalTranscriptionJob;
    procedure SetMedicalTranscriptionJob(const Value: TMedicalTranscriptionJob);
    function GetKeepMedicalTranscriptionJob: Boolean;
    procedure SetKeepMedicalTranscriptionJob(const Value: Boolean);
  strict protected
    function Obj: TGetMedicalTranscriptionJobResponse;
  public
    destructor Destroy; override;
    function IsSetMedicalTranscriptionJob: Boolean;
    property MedicalTranscriptionJob: TMedicalTranscriptionJob read GetMedicalTranscriptionJob write SetMedicalTranscriptionJob;
    property KeepMedicalTranscriptionJob: Boolean read GetKeepMedicalTranscriptionJob write SetKeepMedicalTranscriptionJob;
  end;
  
implementation

{ TGetMedicalTranscriptionJobResponse }

destructor TGetMedicalTranscriptionJobResponse.Destroy;
begin
  MedicalTranscriptionJob := nil;
  inherited;
end;

function TGetMedicalTranscriptionJobResponse.Obj: TGetMedicalTranscriptionJobResponse;
begin
  Result := Self;
end;

function TGetMedicalTranscriptionJobResponse.GetMedicalTranscriptionJob: TMedicalTranscriptionJob;
begin
  Result := FMedicalTranscriptionJob;
end;

procedure TGetMedicalTranscriptionJobResponse.SetMedicalTranscriptionJob(const Value: TMedicalTranscriptionJob);
begin
  if FMedicalTranscriptionJob <> Value then
  begin
    if not KeepMedicalTranscriptionJob then
      FMedicalTranscriptionJob.Free;
    FMedicalTranscriptionJob := Value;
  end;
end;

function TGetMedicalTranscriptionJobResponse.GetKeepMedicalTranscriptionJob: Boolean;
begin
  Result := FKeepMedicalTranscriptionJob;
end;

procedure TGetMedicalTranscriptionJobResponse.SetKeepMedicalTranscriptionJob(const Value: Boolean);
begin
  FKeepMedicalTranscriptionJob := Value;
end;

function TGetMedicalTranscriptionJobResponse.IsSetMedicalTranscriptionJob: Boolean;
begin
  Result := FMedicalTranscriptionJob <> nil;
end;

end.
