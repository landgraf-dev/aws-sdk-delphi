unit AWS.SESv2.Model.PutConfigurationSetSuppressionOptionsResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutConfigurationSetSuppressionOptionsResponse = class;
  
  IPutConfigurationSetSuppressionOptionsResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutConfigurationSetSuppressionOptionsResponse;
  end;
  
  TPutConfigurationSetSuppressionOptionsResponse = class(TAmazonWebServiceResponse, IPutConfigurationSetSuppressionOptionsResponse)
  strict protected
    function Obj: TPutConfigurationSetSuppressionOptionsResponse;
  end;
  
implementation

{ TPutConfigurationSetSuppressionOptionsResponse }

function TPutConfigurationSetSuppressionOptionsResponse.Obj: TPutConfigurationSetSuppressionOptionsResponse;
begin
  Result := Self;
end;

end.
