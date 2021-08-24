unit AWS.SESv2.Model.UpdateContactListResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUpdateContactListResponse = class;
  
  IUpdateContactListResponse = interface(IAmazonWebServiceResponse)
    function Obj: TUpdateContactListResponse;
  end;
  
  TUpdateContactListResponse = class(TAmazonWebServiceResponse, IUpdateContactListResponse)
  strict protected
    function Obj: TUpdateContactListResponse;
  end;
  
implementation

{ TUpdateContactListResponse }

function TUpdateContactListResponse.Obj: TUpdateContactListResponse;
begin
  Result := Self;
end;

end.
