unit AWS.Polly.Transform.StartSpeechSynthesisTaskResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.StartSpeechSynthesisTaskResponse, 
  AWS.Transform.ResponseUnmarshaller;

type
  IStartSpeechSynthesisTaskResponseUnmarshaller = IResponseUnmarshaller;
  
  TStartSpeechSynthesisTaskResponseUnmarshaller = class(TJsonResponseUnmarshaller, IStartSpeechSynthesisTaskResponseUnmarshaller)
  strict private
    class var FInstance: IStartSpeechSynthesisTaskResponseUnmarshaller;
    class constructor Create;
  public
    class function Instance: IStartSpeechSynthesisTaskResponseUnmarshaller; static;
  end;
  
implementation

{ TStartSpeechSynthesisTaskResponseUnmarshaller }

class constructor TStartSpeechSynthesisTaskResponseUnmarshaller.Create;
begin
  FInstance := TStartSpeechSynthesisTaskResponseUnmarshaller.Create;
end;

class function TStartSpeechSynthesisTaskResponseUnmarshaller.Instance: IStartSpeechSynthesisTaskResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
