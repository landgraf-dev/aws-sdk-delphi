unit AWS.Rekognition.Model.UntagResourceResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUntagResourceResponse = class;
  
  IUntagResourceResponse = interface(IAmazonWebServiceResponse)
    function Obj: TUntagResourceResponse;
  end;
  
  TUntagResourceResponse = class(TAmazonWebServiceResponse, IUntagResourceResponse)
  strict protected
    function Obj: TUntagResourceResponse;
  end;
  
implementation

{ TUntagResourceResponse }

function TUntagResourceResponse.Obj: TUntagResourceResponse;
begin
  Result := Self;
end;

end.
