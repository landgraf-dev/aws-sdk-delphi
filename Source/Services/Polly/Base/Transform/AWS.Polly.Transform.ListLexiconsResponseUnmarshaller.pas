unit AWS.Polly.Transform.ListLexiconsResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.ListLexiconsResponse, 
  AWS.Transform.ResponseUnmarshaller;

type
  IListLexiconsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListLexiconsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListLexiconsResponseUnmarshaller)
  end;
  
implementation

end.
