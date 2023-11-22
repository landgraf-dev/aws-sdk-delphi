unit AWS.S3Control.Model.DeleteBucketLifecycleConfigurationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteBucketLifecycleConfigurationResponse = class;
  
  IDeleteBucketLifecycleConfigurationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteBucketLifecycleConfigurationResponse;
  end;
  
  TDeleteBucketLifecycleConfigurationResponse = class(TAmazonWebServiceResponse, IDeleteBucketLifecycleConfigurationResponse)
  strict protected
    function Obj: TDeleteBucketLifecycleConfigurationResponse;
  end;
  
implementation

{ TDeleteBucketLifecycleConfigurationResponse }

function TDeleteBucketLifecycleConfigurationResponse.Obj: TDeleteBucketLifecycleConfigurationResponse;
begin
  Result := Self;
end;

end.
