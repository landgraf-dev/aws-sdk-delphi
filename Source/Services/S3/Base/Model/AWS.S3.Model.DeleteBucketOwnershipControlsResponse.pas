unit AWS.S3.Model.DeleteBucketOwnershipControlsResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteBucketOwnershipControlsResponse = class;
  
  IDeleteBucketOwnershipControlsResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteBucketOwnershipControlsResponse;
  end;
  
  TDeleteBucketOwnershipControlsResponse = class(TAmazonWebServiceResponse, IDeleteBucketOwnershipControlsResponse)
  strict protected
    function Obj: TDeleteBucketOwnershipControlsResponse;
  end;
  
implementation

{ TDeleteBucketOwnershipControlsResponse }

function TDeleteBucketOwnershipControlsResponse.Obj: TDeleteBucketOwnershipControlsResponse;
begin
  Result := Self;
end;

end.
