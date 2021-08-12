unit AWS.SNS.Model.SetTopicAttributesResponse;

interface

uses
  AWS.Runtime.Model;

type
  TSetTopicAttributesResponse = class;
  
  ISetTopicAttributesResponse = interface(IAmazonWebServiceResponse)
    function Obj: TSetTopicAttributesResponse;
  end;
  
  TSetTopicAttributesResponse = class(TAmazonWebServiceResponse, ISetTopicAttributesResponse)
  strict protected
    function Obj: TSetTopicAttributesResponse;
  end;
  
implementation

{ TSetTopicAttributesResponse }

function TSetTopicAttributesResponse.Obj: TSetTopicAttributesResponse;
begin
  Result := Self;
end;

end.
