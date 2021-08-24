unit AWS.SESv2.Model.CreateContactListResponse;

interface

uses
  AWS.Runtime.Model;

type
  TCreateContactListResponse = class;
  
  ICreateContactListResponse = interface(IAmazonWebServiceResponse)
    function Obj: TCreateContactListResponse;
  end;
  
  TCreateContactListResponse = class(TAmazonWebServiceResponse, ICreateContactListResponse)
  strict protected
    function Obj: TCreateContactListResponse;
  end;
  
implementation

{ TCreateContactListResponse }

function TCreateContactListResponse.Obj: TCreateContactListResponse;
begin
  Result := Self;
end;

end.
