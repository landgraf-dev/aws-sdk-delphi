unit AWS.S3.Model.PutBucketEncryptionResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutBucketEncryptionResponse = class;
  
  IPutBucketEncryptionResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutBucketEncryptionResponse;
  end;
  
  TPutBucketEncryptionResponse = class(TAmazonWebServiceResponse, IPutBucketEncryptionResponse)
  strict protected
    function Obj: TPutBucketEncryptionResponse;
  end;
  
implementation

{ TPutBucketEncryptionResponse }

function TPutBucketEncryptionResponse.Obj: TPutBucketEncryptionResponse;
begin
  Result := Self;
end;

end.
