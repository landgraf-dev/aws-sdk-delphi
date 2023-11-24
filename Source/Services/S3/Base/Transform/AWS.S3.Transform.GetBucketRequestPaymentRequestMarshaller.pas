unit AWS.S3.Transform.GetBucketRequestPaymentRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetBucketRequestPaymentRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetBucketRequestPaymentRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBucketRequestPaymentRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBucketRequestPaymentRequest>, IGetBucketRequestPaymentRequestMarshaller)
  strict private
    class var FInstance: IGetBucketRequestPaymentRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBucketRequestPaymentRequest): IRequest; overload;
    class function Instance: IGetBucketRequestPaymentRequestMarshaller; static;
  end;
  
implementation

{ TGetBucketRequestPaymentRequestMarshaller }

function TGetBucketRequestPaymentRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBucketRequestPaymentRequest(AInput));
end;

function TGetBucketRequestPaymentRequestMarshaller.Marshall(PublicRequest: TGetBucketRequestPaymentRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('requestPayment');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TGetBucketRequestPaymentRequestMarshaller.Create;
begin
  FInstance := TGetBucketRequestPaymentRequestMarshaller.Create;
end;

class function TGetBucketRequestPaymentRequestMarshaller.Instance: IGetBucketRequestPaymentRequestMarshaller;
begin
  Result := FInstance;
end;

end.
