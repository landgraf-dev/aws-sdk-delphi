unit AWS.SSM.Model.DeleteDocumentResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteDocumentResponse = class;
  
  IDeleteDocumentResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteDocumentResponse;
  end;
  
  TDeleteDocumentResponse = class(TAmazonWebServiceResponse, IDeleteDocumentResponse)
  strict protected
    function Obj: TDeleteDocumentResponse;
  end;
  
implementation

{ TDeleteDocumentResponse }

function TDeleteDocumentResponse.Obj: TDeleteDocumentResponse;
begin
  Result := Self;
end;

end.
