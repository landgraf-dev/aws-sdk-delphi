unit AWS.SES.Model.ListReceiptFiltersRequest;

interface

uses
  AWS.SES.Model.Request;

type
  TListReceiptFiltersRequest = class;
  
  IListReceiptFiltersRequest = interface
    function Obj: TListReceiptFiltersRequest;
  end;
  
  TListReceiptFiltersRequest = class(TAmazonSimpleEmailServiceRequest, IListReceiptFiltersRequest)
  strict protected
    function Obj: TListReceiptFiltersRequest;
  end;
  
implementation

{ TListReceiptFiltersRequest }

function TListReceiptFiltersRequest.Obj: TListReceiptFiltersRequest;
begin
  Result := Self;
end;

end.
