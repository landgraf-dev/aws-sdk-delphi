unit AWS.S3.Model.DeleteBucketReplicationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteBucketReplicationResponse = class;
  
  IDeleteBucketReplicationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteBucketReplicationResponse;
  end;
  
  TDeleteBucketReplicationResponse = class(TAmazonWebServiceResponse, IDeleteBucketReplicationResponse)
  strict protected
    function Obj: TDeleteBucketReplicationResponse;
  end;
  
implementation

{ TDeleteBucketReplicationResponse }

function TDeleteBucketReplicationResponse.Obj: TDeleteBucketReplicationResponse;
begin
  Result := Self;
end;

end.
