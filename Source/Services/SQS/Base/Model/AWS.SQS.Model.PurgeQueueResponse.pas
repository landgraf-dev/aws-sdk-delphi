unit AWS.SQS.Model.PurgeQueueResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPurgeQueueResponse = class;
  
  IPurgeQueueResponse = interface
    function Obj: TPurgeQueueResponse;
  end;
  
  TPurgeQueueResponse = class(TAmazonWebServiceResponse, IPurgeQueueResponse)
  strict protected
    function Obj: TPurgeQueueResponse;
  end;
  
implementation

{ TPurgeQueueResponse }

function TPurgeQueueResponse.Obj: TPurgeQueueResponse;
begin
  Result := Self;
end;

end.
