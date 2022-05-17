unit AWS.Transcribe.Model.DeleteMedicalVocabularyResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteMedicalVocabularyResponse = class;
  
  IDeleteMedicalVocabularyResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteMedicalVocabularyResponse;
  end;
  
  TDeleteMedicalVocabularyResponse = class(TAmazonWebServiceResponse, IDeleteMedicalVocabularyResponse)
  strict protected
    function Obj: TDeleteMedicalVocabularyResponse;
  end;
  
implementation

{ TDeleteMedicalVocabularyResponse }

function TDeleteMedicalVocabularyResponse.Obj: TDeleteMedicalVocabularyResponse;
begin
  Result := Self;
end;

end.
