unit AWS.SES.Model.SetIdentityFeedbackForwardingEnabledResponse;

interface

uses
  AWS.Runtime.Model;

type
  TSetIdentityFeedbackForwardingEnabledResponse = class;
  
  ISetIdentityFeedbackForwardingEnabledResponse = interface(IAmazonWebServiceResponse)
    function Obj: TSetIdentityFeedbackForwardingEnabledResponse;
  end;
  
  TSetIdentityFeedbackForwardingEnabledResponse = class(TAmazonWebServiceResponse, ISetIdentityFeedbackForwardingEnabledResponse)
  strict protected
    function Obj: TSetIdentityFeedbackForwardingEnabledResponse;
  end;
  
implementation

{ TSetIdentityFeedbackForwardingEnabledResponse }

function TSetIdentityFeedbackForwardingEnabledResponse.Obj: TSetIdentityFeedbackForwardingEnabledResponse;
begin
  Result := Self;
end;

end.
