unit AWS.Rekognition.Model.UpdateStreamProcessorResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUpdateStreamProcessorResponse = class;
  
  IUpdateStreamProcessorResponse = interface(IAmazonWebServiceResponse)
    function Obj: TUpdateStreamProcessorResponse;
  end;
  
  TUpdateStreamProcessorResponse = class(TAmazonWebServiceResponse, IUpdateStreamProcessorResponse)
  strict protected
    function Obj: TUpdateStreamProcessorResponse;
  end;
  
implementation

{ TUpdateStreamProcessorResponse }

function TUpdateStreamProcessorResponse.Obj: TUpdateStreamProcessorResponse;
begin
  Result := Self;
end;

end.
