unit AWS.SSM.Model.DeregisterManagedInstanceResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeregisterManagedInstanceResponse = class;
  
  IDeregisterManagedInstanceResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeregisterManagedInstanceResponse;
  end;
  
  TDeregisterManagedInstanceResponse = class(TAmazonWebServiceResponse, IDeregisterManagedInstanceResponse)
  strict protected
    function Obj: TDeregisterManagedInstanceResponse;
  end;
  
implementation

{ TDeregisterManagedInstanceResponse }

function TDeregisterManagedInstanceResponse.Obj: TDeregisterManagedInstanceResponse;
begin
  Result := Self;
end;

end.
