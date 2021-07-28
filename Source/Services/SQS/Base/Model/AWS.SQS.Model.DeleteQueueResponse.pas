unit AWS.SQS.Model.DeleteQueueResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteQueueResponse = class;
  
  IDeleteQueueResponse = interface
    function Obj: TDeleteQueueResponse;
  end;
  
  TDeleteQueueResponse = class(TAmazonWebServiceResponse, IDeleteQueueResponse)
  strict protected
    function Obj: TDeleteQueueResponse;
  end;
  
implementation

{ TDeleteQueueResponse }

function TDeleteQueueResponse.Obj: TDeleteQueueResponse;
begin
  Result := Self;
end;

end.
