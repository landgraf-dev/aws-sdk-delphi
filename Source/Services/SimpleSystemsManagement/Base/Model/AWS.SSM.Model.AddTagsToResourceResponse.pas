unit AWS.SSM.Model.AddTagsToResourceResponse;

interface

uses
  AWS.Runtime.Model;

type
  TAddTagsToResourceResponse = class;
  
  IAddTagsToResourceResponse = interface(IAmazonWebServiceResponse)
    function Obj: TAddTagsToResourceResponse;
  end;
  
  TAddTagsToResourceResponse = class(TAmazonWebServiceResponse, IAddTagsToResourceResponse)
  strict protected
    function Obj: TAddTagsToResourceResponse;
  end;
  
implementation

{ TAddTagsToResourceResponse }

function TAddTagsToResourceResponse.Obj: TAddTagsToResourceResponse;
begin
  Result := Self;
end;

end.
