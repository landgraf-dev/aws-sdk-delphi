unit AWS.SES.Model.DeleteReceiptFilterResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteReceiptFilterResponse = class;
  
  IDeleteReceiptFilterResponse = interface
    function Obj: TDeleteReceiptFilterResponse;
  end;
  
  TDeleteReceiptFilterResponse = class(TAmazonWebServiceResponse, IDeleteReceiptFilterResponse)
  strict protected
    function Obj: TDeleteReceiptFilterResponse;
  end;
  
implementation

{ TDeleteReceiptFilterResponse }

function TDeleteReceiptFilterResponse.Obj: TDeleteReceiptFilterResponse;
begin
  Result := Self;
end;

end.
