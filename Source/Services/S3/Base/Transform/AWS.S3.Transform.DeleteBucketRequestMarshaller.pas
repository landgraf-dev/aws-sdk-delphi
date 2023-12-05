unit AWS.S3.Transform.DeleteBucketRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.DeleteBucketRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteBucketRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteBucketRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteBucketRequest>, IDeleteBucketRequestMarshaller)
  strict private
    class var FInstance: IDeleteBucketRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteBucketRequest): IRequest; overload;
    class function Instance: IDeleteBucketRequestMarshaller; static;
  end;
  
implementation

{ TDeleteBucketRequestMarshaller }

function TDeleteBucketRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteBucketRequest(AInput));
end;

function TDeleteBucketRequestMarshaller.Marshall(PublicRequest: TDeleteBucketRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'DELETE';
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TDeleteBucketRequestMarshaller.Create;
begin
  FInstance := TDeleteBucketRequestMarshaller.Create;
end;

class function TDeleteBucketRequestMarshaller.Instance: IDeleteBucketRequestMarshaller;
begin
  Result := FInstance;
end;

end.
