unit AWS.SSM.Model.DeleteParameterResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteParameterResponse = class;
  
  IDeleteParameterResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteParameterResponse;
  end;
  
  TDeleteParameterResponse = class(TAmazonWebServiceResponse, IDeleteParameterResponse)
  strict protected
    function Obj: TDeleteParameterResponse;
  end;
  
implementation

{ TDeleteParameterResponse }

function TDeleteParameterResponse.Obj: TDeleteParameterResponse;
begin
  Result := Self;
end;

end.
