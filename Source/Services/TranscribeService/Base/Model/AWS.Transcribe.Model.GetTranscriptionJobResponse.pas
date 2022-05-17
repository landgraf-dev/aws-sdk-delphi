unit AWS.Transcribe.Model.GetTranscriptionJobResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.TranscriptionJob;

type
  TGetTranscriptionJobResponse = class;
  
  IGetTranscriptionJobResponse = interface(IAmazonWebServiceResponse)
    function GetTranscriptionJob: TTranscriptionJob;
    procedure SetTranscriptionJob(const Value: TTranscriptionJob);
    function GetKeepTranscriptionJob: Boolean;
    procedure SetKeepTranscriptionJob(const Value: Boolean);
    function Obj: TGetTranscriptionJobResponse;
    function IsSetTranscriptionJob: Boolean;
    property TranscriptionJob: TTranscriptionJob read GetTranscriptionJob write SetTranscriptionJob;
    property KeepTranscriptionJob: Boolean read GetKeepTranscriptionJob write SetKeepTranscriptionJob;
  end;
  
  TGetTranscriptionJobResponse = class(TAmazonWebServiceResponse, IGetTranscriptionJobResponse)
  strict private
    FTranscriptionJob: TTranscriptionJob;
    FKeepTranscriptionJob: Boolean;
    function GetTranscriptionJob: TTranscriptionJob;
    procedure SetTranscriptionJob(const Value: TTranscriptionJob);
    function GetKeepTranscriptionJob: Boolean;
    procedure SetKeepTranscriptionJob(const Value: Boolean);
  strict protected
    function Obj: TGetTranscriptionJobResponse;
  public
    destructor Destroy; override;
    function IsSetTranscriptionJob: Boolean;
    property TranscriptionJob: TTranscriptionJob read GetTranscriptionJob write SetTranscriptionJob;
    property KeepTranscriptionJob: Boolean read GetKeepTranscriptionJob write SetKeepTranscriptionJob;
  end;
  
implementation

{ TGetTranscriptionJobResponse }

destructor TGetTranscriptionJobResponse.Destroy;
begin
  TranscriptionJob := nil;
  inherited;
end;

function TGetTranscriptionJobResponse.Obj: TGetTranscriptionJobResponse;
begin
  Result := Self;
end;

function TGetTranscriptionJobResponse.GetTranscriptionJob: TTranscriptionJob;
begin
  Result := FTranscriptionJob;
end;

procedure TGetTranscriptionJobResponse.SetTranscriptionJob(const Value: TTranscriptionJob);
begin
  if FTranscriptionJob <> Value then
  begin
    if not KeepTranscriptionJob then
      FTranscriptionJob.Free;
    FTranscriptionJob := Value;
  end;
end;

function TGetTranscriptionJobResponse.GetKeepTranscriptionJob: Boolean;
begin
  Result := FKeepTranscriptionJob;
end;

procedure TGetTranscriptionJobResponse.SetKeepTranscriptionJob(const Value: Boolean);
begin
  FKeepTranscriptionJob := Value;
end;

function TGetTranscriptionJobResponse.IsSetTranscriptionJob: Boolean;
begin
  Result := FTranscriptionJob <> nil;
end;

end.
