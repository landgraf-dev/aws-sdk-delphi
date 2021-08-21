unit AWS.Polly.Model.StartSpeechSynthesisTaskResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Polly.Model.SynthesisTask;

type
  TStartSpeechSynthesisTaskResponse = class;
  
  IStartSpeechSynthesisTaskResponse = interface(IAmazonWebServiceResponse)
    function GetSynthesisTask: TSynthesisTask;
    procedure SetSynthesisTask(const Value: TSynthesisTask);
    function GetKeepSynthesisTask: Boolean;
    procedure SetKeepSynthesisTask(const Value: Boolean);
    function Obj: TStartSpeechSynthesisTaskResponse;
    function IsSetSynthesisTask: Boolean;
    property SynthesisTask: TSynthesisTask read GetSynthesisTask write SetSynthesisTask;
    property KeepSynthesisTask: Boolean read GetKeepSynthesisTask write SetKeepSynthesisTask;
  end;
  
  TStartSpeechSynthesisTaskResponse = class(TAmazonWebServiceResponse, IStartSpeechSynthesisTaskResponse)
  strict private
    FSynthesisTask: TSynthesisTask;
    FKeepSynthesisTask: Boolean;
    function GetSynthesisTask: TSynthesisTask;
    procedure SetSynthesisTask(const Value: TSynthesisTask);
    function GetKeepSynthesisTask: Boolean;
    procedure SetKeepSynthesisTask(const Value: Boolean);
  strict protected
    function Obj: TStartSpeechSynthesisTaskResponse;
  public
    destructor Destroy; override;
    function IsSetSynthesisTask: Boolean;
    property SynthesisTask: TSynthesisTask read GetSynthesisTask write SetSynthesisTask;
    property KeepSynthesisTask: Boolean read GetKeepSynthesisTask write SetKeepSynthesisTask;
  end;
  
implementation

{ TStartSpeechSynthesisTaskResponse }

destructor TStartSpeechSynthesisTaskResponse.Destroy;
begin
  SynthesisTask := nil;
  inherited;
end;

function TStartSpeechSynthesisTaskResponse.Obj: TStartSpeechSynthesisTaskResponse;
begin
  Result := Self;
end;

function TStartSpeechSynthesisTaskResponse.GetSynthesisTask: TSynthesisTask;
begin
  Result := FSynthesisTask;
end;

procedure TStartSpeechSynthesisTaskResponse.SetSynthesisTask(const Value: TSynthesisTask);
begin
  if FSynthesisTask <> Value then
  begin
    if not KeepSynthesisTask then
      FSynthesisTask.Free;
    FSynthesisTask := Value;
  end;
end;

function TStartSpeechSynthesisTaskResponse.GetKeepSynthesisTask: Boolean;
begin
  Result := FKeepSynthesisTask;
end;

procedure TStartSpeechSynthesisTaskResponse.SetKeepSynthesisTask(const Value: Boolean);
begin
  FKeepSynthesisTask := Value;
end;

function TStartSpeechSynthesisTaskResponse.IsSetSynthesisTask: Boolean;
begin
  Result := FSynthesisTask <> nil;
end;

end.
