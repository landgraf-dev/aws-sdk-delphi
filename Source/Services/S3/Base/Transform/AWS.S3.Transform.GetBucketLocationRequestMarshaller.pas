unit AWS.S3.Transform.GetBucketLocationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetBucketLocationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetBucketLocationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBucketLocationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBucketLocationRequest>, IGetBucketLocationRequestMarshaller)
  strict private
    class var FInstance: IGetBucketLocationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBucketLocationRequest): IRequest; overload;
    class function Instance: IGetBucketLocationRequestMarshaller; static;
  end;
  
implementation

{ TGetBucketLocationRequestMarshaller }

function TGetBucketLocationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBucketLocationRequest(AInput));
end;

function TGetBucketLocationRequestMarshaller.Marshall(PublicRequest: TGetBucketLocationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('location');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TGetBucketLocationRequestMarshaller.Create;
begin
  FInstance := TGetBucketLocationRequestMarshaller.Create;
end;

class function TGetBucketLocationRequestMarshaller.Instance: IGetBucketLocationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
