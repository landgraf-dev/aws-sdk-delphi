unit AWS.S3.Model.PutCORSConfigurationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutCORSConfigurationResponse = class;
  
  IPutCORSConfigurationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutCORSConfigurationResponse;
  end;
  
  TPutCORSConfigurationResponse = class(TAmazonWebServiceResponse, IPutCORSConfigurationResponse)
  strict protected
    function Obj: TPutCORSConfigurationResponse;
  end;
  
implementation

{ TPutCORSConfigurationResponse }

function TPutCORSConfigurationResponse.Obj: TPutCORSConfigurationResponse;
begin
  Result := Self;
end;

end.
