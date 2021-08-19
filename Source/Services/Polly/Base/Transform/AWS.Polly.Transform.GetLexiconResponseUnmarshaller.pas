unit AWS.Polly.Transform.GetLexiconResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.GetLexiconResponse, 
  AWS.Transform.ResponseUnmarshaller;

type
  IGetLexiconResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetLexiconResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetLexiconResponseUnmarshaller)
  end;
  
implementation

end.
