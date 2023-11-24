unit AWS.S3.Model.PutLifecycleConfigurationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutLifecycleConfigurationResponse = class;
  
  IPutLifecycleConfigurationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutLifecycleConfigurationResponse;
  end;
  
  TPutLifecycleConfigurationResponse = class(TAmazonWebServiceResponse, IPutLifecycleConfigurationResponse)
  strict protected
    function Obj: TPutLifecycleConfigurationResponse;
  end;
  
implementation

{ TPutLifecycleConfigurationResponse }

function TPutLifecycleConfigurationResponse.Obj: TPutLifecycleConfigurationResponse;
begin
  Result := Self;
end;

end.
