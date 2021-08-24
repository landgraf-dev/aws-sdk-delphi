unit AWS.SESv2.Model.CreateContactResponse;

interface

uses
  AWS.Runtime.Model;

type
  TCreateContactResponse = class;
  
  ICreateContactResponse = interface(IAmazonWebServiceResponse)
    function Obj: TCreateContactResponse;
  end;
  
  TCreateContactResponse = class(TAmazonWebServiceResponse, ICreateContactResponse)
  strict protected
    function Obj: TCreateContactResponse;
  end;
  
implementation

{ TCreateContactResponse }

function TCreateContactResponse.Obj: TCreateContactResponse;
begin
  Result := Self;
end;

end.
