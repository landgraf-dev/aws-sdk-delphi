unit AWS.SQS.Model.AddPermissionResponse;

interface

uses
  AWS.Runtime.Model;

type
  TAddPermissionResponse = class;
  
  IAddPermissionResponse = interface(IAmazonWebServiceResponse)
    function Obj: TAddPermissionResponse;
  end;
  
  TAddPermissionResponse = class(TAmazonWebServiceResponse, IAddPermissionResponse)
  strict protected
    function Obj: TAddPermissionResponse;
  end;
  
implementation

{ TAddPermissionResponse }

function TAddPermissionResponse.Obj: TAddPermissionResponse;
begin
  Result := Self;
end;

end.
