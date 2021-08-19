unit AWS.Polly.Transform.DeleteLexiconResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.DeleteLexiconResponse, 
  AWS.Transform.ResponseUnmarshaller;

type
  IDeleteLexiconResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteLexiconResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDeleteLexiconResponseUnmarshaller)
  end;
  
implementation

end.
