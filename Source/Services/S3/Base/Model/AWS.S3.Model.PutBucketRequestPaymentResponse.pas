unit AWS.S3.Model.PutBucketRequestPaymentResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutBucketRequestPaymentResponse = class;
  
  IPutBucketRequestPaymentResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutBucketRequestPaymentResponse;
  end;
  
  TPutBucketRequestPaymentResponse = class(TAmazonWebServiceResponse, IPutBucketRequestPaymentResponse)
  strict protected
    function Obj: TPutBucketRequestPaymentResponse;
  end;
  
implementation

{ TPutBucketRequestPaymentResponse }

function TPutBucketRequestPaymentResponse.Obj: TPutBucketRequestPaymentResponse;
begin
  Result := Self;
end;

end.
