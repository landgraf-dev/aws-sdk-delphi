unit AWS.SNS.Model.DeleteTopicResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteTopicResponse = class;
  
  IDeleteTopicResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteTopicResponse;
  end;
  
  TDeleteTopicResponse = class(TAmazonWebServiceResponse, IDeleteTopicResponse)
  strict protected
    function Obj: TDeleteTopicResponse;
  end;
  
implementation

{ TDeleteTopicResponse }

function TDeleteTopicResponse.Obj: TDeleteTopicResponse;
begin
  Result := Self;
end;

end.
