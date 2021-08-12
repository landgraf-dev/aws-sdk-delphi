unit AWS.SNS.Model.SetSubscriptionAttributesResponse;

interface

uses
  AWS.Runtime.Model;

type
  TSetSubscriptionAttributesResponse = class;
  
  ISetSubscriptionAttributesResponse = interface(IAmazonWebServiceResponse)
    function Obj: TSetSubscriptionAttributesResponse;
  end;
  
  TSetSubscriptionAttributesResponse = class(TAmazonWebServiceResponse, ISetSubscriptionAttributesResponse)
  strict protected
    function Obj: TSetSubscriptionAttributesResponse;
  end;
  
implementation

{ TSetSubscriptionAttributesResponse }

function TSetSubscriptionAttributesResponse.Obj: TSetSubscriptionAttributesResponse;
begin
  Result := Self;
end;

end.
