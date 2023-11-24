unit AWS.S3.Model.PutBucketAccelerateConfigurationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutBucketAccelerateConfigurationResponse = class;
  
  IPutBucketAccelerateConfigurationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutBucketAccelerateConfigurationResponse;
  end;
  
  TPutBucketAccelerateConfigurationResponse = class(TAmazonWebServiceResponse, IPutBucketAccelerateConfigurationResponse)
  strict protected
    function Obj: TPutBucketAccelerateConfigurationResponse;
  end;
  
implementation

{ TPutBucketAccelerateConfigurationResponse }

function TPutBucketAccelerateConfigurationResponse.Obj: TPutBucketAccelerateConfigurationResponse;
begin
  Result := Self;
end;

end.
