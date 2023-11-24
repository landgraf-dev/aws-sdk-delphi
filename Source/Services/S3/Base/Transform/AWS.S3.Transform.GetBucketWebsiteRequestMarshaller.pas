unit AWS.S3.Transform.GetBucketWebsiteRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetBucketWebsiteRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetBucketWebsiteRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBucketWebsiteRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBucketWebsiteRequest>, IGetBucketWebsiteRequestMarshaller)
  strict private
    class var FInstance: IGetBucketWebsiteRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBucketWebsiteRequest): IRequest; overload;
    class function Instance: IGetBucketWebsiteRequestMarshaller; static;
  end;
  
implementation

{ TGetBucketWebsiteRequestMarshaller }

function TGetBucketWebsiteRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBucketWebsiteRequest(AInput));
end;

function TGetBucketWebsiteRequestMarshaller.Marshall(PublicRequest: TGetBucketWebsiteRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('website');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TGetBucketWebsiteRequestMarshaller.Create;
begin
  FInstance := TGetBucketWebsiteRequestMarshaller.Create;
end;

class function TGetBucketWebsiteRequestMarshaller.Instance: IGetBucketWebsiteRequestMarshaller;
begin
  Result := FInstance;
end;

end.
