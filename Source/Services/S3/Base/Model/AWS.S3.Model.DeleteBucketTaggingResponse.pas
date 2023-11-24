unit AWS.S3.Model.DeleteBucketTaggingResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteBucketTaggingResponse = class;
  
  IDeleteBucketTaggingResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteBucketTaggingResponse;
  end;
  
  TDeleteBucketTaggingResponse = class(TAmazonWebServiceResponse, IDeleteBucketTaggingResponse)
  strict protected
    function Obj: TDeleteBucketTaggingResponse;
  end;
  
implementation

{ TDeleteBucketTaggingResponse }

function TDeleteBucketTaggingResponse.Obj: TDeleteBucketTaggingResponse;
begin
  Result := Self;
end;

end.
