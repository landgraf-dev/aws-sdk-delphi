unit AWS.S3.Model.PutBucketWebsiteResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutBucketWebsiteResponse = class;
  
  IPutBucketWebsiteResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutBucketWebsiteResponse;
  end;
  
  TPutBucketWebsiteResponse = class(TAmazonWebServiceResponse, IPutBucketWebsiteResponse)
  strict protected
    function Obj: TPutBucketWebsiteResponse;
  end;
  
implementation

{ TPutBucketWebsiteResponse }

function TPutBucketWebsiteResponse.Obj: TPutBucketWebsiteResponse;
begin
  Result := Self;
end;

end.
