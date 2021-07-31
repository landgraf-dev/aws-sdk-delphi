unit AWS.SQS.Model.TagQueueResponse;

interface

uses
  AWS.Runtime.Model;

type
  TTagQueueResponse = class;
  
  ITagQueueResponse = interface(IAmazonWebServiceResponse)
    function Obj: TTagQueueResponse;
  end;
  
  TTagQueueResponse = class(TAmazonWebServiceResponse, ITagQueueResponse)
  strict protected
    function Obj: TTagQueueResponse;
  end;
  
implementation

{ TTagQueueResponse }

function TTagQueueResponse.Obj: TTagQueueResponse;
begin
  Result := Self;
end;

end.
