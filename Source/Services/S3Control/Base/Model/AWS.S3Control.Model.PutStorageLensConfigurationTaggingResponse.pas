unit AWS.S3Control.Model.PutStorageLensConfigurationTaggingResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutStorageLensConfigurationTaggingResponse = class;
  
  IPutStorageLensConfigurationTaggingResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutStorageLensConfigurationTaggingResponse;
  end;
  
  TPutStorageLensConfigurationTaggingResponse = class(TAmazonWebServiceResponse, IPutStorageLensConfigurationTaggingResponse)
  strict protected
    function Obj: TPutStorageLensConfigurationTaggingResponse;
  end;
  
implementation

{ TPutStorageLensConfigurationTaggingResponse }

function TPutStorageLensConfigurationTaggingResponse.Obj: TPutStorageLensConfigurationTaggingResponse;
begin
  Result := Self;
end;

end.
