unit AWS.Transcribe.Model.StartTranscriptionJobResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.TranscriptionJob;

type
  TStartTranscriptionJobResponse = class;
  
  IStartTranscriptionJobResponse = interface(IAmazonWebServiceResponse)
    function GetTranscriptionJob: TTranscriptionJob;
    procedure SetTranscriptionJob(const Value: TTranscriptionJob);
    function GetKeepTranscriptionJob: Boolean;
    procedure SetKeepTranscriptionJob(const Value: Boolean);
    function Obj: TStartTranscriptionJobResponse;
    function IsSetTranscriptionJob: Boolean;
    property TranscriptionJob: TTranscriptionJob read GetTranscriptionJob write SetTranscriptionJob;
    property KeepTranscriptionJob: Boolean read GetKeepTranscriptionJob write SetKeepTranscriptionJob;
  end;
  
  TStartTranscriptionJobResponse = class(TAmazonWebServiceResponse, IStartTranscriptionJobResponse)
  strict private
    FTranscriptionJob: TTranscriptionJob;
    FKeepTranscriptionJob: Boolean;
    function GetTranscriptionJob: TTranscriptionJob;
    procedure SetTranscriptionJob(const Value: TTranscriptionJob);
    function GetKeepTranscriptionJob: Boolean;
    procedure SetKeepTranscriptionJob(const Value: Boolean);
  strict protected
    function Obj: TStartTranscriptionJobResponse;
  public
    destructor Destroy; override;
    function IsSetTranscriptionJob: Boolean;
    property TranscriptionJob: TTranscriptionJob read GetTranscriptionJob write SetTranscriptionJob;
    property KeepTranscriptionJob: Boolean read GetKeepTranscriptionJob write SetKeepTranscriptionJob;
  end;
  
implementation

{ TStartTranscriptionJobResponse }

destructor TStartTranscriptionJobResponse.Destroy;
begin
  TranscriptionJob := nil;
  inherited;
end;

function TStartTranscriptionJobResponse.Obj: TStartTranscriptionJobResponse;
begin
  Result := Self;
end;

function TStartTranscriptionJobResponse.GetTranscriptionJob: TTranscriptionJob;
begin
  Result := FTranscriptionJob;
end;

procedure TStartTranscriptionJobResponse.SetTranscriptionJob(const Value: TTranscriptionJob);
begin
  if FTranscriptionJob <> Value then
  begin
    if not KeepTranscriptionJob then
      FTranscriptionJob.Free;
    FTranscriptionJob := Value;
  end;
end;

function TStartTranscriptionJobResponse.GetKeepTranscriptionJob: Boolean;
begin
  Result := FKeepTranscriptionJob;
end;

procedure TStartTranscriptionJobResponse.SetKeepTranscriptionJob(const Value: Boolean);
begin
  FKeepTranscriptionJob := Value;
end;

function TStartTranscriptionJobResponse.IsSetTranscriptionJob: Boolean;
begin
  Result := FTranscriptionJob <> nil;
end;

end.
