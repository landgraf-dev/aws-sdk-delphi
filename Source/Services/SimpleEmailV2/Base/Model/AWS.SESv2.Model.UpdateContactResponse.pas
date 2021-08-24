unit AWS.SESv2.Model.UpdateContactResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUpdateContactResponse = class;
  
  IUpdateContactResponse = interface(IAmazonWebServiceResponse)
    function Obj: TUpdateContactResponse;
  end;
  
  TUpdateContactResponse = class(TAmazonWebServiceResponse, IUpdateContactResponse)
  strict protected
    function Obj: TUpdateContactResponse;
  end;
  
implementation

{ TUpdateContactResponse }

function TUpdateContactResponse.Obj: TUpdateContactResponse;
begin
  Result := Self;
end;

end.
