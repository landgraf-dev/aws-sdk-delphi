unit AWS.Polly.Model.GetSpeechSynthesisTaskResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Polly.Model.SynthesisTask;

type
  TGetSpeechSynthesisTaskResponse = class;
  
  IGetSpeechSynthesisTaskResponse = interface(IAmazonWebServiceResponse)
    function GetSynthesisTask: TSynthesisTask;
    procedure SetSynthesisTask(const Value: TSynthesisTask);
    function Obj: TGetSpeechSynthesisTaskResponse;
    function IsSetSynthesisTask: Boolean;
    property SynthesisTask: TSynthesisTask read GetSynthesisTask write SetSynthesisTask;
  end;
  
  TGetSpeechSynthesisTaskResponse = class(TAmazonWebServiceResponse, IGetSpeechSynthesisTaskResponse)
  strict private
    FSynthesisTask: TSynthesisTask;
    function GetSynthesisTask: TSynthesisTask;
    procedure SetSynthesisTask(const Value: TSynthesisTask);
  strict protected
    function Obj: TGetSpeechSynthesisTaskResponse;
  public
    destructor Destroy; override;
    function IsSetSynthesisTask: Boolean;
    property SynthesisTask: TSynthesisTask read GetSynthesisTask write SetSynthesisTask;
  end;
  
implementation

{ TGetSpeechSynthesisTaskResponse }

destructor TGetSpeechSynthesisTaskResponse.Destroy;
begin
  FSynthesisTask.Free;
  inherited;
end;

function TGetSpeechSynthesisTaskResponse.Obj: TGetSpeechSynthesisTaskResponse;
begin
  Result := Self;
end;

function TGetSpeechSynthesisTaskResponse.GetSynthesisTask: TSynthesisTask;
begin
  Result := FSynthesisTask;
end;

procedure TGetSpeechSynthesisTaskResponse.SetSynthesisTask(const Value: TSynthesisTask);
begin
  if FSynthesisTask <> Value then
  begin
    FSynthesisTask.Free;
    FSynthesisTask := Value;
  end;
end;

function TGetSpeechSynthesisTaskResponse.IsSetSynthesisTask: Boolean;
begin
  Result := FSynthesisTask <> nil;
end;

end.
