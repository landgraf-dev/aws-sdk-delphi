unit AWS.SNS.Model.SetPlatformApplicationAttributesResponse;

interface

uses
  AWS.Runtime.Model;

type
  TSetPlatformApplicationAttributesResponse = class;
  
  ISetPlatformApplicationAttributesResponse = interface(IAmazonWebServiceResponse)
    function Obj: TSetPlatformApplicationAttributesResponse;
  end;
  
  TSetPlatformApplicationAttributesResponse = class(TAmazonWebServiceResponse, ISetPlatformApplicationAttributesResponse)
  strict protected
    function Obj: TSetPlatformApplicationAttributesResponse;
  end;
  
implementation

{ TSetPlatformApplicationAttributesResponse }

function TSetPlatformApplicationAttributesResponse.Obj: TSetPlatformApplicationAttributesResponse;
begin
  Result := Self;
end;

end.
