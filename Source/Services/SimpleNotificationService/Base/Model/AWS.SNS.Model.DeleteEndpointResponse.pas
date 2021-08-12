unit AWS.SNS.Model.DeleteEndpointResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteEndpointResponse = class;
  
  IDeleteEndpointResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteEndpointResponse;
  end;
  
  TDeleteEndpointResponse = class(TAmazonWebServiceResponse, IDeleteEndpointResponse)
  strict protected
    function Obj: TDeleteEndpointResponse;
  end;
  
implementation

{ TDeleteEndpointResponse }

function TDeleteEndpointResponse.Obj: TDeleteEndpointResponse;
begin
  Result := Self;
end;

end.
