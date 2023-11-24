unit AWS.S3.Transform.DeleteBucketOwnershipControlsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.DeleteBucketOwnershipControlsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteBucketOwnershipControlsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteBucketOwnershipControlsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteBucketOwnershipControlsRequest>, IDeleteBucketOwnershipControlsRequestMarshaller)
  strict private
    class var FInstance: IDeleteBucketOwnershipControlsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteBucketOwnershipControlsRequest): IRequest; overload;
    class function Instance: IDeleteBucketOwnershipControlsRequestMarshaller; static;
  end;
  
implementation

{ TDeleteBucketOwnershipControlsRequestMarshaller }

function TDeleteBucketOwnershipControlsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteBucketOwnershipControlsRequest(AInput));
end;

function TDeleteBucketOwnershipControlsRequestMarshaller.Marshall(PublicRequest: TDeleteBucketOwnershipControlsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'DELETE';
  Request.AddSubResource('ownershipControls');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TDeleteBucketOwnershipControlsRequestMarshaller.Create;
begin
  FInstance := TDeleteBucketOwnershipControlsRequestMarshaller.Create;
end;

class function TDeleteBucketOwnershipControlsRequestMarshaller.Instance: IDeleteBucketOwnershipControlsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
