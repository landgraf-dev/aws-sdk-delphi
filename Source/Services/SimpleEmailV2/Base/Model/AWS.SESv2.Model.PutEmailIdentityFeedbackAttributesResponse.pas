unit AWS.SESv2.Model.PutEmailIdentityFeedbackAttributesResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutEmailIdentityFeedbackAttributesResponse = class;
  
  IPutEmailIdentityFeedbackAttributesResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutEmailIdentityFeedbackAttributesResponse;
  end;
  
  TPutEmailIdentityFeedbackAttributesResponse = class(TAmazonWebServiceResponse, IPutEmailIdentityFeedbackAttributesResponse)
  strict protected
    function Obj: TPutEmailIdentityFeedbackAttributesResponse;
  end;
  
implementation

{ TPutEmailIdentityFeedbackAttributesResponse }

function TPutEmailIdentityFeedbackAttributesResponse.Obj: TPutEmailIdentityFeedbackAttributesResponse;
begin
  Result := Self;
end;

end.
