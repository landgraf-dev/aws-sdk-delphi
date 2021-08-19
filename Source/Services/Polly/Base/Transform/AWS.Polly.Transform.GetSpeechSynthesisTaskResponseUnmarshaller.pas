unit AWS.Polly.Transform.GetSpeechSynthesisTaskResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.GetSpeechSynthesisTaskResponse, 
  AWS.Transform.ResponseUnmarshaller;

type
  IGetSpeechSynthesisTaskResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetSpeechSynthesisTaskResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetSpeechSynthesisTaskResponseUnmarshaller)
  end;
  
implementation

end.
