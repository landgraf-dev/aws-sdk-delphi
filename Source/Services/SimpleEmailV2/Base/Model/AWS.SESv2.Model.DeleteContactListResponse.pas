unit AWS.SESv2.Model.DeleteContactListResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteContactListResponse = class;
  
  IDeleteContactListResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteContactListResponse;
  end;
  
  TDeleteContactListResponse = class(TAmazonWebServiceResponse, IDeleteContactListResponse)
  strict protected
    function Obj: TDeleteContactListResponse;
  end;
  
implementation

{ TDeleteContactListResponse }

function TDeleteContactListResponse.Obj: TDeleteContactListResponse;
begin
  Result := Self;
end;

end.
