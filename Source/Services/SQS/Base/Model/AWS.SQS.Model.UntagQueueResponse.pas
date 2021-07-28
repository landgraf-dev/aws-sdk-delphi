unit AWS.SQS.Model.UntagQueueResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUntagQueueResponse = class;
  
  IUntagQueueResponse = interface
    function Obj: TUntagQueueResponse;
  end;
  
  TUntagQueueResponse = class(TAmazonWebServiceResponse, IUntagQueueResponse)
  strict protected
    function Obj: TUntagQueueResponse;
  end;
  
implementation

{ TUntagQueueResponse }

function TUntagQueueResponse.Obj: TUntagQueueResponse;
begin
  Result := Self;
end;

end.
