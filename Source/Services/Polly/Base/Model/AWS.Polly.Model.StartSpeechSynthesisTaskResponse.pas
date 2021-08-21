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
    function Obj: TStartSpeechSynthesisTaskResponse;
    function IsSetSynthesisTask: Boolean;
    property SynthesisTask: TSynthesisTask read GetSynthesisTask write SetSynthesisTask;
  end;
  
  TStartSpeechSynthesisTaskResponse = class(TAmazonWebServiceResponse, IStartSpeechSynthesisTaskResponse)
  strict private
    FSynthesisTask: TSynthesisTask;
    function GetSynthesisTask: TSynthesisTask;
    procedure SetSynthesisTask(const Value: TSynthesisTask);
  strict protected
    function Obj: TStartSpeechSynthesisTaskResponse;
  public
    destructor Destroy; override;
    function IsSetSynthesisTask: Boolean;
    property SynthesisTask: TSynthesisTask read GetSynthesisTask write SetSynthesisTask;
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
    FSynthesisTask.Free;
    FSynthesisTask := Value;
  end;
end;

function TStartSpeechSynthesisTaskResponse.IsSetSynthesisTask: Boolean;
begin
  Result := FSynthesisTask <> nil;
end;

end.
