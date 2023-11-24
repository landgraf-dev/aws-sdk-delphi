unit AWS.S3.Transform.GetBucketLoggingRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetBucketLoggingRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetBucketLoggingRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBucketLoggingRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBucketLoggingRequest>, IGetBucketLoggingRequestMarshaller)
  strict private
    class var FInstance: IGetBucketLoggingRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBucketLoggingRequest): IRequest; overload;
    class function Instance: IGetBucketLoggingRequestMarshaller; static;
  end;
  
implementation

{ TGetBucketLoggingRequestMarshaller }

function TGetBucketLoggingRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBucketLoggingRequest(AInput));
end;

function TGetBucketLoggingRequestMarshaller.Marshall(PublicRequest: TGetBucketLoggingRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('logging');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TGetBucketLoggingRequestMarshaller.Create;
begin
  FInstance := TGetBucketLoggingRequestMarshaller.Create;
end;

class function TGetBucketLoggingRequestMarshaller.Instance: IGetBucketLoggingRequestMarshaller;
begin
  Result := FInstance;
end;

end.
