unit AWS.S3Control.Model.DeleteBucketPolicyResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteBucketPolicyResponse = class;
  
  IDeleteBucketPolicyResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteBucketPolicyResponse;
  end;
  
  TDeleteBucketPolicyResponse = class(TAmazonWebServiceResponse, IDeleteBucketPolicyResponse)
  strict protected
    function Obj: TDeleteBucketPolicyResponse;
  end;
  
implementation

{ TDeleteBucketPolicyResponse }

function TDeleteBucketPolicyResponse.Obj: TDeleteBucketPolicyResponse;
begin
  Result := Self;
end;

end.
