unit AWS.S3.Transform.GetBucketOwnershipControlsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetBucketOwnershipControlsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetBucketOwnershipControlsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBucketOwnershipControlsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBucketOwnershipControlsRequest>, IGetBucketOwnershipControlsRequestMarshaller)
  strict private
    class var FInstance: IGetBucketOwnershipControlsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBucketOwnershipControlsRequest): IRequest; overload;
    class function Instance: IGetBucketOwnershipControlsRequestMarshaller; static;
  end;
  
implementation

{ TGetBucketOwnershipControlsRequestMarshaller }

function TGetBucketOwnershipControlsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBucketOwnershipControlsRequest(AInput));
end;

function TGetBucketOwnershipControlsRequestMarshaller.Marshall(PublicRequest: TGetBucketOwnershipControlsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('ownershipControls');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TGetBucketOwnershipControlsRequestMarshaller.Create;
begin
  FInstance := TGetBucketOwnershipControlsRequestMarshaller.Create;
end;

class function TGetBucketOwnershipControlsRequestMarshaller.Instance: IGetBucketOwnershipControlsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
