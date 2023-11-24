unit AWS.S3.Transform.DeleteBucketWebsiteRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.DeleteBucketWebsiteRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteBucketWebsiteRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteBucketWebsiteRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteBucketWebsiteRequest>, IDeleteBucketWebsiteRequestMarshaller)
  strict private
    class var FInstance: IDeleteBucketWebsiteRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteBucketWebsiteRequest): IRequest; overload;
    class function Instance: IDeleteBucketWebsiteRequestMarshaller; static;
  end;
  
implementation

{ TDeleteBucketWebsiteRequestMarshaller }

function TDeleteBucketWebsiteRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteBucketWebsiteRequest(AInput));
end;

function TDeleteBucketWebsiteRequestMarshaller.Marshall(PublicRequest: TDeleteBucketWebsiteRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'DELETE';
  Request.AddSubResource('website');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TDeleteBucketWebsiteRequestMarshaller.Create;
begin
  FInstance := TDeleteBucketWebsiteRequestMarshaller.Create;
end;

class function TDeleteBucketWebsiteRequestMarshaller.Instance: IDeleteBucketWebsiteRequestMarshaller;
begin
  Result := FInstance;
end;

end.
