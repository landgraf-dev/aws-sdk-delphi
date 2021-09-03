unit AWS.Rekognition.Model.StopStreamProcessorResponse;

interface

uses
  AWS.Runtime.Model;

type
  TStopStreamProcessorResponse = class;
  
  IStopStreamProcessorResponse = interface(IAmazonWebServiceResponse)
    function Obj: TStopStreamProcessorResponse;
  end;
  
  TStopStreamProcessorResponse = class(TAmazonWebServiceResponse, IStopStreamProcessorResponse)
  strict protected
    function Obj: TStopStreamProcessorResponse;
  end;
  
implementation

{ TStopStreamProcessorResponse }

function TStopStreamProcessorResponse.Obj: TStopStreamProcessorResponse;
begin
  Result := Self;
end;

end.
