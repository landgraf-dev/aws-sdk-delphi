unit AWS.S3.Model.PutBucketReplicationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutBucketReplicationResponse = class;
  
  IPutBucketReplicationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutBucketReplicationResponse;
  end;
  
  TPutBucketReplicationResponse = class(TAmazonWebServiceResponse, IPutBucketReplicationResponse)
  strict protected
    function Obj: TPutBucketReplicationResponse;
  end;
  
implementation

{ TPutBucketReplicationResponse }

function TPutBucketReplicationResponse.Obj: TPutBucketReplicationResponse;
begin
  Result := Self;
end;

end.
