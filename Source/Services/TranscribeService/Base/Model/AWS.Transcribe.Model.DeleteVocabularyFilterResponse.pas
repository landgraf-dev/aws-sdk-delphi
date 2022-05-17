unit AWS.Transcribe.Model.DeleteVocabularyFilterResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteVocabularyFilterResponse = class;
  
  IDeleteVocabularyFilterResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteVocabularyFilterResponse;
  end;
  
  TDeleteVocabularyFilterResponse = class(TAmazonWebServiceResponse, IDeleteVocabularyFilterResponse)
  strict protected
    function Obj: TDeleteVocabularyFilterResponse;
  end;
  
implementation

{ TDeleteVocabularyFilterResponse }

function TDeleteVocabularyFilterResponse.Obj: TDeleteVocabularyFilterResponse;
begin
  Result := Self;
end;

end.
