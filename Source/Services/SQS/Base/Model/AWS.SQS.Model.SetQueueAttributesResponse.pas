unit AWS.SQS.Model.SetQueueAttributesResponse;

interface

uses
  AWS.Runtime.Model;

type
  TSetQueueAttributesResponse = class;
  
  ISetQueueAttributesResponse = interface(IAmazonWebServiceResponse)
    function Obj: TSetQueueAttributesResponse;
  end;
  
  TSetQueueAttributesResponse = class(TAmazonWebServiceResponse, ISetQueueAttributesResponse)
  strict protected
    function Obj: TSetQueueAttributesResponse;
  end;
  
implementation

{ TSetQueueAttributesResponse }

function TSetQueueAttributesResponse.Obj: TSetQueueAttributesResponse;
begin
  Result := Self;
end;

end.
