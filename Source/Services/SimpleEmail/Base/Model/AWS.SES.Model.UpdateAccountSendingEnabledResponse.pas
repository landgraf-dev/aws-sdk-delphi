unit AWS.SES.Model.UpdateAccountSendingEnabledResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUpdateAccountSendingEnabledResponse = class;
  
  IUpdateAccountSendingEnabledResponse = interface
    function Obj: TUpdateAccountSendingEnabledResponse;
  end;
  
  TUpdateAccountSendingEnabledResponse = class(TAmazonWebServiceResponse, IUpdateAccountSendingEnabledResponse)
  strict protected
    function Obj: TUpdateAccountSendingEnabledResponse;
  end;
  
implementation

{ TUpdateAccountSendingEnabledResponse }

function TUpdateAccountSendingEnabledResponse.Obj: TUpdateAccountSendingEnabledResponse;
begin
  Result := Self;
end;

end.
