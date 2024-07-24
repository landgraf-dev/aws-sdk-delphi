unit AWS.SSM.Model.UpdateDocumentMetadataResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUpdateDocumentMetadataResponse = class;
  
  IUpdateDocumentMetadataResponse = interface(IAmazonWebServiceResponse)
    function Obj: TUpdateDocumentMetadataResponse;
  end;
  
  TUpdateDocumentMetadataResponse = class(TAmazonWebServiceResponse, IUpdateDocumentMetadataResponse)
  strict protected
    function Obj: TUpdateDocumentMetadataResponse;
  end;
  
implementation

{ TUpdateDocumentMetadataResponse }

function TUpdateDocumentMetadataResponse.Obj: TUpdateDocumentMetadataResponse;
begin
  Result := Self;
end;

end.
