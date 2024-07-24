unit AWS.SSM.Model.DeleteActivationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteActivationResponse = class;
  
  IDeleteActivationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteActivationResponse;
  end;
  
  TDeleteActivationResponse = class(TAmazonWebServiceResponse, IDeleteActivationResponse)
  strict protected
    function Obj: TDeleteActivationResponse;
  end;
  
implementation

{ TDeleteActivationResponse }

function TDeleteActivationResponse.Obj: TDeleteActivationResponse;
begin
  Result := Self;
end;

end.
