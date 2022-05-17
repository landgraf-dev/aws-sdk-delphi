unit AWS.Transcribe.Model.DeleteTranscriptionJobResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteTranscriptionJobResponse = class;
  
  IDeleteTranscriptionJobResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteTranscriptionJobResponse;
  end;
  
  TDeleteTranscriptionJobResponse = class(TAmazonWebServiceResponse, IDeleteTranscriptionJobResponse)
  strict protected
    function Obj: TDeleteTranscriptionJobResponse;
  end;
  
implementation

{ TDeleteTranscriptionJobResponse }

function TDeleteTranscriptionJobResponse.Obj: TDeleteTranscriptionJobResponse;
begin
  Result := Self;
end;

end.
