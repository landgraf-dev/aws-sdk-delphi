unit AWS.SNS.Model.SetEndpointAttributesResponse;

interface

uses
  AWS.Runtime.Model;

type
  TSetEndpointAttributesResponse = class;
  
  ISetEndpointAttributesResponse = interface(IAmazonWebServiceResponse)
    function Obj: TSetEndpointAttributesResponse;
  end;
  
  TSetEndpointAttributesResponse = class(TAmazonWebServiceResponse, ISetEndpointAttributesResponse)
  strict protected
    function Obj: TSetEndpointAttributesResponse;
  end;
  
implementation

{ TSetEndpointAttributesResponse }

function TSetEndpointAttributesResponse.Obj: TSetEndpointAttributesResponse;
begin
  Result := Self;
end;

end.
