unit AWS.Rekognition.Model.StartStreamProcessorResponse;

interface

uses
  AWS.Runtime.Model;

type
  TStartStreamProcessorResponse = class;
  
  IStartStreamProcessorResponse = interface(IAmazonWebServiceResponse)
    function Obj: TStartStreamProcessorResponse;
  end;
  
  TStartStreamProcessorResponse = class(TAmazonWebServiceResponse, IStartStreamProcessorResponse)
  strict protected
    function Obj: TStartStreamProcessorResponse;
  end;
  
implementation

{ TStartStreamProcessorResponse }

function TStartStreamProcessorResponse.Obj: TStartStreamProcessorResponse;
begin
  Result := Self;
end;

end.
