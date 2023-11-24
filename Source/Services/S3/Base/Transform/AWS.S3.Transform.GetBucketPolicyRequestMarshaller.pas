unit AWS.S3.Transform.GetBucketPolicyRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetBucketPolicyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetBucketPolicyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBucketPolicyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBucketPolicyRequest>, IGetBucketPolicyRequestMarshaller)
  strict private
    class var FInstance: IGetBucketPolicyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBucketPolicyRequest): IRequest; overload;
    class function Instance: IGetBucketPolicyRequestMarshaller; static;
  end;
  
implementation

{ TGetBucketPolicyRequestMarshaller }

function TGetBucketPolicyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBucketPolicyRequest(AInput));
end;

function TGetBucketPolicyRequestMarshaller.Marshall(PublicRequest: TGetBucketPolicyRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('policy');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TGetBucketPolicyRequestMarshaller.Create;
begin
  FInstance := TGetBucketPolicyRequestMarshaller.Create;
end;

class function TGetBucketPolicyRequestMarshaller.Instance: IGetBucketPolicyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
