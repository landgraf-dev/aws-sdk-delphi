unit AWS.S3.Model.PutBucketLoggingResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutBucketLoggingResponse = class;
  
  IPutBucketLoggingResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutBucketLoggingResponse;
  end;
  
  TPutBucketLoggingResponse = class(TAmazonWebServiceResponse, IPutBucketLoggingResponse)
  strict protected
    function Obj: TPutBucketLoggingResponse;
  end;
  
implementation

{ TPutBucketLoggingResponse }

function TPutBucketLoggingResponse.Obj: TPutBucketLoggingResponse;
begin
  Result := Self;
end;

end.
