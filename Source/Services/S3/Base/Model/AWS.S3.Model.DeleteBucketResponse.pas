unit AWS.S3.Model.DeleteBucketResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteBucketResponse = class;
  
  IDeleteBucketResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteBucketResponse;
  end;
  
  TDeleteBucketResponse = class(TAmazonWebServiceResponse, IDeleteBucketResponse)
  strict protected
    function Obj: TDeleteBucketResponse;
  end;
  
implementation

{ TDeleteBucketResponse }

function TDeleteBucketResponse.Obj: TDeleteBucketResponse;
begin
  Result := Self;
end;

end.
