unit AWS.S3.Model.DeleteBucketWebsiteResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteBucketWebsiteResponse = class;
  
  IDeleteBucketWebsiteResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteBucketWebsiteResponse;
  end;
  
  TDeleteBucketWebsiteResponse = class(TAmazonWebServiceResponse, IDeleteBucketWebsiteResponse)
  strict protected
    function Obj: TDeleteBucketWebsiteResponse;
  end;
  
implementation

{ TDeleteBucketWebsiteResponse }

function TDeleteBucketWebsiteResponse.Obj: TDeleteBucketWebsiteResponse;
begin
  Result := Self;
end;

end.
