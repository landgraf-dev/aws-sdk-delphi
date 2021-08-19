unit AWS.Polly.Transform.SynthesizeSpeechResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.SynthesizeSpeechResponse, 
  AWS.Transform.ResponseUnmarshaller;

type
  ISynthesizeSpeechResponseUnmarshaller = IResponseUnmarshaller;
  
  TSynthesizeSpeechResponseUnmarshaller = class(TJsonResponseUnmarshaller, ISynthesizeSpeechResponseUnmarshaller)
  end;
  
implementation

end.
