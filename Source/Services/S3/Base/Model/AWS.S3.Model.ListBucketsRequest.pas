unit AWS.S3.Model.ListBucketsRequest;

interface

uses
  AWS.S3.Model.Request;

type
  TListBucketsRequest = class;
  
  IListBucketsRequest = interface
    function Obj: TListBucketsRequest;
  end;
  
  TListBucketsRequest = class(TAmazonS3Request, IListBucketsRequest)
  strict protected
    function Obj: TListBucketsRequest;
  end;
  
implementation

{ TListBucketsRequest }

function TListBucketsRequest.Obj: TListBucketsRequest;
begin
  Result := Self;
end;

end.
