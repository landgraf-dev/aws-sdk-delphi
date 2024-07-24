unit AWS.SSM.Model.StartAssociationsOnceResponse;

interface

uses
  AWS.Runtime.Model;

type
  TStartAssociationsOnceResponse = class;
  
  IStartAssociationsOnceResponse = interface(IAmazonWebServiceResponse)
    function Obj: TStartAssociationsOnceResponse;
  end;
  
  TStartAssociationsOnceResponse = class(TAmazonWebServiceResponse, IStartAssociationsOnceResponse)
  strict protected
    function Obj: TStartAssociationsOnceResponse;
  end;
  
implementation

{ TStartAssociationsOnceResponse }

function TStartAssociationsOnceResponse.Obj: TStartAssociationsOnceResponse;
begin
  Result := Self;
end;

end.
