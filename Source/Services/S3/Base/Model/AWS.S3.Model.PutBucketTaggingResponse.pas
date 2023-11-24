unit AWS.S3.Model.PutBucketTaggingResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutBucketTaggingResponse = class;
  
  IPutBucketTaggingResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutBucketTaggingResponse;
  end;
  
  TPutBucketTaggingResponse = class(TAmazonWebServiceResponse, IPutBucketTaggingResponse)
  strict protected
    function Obj: TPutBucketTaggingResponse;
  end;
  
implementation

{ TPutBucketTaggingResponse }

function TPutBucketTaggingResponse.Obj: TPutBucketTaggingResponse;
begin
  Result := Self;
end;

end.
