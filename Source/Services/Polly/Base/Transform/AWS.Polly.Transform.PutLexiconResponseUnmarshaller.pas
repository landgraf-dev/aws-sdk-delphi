unit AWS.Polly.Transform.PutLexiconResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.PutLexiconResponse, 
  AWS.Transform.ResponseUnmarshaller;

type
  IPutLexiconResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutLexiconResponseUnmarshaller = class(TJsonResponseUnmarshaller, IPutLexiconResponseUnmarshaller)
  end;
  
implementation

end.
