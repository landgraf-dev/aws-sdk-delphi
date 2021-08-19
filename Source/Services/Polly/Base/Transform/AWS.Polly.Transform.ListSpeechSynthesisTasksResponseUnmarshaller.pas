unit AWS.Polly.Transform.ListSpeechSynthesisTasksResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.ListSpeechSynthesisTasksResponse, 
  AWS.Transform.ResponseUnmarshaller;

type
  IListSpeechSynthesisTasksResponseUnmarshaller = IResponseUnmarshaller;
  
  TListSpeechSynthesisTasksResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListSpeechSynthesisTasksResponseUnmarshaller)
  end;
  
implementation

end.
