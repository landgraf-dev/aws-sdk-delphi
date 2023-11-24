unit AWS.S3.Model.PutBucketPolicyResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutBucketPolicyResponse = class;
  
  IPutBucketPolicyResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutBucketPolicyResponse;
  end;
  
  TPutBucketPolicyResponse = class(TAmazonWebServiceResponse, IPutBucketPolicyResponse)
  strict protected
    function Obj: TPutBucketPolicyResponse;
  end;
  
implementation

{ TPutBucketPolicyResponse }

function TPutBucketPolicyResponse.Obj: TPutBucketPolicyResponse;
begin
  Result := Self;
end;

end.
