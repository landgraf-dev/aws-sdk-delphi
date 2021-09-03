unit AWS.Rekognition.Model.DeleteStreamProcessorResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteStreamProcessorResponse = class;
  
  IDeleteStreamProcessorResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteStreamProcessorResponse;
  end;
  
  TDeleteStreamProcessorResponse = class(TAmazonWebServiceResponse, IDeleteStreamProcessorResponse)
  strict protected
    function Obj: TDeleteStreamProcessorResponse;
  end;
  
implementation

{ TDeleteStreamProcessorResponse }

function TDeleteStreamProcessorResponse.Obj: TDeleteStreamProcessorResponse;
begin
  Result := Self;
end;

end.
