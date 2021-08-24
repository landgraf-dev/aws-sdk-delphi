unit AWS.SESv2.Model.GetAccountRequest;

interface

uses
  AWS.SESv2.Model.Request;

type
  TGetAccountRequest = class;
  
  IGetAccountRequest = interface
    function Obj: TGetAccountRequest;
  end;
  
  TGetAccountRequest = class(TAmazonSimpleEmailServiceV2Request, IGetAccountRequest)
  strict protected
    function Obj: TGetAccountRequest;
  end;
  
implementation

{ TGetAccountRequest }

function TGetAccountRequest.Obj: TGetAccountRequest;
begin
  Result := Self;
end;

end.
