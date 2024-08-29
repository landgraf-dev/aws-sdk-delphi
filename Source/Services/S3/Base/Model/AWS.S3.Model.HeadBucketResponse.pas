unit AWS.S3.Model.HeadBucketResponse;

interface

uses
  AWS.Runtime.Model;

type
  THeadBucketResponse = class;
  
  IHeadBucketResponse = interface(IAmazonWebServiceResponse)
    function Obj: THeadBucketResponse;
  end;
  
  THeadBucketResponse = class(TAmazonWebServiceResponse, IHeadBucketResponse)
  strict protected
    function Obj: THeadBucketResponse;
  end;
  
implementation

{ THeadBucketResponse }

function THeadBucketResponse.Obj: THeadBucketResponse;
begin
  Result := Self;
end;

end.
