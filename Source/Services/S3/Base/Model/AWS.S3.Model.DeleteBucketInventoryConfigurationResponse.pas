unit AWS.S3.Model.DeleteBucketInventoryConfigurationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteBucketInventoryConfigurationResponse = class;
  
  IDeleteBucketInventoryConfigurationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteBucketInventoryConfigurationResponse;
  end;
  
  TDeleteBucketInventoryConfigurationResponse = class(TAmazonWebServiceResponse, IDeleteBucketInventoryConfigurationResponse)
  strict protected
    function Obj: TDeleteBucketInventoryConfigurationResponse;
  end;
  
implementation

{ TDeleteBucketInventoryConfigurationResponse }

function TDeleteBucketInventoryConfigurationResponse.Obj: TDeleteBucketInventoryConfigurationResponse;
begin
  Result := Self;
end;

end.
