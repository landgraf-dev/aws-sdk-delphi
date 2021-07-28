unit AWS.SES.Model.GetAccountSendingEnabledRequest;

interface

uses
  AWS.SES.Model.Request;

type
  TGetAccountSendingEnabledRequest = class;
  
  IGetAccountSendingEnabledRequest = interface
    function Obj: TGetAccountSendingEnabledRequest;
  end;
  
  TGetAccountSendingEnabledRequest = class(TAmazonSimpleEmailServiceRequest, IGetAccountSendingEnabledRequest)
  strict protected
    function Obj: TGetAccountSendingEnabledRequest;
  end;
  
implementation

{ TGetAccountSendingEnabledRequest }

function TGetAccountSendingEnabledRequest.Obj: TGetAccountSendingEnabledRequest;
begin
  Result := Self;
end;

end.
