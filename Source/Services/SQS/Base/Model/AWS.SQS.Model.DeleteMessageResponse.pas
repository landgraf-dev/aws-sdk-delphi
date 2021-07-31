unit AWS.SQS.Model.DeleteMessageResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteMessageResponse = class;
  
  IDeleteMessageResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteMessageResponse;
  end;
  
  TDeleteMessageResponse = class(TAmazonWebServiceResponse, IDeleteMessageResponse)
  strict protected
    function Obj: TDeleteMessageResponse;
  end;
  
implementation

{ TDeleteMessageResponse }

function TDeleteMessageResponse.Obj: TDeleteMessageResponse;
begin
  Result := Self;
end;

end.
