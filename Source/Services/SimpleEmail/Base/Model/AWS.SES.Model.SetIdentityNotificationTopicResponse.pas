unit AWS.SES.Model.SetIdentityNotificationTopicResponse;

interface

uses
  AWS.Runtime.Model;

type
  TSetIdentityNotificationTopicResponse = class;
  
  ISetIdentityNotificationTopicResponse = interface(IAmazonWebServiceResponse)
    function Obj: TSetIdentityNotificationTopicResponse;
  end;
  
  TSetIdentityNotificationTopicResponse = class(TAmazonWebServiceResponse, ISetIdentityNotificationTopicResponse)
  strict protected
    function Obj: TSetIdentityNotificationTopicResponse;
  end;
  
implementation

{ TSetIdentityNotificationTopicResponse }

function TSetIdentityNotificationTopicResponse.Obj: TSetIdentityNotificationTopicResponse;
begin
  Result := Self;
end;

end.
