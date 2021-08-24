unit AWS.SESv2.Model.DeleteDedicatedIpPoolResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteDedicatedIpPoolResponse = class;
  
  IDeleteDedicatedIpPoolResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteDedicatedIpPoolResponse;
  end;
  
  TDeleteDedicatedIpPoolResponse = class(TAmazonWebServiceResponse, IDeleteDedicatedIpPoolResponse)
  strict protected
    function Obj: TDeleteDedicatedIpPoolResponse;
  end;
  
implementation

{ TDeleteDedicatedIpPoolResponse }

function TDeleteDedicatedIpPoolResponse.Obj: TDeleteDedicatedIpPoolResponse;
begin
  Result := Self;
end;

end.
