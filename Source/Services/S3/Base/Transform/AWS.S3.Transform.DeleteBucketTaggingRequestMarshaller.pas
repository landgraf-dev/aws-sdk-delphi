unit AWS.S3.Transform.DeleteBucketTaggingRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.DeleteBucketTaggingRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteBucketTaggingRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteBucketTaggingRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteBucketTaggingRequest>, IDeleteBucketTaggingRequestMarshaller)
  strict private
    class var FInstance: IDeleteBucketTaggingRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteBucketTaggingRequest): IRequest; overload;
    class function Instance: IDeleteBucketTaggingRequestMarshaller; static;
  end;
  
implementation

{ TDeleteBucketTaggingRequestMarshaller }

function TDeleteBucketTaggingRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteBucketTaggingRequest(AInput));
end;

function TDeleteBucketTaggingRequestMarshaller.Marshall(PublicRequest: TDeleteBucketTaggingRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'DELETE';
  Request.AddSubResource('tagging');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TDeleteBucketTaggingRequestMarshaller.Create;
begin
  FInstance := TDeleteBucketTaggingRequestMarshaller.Create;
end;

class function TDeleteBucketTaggingRequestMarshaller.Instance: IDeleteBucketTaggingRequestMarshaller;
begin
  Result := FInstance;
end;

end.
