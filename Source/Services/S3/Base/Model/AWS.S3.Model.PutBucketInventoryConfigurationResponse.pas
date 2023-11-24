unit AWS.S3.Model.PutBucketInventoryConfigurationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutBucketInventoryConfigurationResponse = class;
  
  IPutBucketInventoryConfigurationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutBucketInventoryConfigurationResponse;
  end;
  
  TPutBucketInventoryConfigurationResponse = class(TAmazonWebServiceResponse, IPutBucketInventoryConfigurationResponse)
  strict protected
    function Obj: TPutBucketInventoryConfigurationResponse;
  end;
  
implementation

{ TPutBucketInventoryConfigurationResponse }

function TPutBucketInventoryConfigurationResponse.Obj: TPutBucketInventoryConfigurationResponse;
begin
  Result := Self;
end;

end.
