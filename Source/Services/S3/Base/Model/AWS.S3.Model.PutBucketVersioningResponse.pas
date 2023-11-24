unit AWS.S3.Model.PutBucketVersioningResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutBucketVersioningResponse = class;
  
  IPutBucketVersioningResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutBucketVersioningResponse;
  end;
  
  TPutBucketVersioningResponse = class(TAmazonWebServiceResponse, IPutBucketVersioningResponse)
  strict protected
    function Obj: TPutBucketVersioningResponse;
  end;
  
implementation

{ TPutBucketVersioningResponse }

function TPutBucketVersioningResponse.Obj: TPutBucketVersioningResponse;
begin
  Result := Self;
end;

end.
