unit AWS.S3Control.Model.PutBucketLifecycleConfigurationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutBucketLifecycleConfigurationResponse = class;
  
  IPutBucketLifecycleConfigurationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutBucketLifecycleConfigurationResponse;
  end;
  
  TPutBucketLifecycleConfigurationResponse = class(TAmazonWebServiceResponse, IPutBucketLifecycleConfigurationResponse)
  strict protected
    function Obj: TPutBucketLifecycleConfigurationResponse;
  end;
  
implementation

{ TPutBucketLifecycleConfigurationResponse }

function TPutBucketLifecycleConfigurationResponse.Obj: TPutBucketLifecycleConfigurationResponse;
begin
  Result := Self;
end;

end.
