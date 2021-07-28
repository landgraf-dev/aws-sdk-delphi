unit AWS.SES.Model.SetIdentityHeadersInNotificationsEnabledResponse;

interface

uses
  AWS.Runtime.Model;

type
  TSetIdentityHeadersInNotificationsEnabledResponse = class;
  
  ISetIdentityHeadersInNotificationsEnabledResponse = interface
    function Obj: TSetIdentityHeadersInNotificationsEnabledResponse;
  end;
  
  TSetIdentityHeadersInNotificationsEnabledResponse = class(TAmazonWebServiceResponse, ISetIdentityHeadersInNotificationsEnabledResponse)
  strict protected
    function Obj: TSetIdentityHeadersInNotificationsEnabledResponse;
  end;
  
implementation

{ TSetIdentityHeadersInNotificationsEnabledResponse }

function TSetIdentityHeadersInNotificationsEnabledResponse.Obj: TSetIdentityHeadersInNotificationsEnabledResponse;
begin
  Result := Self;
end;

end.
