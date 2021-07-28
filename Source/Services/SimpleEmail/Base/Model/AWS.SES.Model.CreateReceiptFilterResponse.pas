unit AWS.SES.Model.CreateReceiptFilterResponse;

interface

uses
  AWS.Runtime.Model;

type
  TCreateReceiptFilterResponse = class;
  
  ICreateReceiptFilterResponse = interface
    function Obj: TCreateReceiptFilterResponse;
  end;
  
  TCreateReceiptFilterResponse = class(TAmazonWebServiceResponse, ICreateReceiptFilterResponse)
  strict protected
    function Obj: TCreateReceiptFilterResponse;
  end;
  
implementation

{ TCreateReceiptFilterResponse }

function TCreateReceiptFilterResponse.Obj: TCreateReceiptFilterResponse;
begin
  Result := Self;
end;

end.
