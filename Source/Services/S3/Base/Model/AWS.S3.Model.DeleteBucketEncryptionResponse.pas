unit AWS.S3.Model.DeleteBucketEncryptionResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteBucketEncryptionResponse = class;
  
  IDeleteBucketEncryptionResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteBucketEncryptionResponse;
  end;
  
  TDeleteBucketEncryptionResponse = class(TAmazonWebServiceResponse, IDeleteBucketEncryptionResponse)
  strict protected
    function Obj: TDeleteBucketEncryptionResponse;
  end;
  
implementation

{ TDeleteBucketEncryptionResponse }

function TDeleteBucketEncryptionResponse.Obj: TDeleteBucketEncryptionResponse;
begin
  Result := Self;
end;

end.
