unit AWS.SES.Model.ListVerifiedEmailAddressesRequest;

interface

uses
  AWS.SES.Model.Request;

type
  TListVerifiedEmailAddressesRequest = class;
  
  IListVerifiedEmailAddressesRequest = interface
    function Obj: TListVerifiedEmailAddressesRequest;
  end;
  
  TListVerifiedEmailAddressesRequest = class(TAmazonSimpleEmailServiceRequest, IListVerifiedEmailAddressesRequest)
  strict protected
    function Obj: TListVerifiedEmailAddressesRequest;
  end;
  
implementation

{ TListVerifiedEmailAddressesRequest }

function TListVerifiedEmailAddressesRequest.Obj: TListVerifiedEmailAddressesRequest;
begin
  Result := Self;
end;

end.
