unit AWS.Polly.Model.GetSpeechSynthesisTaskRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Model.Request;

type
  TGetSpeechSynthesisTaskRequest = class;
  
  IGetSpeechSynthesisTaskRequest = interface
    function GetTaskId: string;
    procedure SetTaskId(const Value: string);
    function Obj: TGetSpeechSynthesisTaskRequest;
    function IsSetTaskId: Boolean;
    property TaskId: string read GetTaskId write SetTaskId;
  end;
  
  TGetSpeechSynthesisTaskRequest = class(TAmazonPollyRequest, IGetSpeechSynthesisTaskRequest)
  strict private
    FTaskId: Nullable<string>;
    function GetTaskId: string;
    procedure SetTaskId(const Value: string);
  strict protected
    function Obj: TGetSpeechSynthesisTaskRequest;
  public
    function IsSetTaskId: Boolean;
    property TaskId: string read GetTaskId write SetTaskId;
  end;
  
implementation

{ TGetSpeechSynthesisTaskRequest }

function TGetSpeechSynthesisTaskRequest.Obj: TGetSpeechSynthesisTaskRequest;
begin
  Result := Self;
end;

function TGetSpeechSynthesisTaskRequest.GetTaskId: string;
begin
  Result := FTaskId.ValueOrDefault;
end;

procedure TGetSpeechSynthesisTaskRequest.SetTaskId(const Value: string);
begin
  FTaskId := Value;
end;

function TGetSpeechSynthesisTaskRequest.IsSetTaskId: Boolean;
begin
  Result := FTaskId.HasValue;
end;

end.
