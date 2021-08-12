unit AWS.SNS.Model.UnsubscribeResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUnsubscribeResponse = class;
  
  IUnsubscribeResponse = interface(IAmazonWebServiceResponse)
    function Obj: TUnsubscribeResponse;
  end;
  
  TUnsubscribeResponse = class(TAmazonWebServiceResponse, IUnsubscribeResponse)
  strict protected
    function Obj: TUnsubscribeResponse;
  end;
  
implementation

{ TUnsubscribeResponse }

function TUnsubscribeResponse.Obj: TUnsubscribeResponse;
begin
  Result := Self;
end;

end.
