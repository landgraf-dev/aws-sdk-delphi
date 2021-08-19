unit AWS.Polly.Model.DeleteLexiconResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteLexiconResponse = class;
  
  IDeleteLexiconResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteLexiconResponse;
  end;
  
  TDeleteLexiconResponse = class(TAmazonWebServiceResponse, IDeleteLexiconResponse)
  strict protected
    function Obj: TDeleteLexiconResponse;
  end;
  
implementation

{ TDeleteLexiconResponse }

function TDeleteLexiconResponse.Obj: TDeleteLexiconResponse;
begin
  Result := Self;
end;

end.
