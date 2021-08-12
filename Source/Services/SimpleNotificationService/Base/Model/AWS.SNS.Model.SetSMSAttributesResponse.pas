unit AWS.SNS.Model.SetSMSAttributesResponse;

interface

uses
  AWS.Runtime.Model;

type
  TSetSMSAttributesResponse = class;
  
  ISetSMSAttributesResponse = interface(IAmazonWebServiceResponse)
    function Obj: TSetSMSAttributesResponse;
  end;
  
  TSetSMSAttributesResponse = class(TAmazonWebServiceResponse, ISetSMSAttributesResponse)
  strict protected
    function Obj: TSetSMSAttributesResponse;
  end;
  
implementation

{ TSetSMSAttributesResponse }

function TSetSMSAttributesResponse.Obj: TSetSMSAttributesResponse;
begin
  Result := Self;
end;

end.
