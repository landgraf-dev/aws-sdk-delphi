unit AWS.SESv2.Model.CreateDedicatedIpPoolResponse;

interface

uses
  AWS.Runtime.Model;

type
  TCreateDedicatedIpPoolResponse = class;
  
  ICreateDedicatedIpPoolResponse = interface(IAmazonWebServiceResponse)
    function Obj: TCreateDedicatedIpPoolResponse;
  end;
  
  TCreateDedicatedIpPoolResponse = class(TAmazonWebServiceResponse, ICreateDedicatedIpPoolResponse)
  strict protected
    function Obj: TCreateDedicatedIpPoolResponse;
  end;
  
implementation

{ TCreateDedicatedIpPoolResponse }

function TCreateDedicatedIpPoolResponse.Obj: TCreateDedicatedIpPoolResponse;
begin
  Result := Self;
end;

end.
