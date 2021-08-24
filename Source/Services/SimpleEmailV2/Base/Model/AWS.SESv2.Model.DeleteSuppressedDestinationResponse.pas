unit AWS.SESv2.Model.DeleteSuppressedDestinationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteSuppressedDestinationResponse = class;
  
  IDeleteSuppressedDestinationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteSuppressedDestinationResponse;
  end;
  
  TDeleteSuppressedDestinationResponse = class(TAmazonWebServiceResponse, IDeleteSuppressedDestinationResponse)
  strict protected
    function Obj: TDeleteSuppressedDestinationResponse;
  end;
  
implementation

{ TDeleteSuppressedDestinationResponse }

function TDeleteSuppressedDestinationResponse.Obj: TDeleteSuppressedDestinationResponse;
begin
  Result := Self;
end;

end.
