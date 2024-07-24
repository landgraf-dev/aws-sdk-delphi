unit AWS.SSM.Model.RemoveTagsFromResourceResponse;

interface

uses
  AWS.Runtime.Model;

type
  TRemoveTagsFromResourceResponse = class;
  
  IRemoveTagsFromResourceResponse = interface(IAmazonWebServiceResponse)
    function Obj: TRemoveTagsFromResourceResponse;
  end;
  
  TRemoveTagsFromResourceResponse = class(TAmazonWebServiceResponse, IRemoveTagsFromResourceResponse)
  strict protected
    function Obj: TRemoveTagsFromResourceResponse;
  end;
  
implementation

{ TRemoveTagsFromResourceResponse }

function TRemoveTagsFromResourceResponse.Obj: TRemoveTagsFromResourceResponse;
begin
  Result := Self;
end;

end.
