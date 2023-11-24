unit AWS.S3.Transform.GetBucketTaggingRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetBucketTaggingRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetBucketTaggingRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBucketTaggingRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBucketTaggingRequest>, IGetBucketTaggingRequestMarshaller)
  strict private
    class var FInstance: IGetBucketTaggingRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBucketTaggingRequest): IRequest; overload;
    class function Instance: IGetBucketTaggingRequestMarshaller; static;
  end;
  
implementation

{ TGetBucketTaggingRequestMarshaller }

function TGetBucketTaggingRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBucketTaggingRequest(AInput));
end;

function TGetBucketTaggingRequestMarshaller.Marshall(PublicRequest: TGetBucketTaggingRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('tagging');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TGetBucketTaggingRequestMarshaller.Create;
begin
  FInstance := TGetBucketTaggingRequestMarshaller.Create;
end;

class function TGetBucketTaggingRequestMarshaller.Instance: IGetBucketTaggingRequestMarshaller;
begin
  Result := FInstance;
end;

end.
