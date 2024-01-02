unit AWS.S3.Model.PutBucketOwnershipControlsResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutBucketOwnershipControlsResponse = class;
  
  IPutBucketOwnershipControlsResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutBucketOwnershipControlsResponse;
  end;
  
  TPutBucketOwnershipControlsResponse = class(TAmazonWebServiceResponse, IPutBucketOwnershipControlsResponse)
  strict protected
    function Obj: TPutBucketOwnershipControlsResponse;
  end;
  
implementation

{ TPutBucketOwnershipControlsResponse }

function TPutBucketOwnershipControlsResponse.Obj: TPutBucketOwnershipControlsResponse;
begin
  Result := Self;
end;

end.
