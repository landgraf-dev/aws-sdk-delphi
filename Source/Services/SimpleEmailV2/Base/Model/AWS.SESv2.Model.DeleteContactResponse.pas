unit AWS.SESv2.Model.DeleteContactResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteContactResponse = class;
  
  IDeleteContactResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteContactResponse;
  end;
  
  TDeleteContactResponse = class(TAmazonWebServiceResponse, IDeleteContactResponse)
  strict protected
    function Obj: TDeleteContactResponse;
  end;
  
implementation

{ TDeleteContactResponse }

function TDeleteContactResponse.Obj: TDeleteContactResponse;
begin
  Result := Self;
end;

end.
