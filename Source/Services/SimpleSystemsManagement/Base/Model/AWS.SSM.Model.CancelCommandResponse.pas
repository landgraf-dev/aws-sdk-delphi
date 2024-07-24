unit AWS.SSM.Model.CancelCommandResponse;

interface

uses
  AWS.Runtime.Model;

type
  TCancelCommandResponse = class;
  
  ICancelCommandResponse = interface(IAmazonWebServiceResponse)
    function Obj: TCancelCommandResponse;
  end;
  
  TCancelCommandResponse = class(TAmazonWebServiceResponse, ICancelCommandResponse)
  strict protected
    function Obj: TCancelCommandResponse;
  end;
  
implementation

{ TCancelCommandResponse }

function TCancelCommandResponse.Obj: TCancelCommandResponse;
begin
  Result := Self;
end;

end.
