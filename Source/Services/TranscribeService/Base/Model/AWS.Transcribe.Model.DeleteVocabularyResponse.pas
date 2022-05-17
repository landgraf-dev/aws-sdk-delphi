unit AWS.Transcribe.Model.DeleteVocabularyResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteVocabularyResponse = class;
  
  IDeleteVocabularyResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteVocabularyResponse;
  end;
  
  TDeleteVocabularyResponse = class(TAmazonWebServiceResponse, IDeleteVocabularyResponse)
  strict protected
    function Obj: TDeleteVocabularyResponse;
  end;
  
implementation

{ TDeleteVocabularyResponse }

function TDeleteVocabularyResponse.Obj: TDeleteVocabularyResponse;
begin
  Result := Self;
end;

end.
