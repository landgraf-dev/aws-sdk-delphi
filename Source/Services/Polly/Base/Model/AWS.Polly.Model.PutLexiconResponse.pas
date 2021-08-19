unit AWS.Polly.Model.PutLexiconResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutLexiconResponse = class;
  
  IPutLexiconResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutLexiconResponse;
  end;
  
  TPutLexiconResponse = class(TAmazonWebServiceResponse, IPutLexiconResponse)
  strict protected
    function Obj: TPutLexiconResponse;
  end;
  
implementation

{ TPutLexiconResponse }

function TPutLexiconResponse.Obj: TPutLexiconResponse;
begin
  Result := Self;
end;

end.
