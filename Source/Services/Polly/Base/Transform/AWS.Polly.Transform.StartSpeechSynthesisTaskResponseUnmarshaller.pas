unit AWS.Polly.Transform.StartSpeechSynthesisTaskResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.StartSpeechSynthesisTaskResponse, 
  AWS.Transform.ResponseUnmarshaller;

type
  IStartSpeechSynthesisTaskResponseUnmarshaller = IResponseUnmarshaller;
  
  TStartSpeechSynthesisTaskResponseUnmarshaller = class(TJsonResponseUnmarshaller, IStartSpeechSynthesisTaskResponseUnmarshaller)
  end;
  
implementation

end.
