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
    function GetKeepSynthesisTask: Boolean;
    procedure SetKeepSynthesisTask(const Value: Boolean);
    function Obj: TGetSpeechSynthesisTaskResponse;
    function IsSetSynthesisTask: Boolean;
    property SynthesisTask: TSynthesisTask read GetSynthesisTask write SetSynthesisTask;
    property KeepSynthesisTask: Boolean read GetKeepSynthesisTask write SetKeepSynthesisTask;
  end;
  
  TGetSpeechSynthesisTaskResponse = class(TAmazonWebServiceResponse, IGetSpeechSynthesisTaskResponse)
  strict private
    FSynthesisTask: TSynthesisTask;
    FKeepSynthesisTask: Boolean;
    function GetSynthesisTask: TSynthesisTask;
    procedure SetSynthesisTask(const Value: TSynthesisTask);
    function GetKeepSynthesisTask: Boolean;
    procedure SetKeepSynthesisTask(const Value: Boolean);
  strict protected
    function Obj: TGetSpeechSynthesisTaskResponse;
  public
    destructor Destroy; override;
    function IsSetSynthesisTask: Boolean;
    property SynthesisTask: TSynthesisTask read GetSynthesisTask write SetSynthesisTask;
    property KeepSynthesisTask: Boolean read GetKeepSynthesisTask write SetKeepSynthesisTask;
  end;
  
implementation

{ TGetSpeechSynthesisTaskResponse }

destructor TGetSpeechSynthesisTaskResponse.Destroy;
begin
  SynthesisTask := nil;
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
    if not KeepSynthesisTask then
      FSynthesisTask.Free;
    FSynthesisTask := Value;
  end;
end;

function TGetSpeechSynthesisTaskResponse.GetKeepSynthesisTask: Boolean;
begin
  Result := FKeepSynthesisTask;
end;

procedure TGetSpeechSynthesisTaskResponse.SetKeepSynthesisTask(const Value: Boolean);
begin
  FKeepSynthesisTask := Value;
end;

function TGetSpeechSynthesisTaskResponse.IsSetSynthesisTask: Boolean;
begin
  Result := FSynthesisTask <> nil;
end;

end.
