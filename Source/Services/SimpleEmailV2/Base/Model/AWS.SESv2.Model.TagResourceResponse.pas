unit AWS.SESv2.Model.TagResourceResponse;

interface

uses
  AWS.Runtime.Model;

type
  TTagResourceResponse = class;
  
  ITagResourceResponse = interface(IAmazonWebServiceResponse)
    function Obj: TTagResourceResponse;
  end;
  
  TTagResourceResponse = class(TAmazonWebServiceResponse, ITagResourceResponse)
  strict protected
    function Obj: TTagResourceResponse;
  end;
  
implementation

{ TTagResourceResponse }

function TTagResourceResponse.Obj: TTagResourceResponse;
begin
  Result := Self;
end;

end.
