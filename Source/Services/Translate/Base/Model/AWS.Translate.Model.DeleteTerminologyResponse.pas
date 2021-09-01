unit AWS.Translate.Model.DeleteTerminologyResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteTerminologyResponse = class;
  
  IDeleteTerminologyResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteTerminologyResponse;
  end;
  
  TDeleteTerminologyResponse = class(TAmazonWebServiceResponse, IDeleteTerminologyResponse)
  strict protected
    function Obj: TDeleteTerminologyResponse;
  end;
  
implementation

{ TDeleteTerminologyResponse }

function TDeleteTerminologyResponse.Obj: TDeleteTerminologyResponse;
begin
  Result := Self;
end;

end.
