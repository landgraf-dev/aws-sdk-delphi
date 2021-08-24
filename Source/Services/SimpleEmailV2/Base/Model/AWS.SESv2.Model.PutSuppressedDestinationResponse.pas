unit AWS.SESv2.Model.PutSuppressedDestinationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutSuppressedDestinationResponse = class;
  
  IPutSuppressedDestinationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutSuppressedDestinationResponse;
  end;
  
  TPutSuppressedDestinationResponse = class(TAmazonWebServiceResponse, IPutSuppressedDestinationResponse)
  strict protected
    function Obj: TPutSuppressedDestinationResponse;
  end;
  
implementation

{ TPutSuppressedDestinationResponse }

function TPutSuppressedDestinationResponse.Obj: TPutSuppressedDestinationResponse;
begin
  Result := Self;
end;

end.
