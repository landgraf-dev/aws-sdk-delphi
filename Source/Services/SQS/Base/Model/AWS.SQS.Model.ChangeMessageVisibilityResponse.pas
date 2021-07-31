unit AWS.SQS.Model.ChangeMessageVisibilityResponse;

interface

uses
  AWS.Runtime.Model;

type
  TChangeMessageVisibilityResponse = class;
  
  IChangeMessageVisibilityResponse = interface(IAmazonWebServiceResponse)
    function Obj: TChangeMessageVisibilityResponse;
  end;
  
  TChangeMessageVisibilityResponse = class(TAmazonWebServiceResponse, IChangeMessageVisibilityResponse)
  strict protected
    function Obj: TChangeMessageVisibilityResponse;
  end;
  
implementation

{ TChangeMessageVisibilityResponse }

function TChangeMessageVisibilityResponse.Obj: TChangeMessageVisibilityResponse;
begin
  Result := Self;
end;

end.
