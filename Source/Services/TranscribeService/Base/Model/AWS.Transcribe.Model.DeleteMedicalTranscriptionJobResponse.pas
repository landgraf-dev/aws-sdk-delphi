unit AWS.Transcribe.Model.DeleteMedicalTranscriptionJobResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteMedicalTranscriptionJobResponse = class;
  
  IDeleteMedicalTranscriptionJobResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteMedicalTranscriptionJobResponse;
  end;
  
  TDeleteMedicalTranscriptionJobResponse = class(TAmazonWebServiceResponse, IDeleteMedicalTranscriptionJobResponse)
  strict protected
    function Obj: TDeleteMedicalTranscriptionJobResponse;
  end;
  
implementation

{ TDeleteMedicalTranscriptionJobResponse }

function TDeleteMedicalTranscriptionJobResponse.Obj: TDeleteMedicalTranscriptionJobResponse;
begin
  Result := Self;
end;

end.
