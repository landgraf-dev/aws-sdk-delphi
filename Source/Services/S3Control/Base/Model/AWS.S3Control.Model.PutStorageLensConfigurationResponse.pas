unit AWS.S3Control.Model.PutStorageLensConfigurationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutStorageLensConfigurationResponse = class;
  
  IPutStorageLensConfigurationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutStorageLensConfigurationResponse;
  end;
  
  TPutStorageLensConfigurationResponse = class(TAmazonWebServiceResponse, IPutStorageLensConfigurationResponse)
  strict protected
    function Obj: TPutStorageLensConfigurationResponse;
  end;
  
implementation

{ TPutStorageLensConfigurationResponse }

function TPutStorageLensConfigurationResponse.Obj: TPutStorageLensConfigurationResponse;
begin
  Result := Self;
end;

end.
