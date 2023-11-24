unit AWS.S3.Transform.GetBucketPolicyStatusRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetBucketPolicyStatusRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetBucketPolicyStatusRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBucketPolicyStatusRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBucketPolicyStatusRequest>, IGetBucketPolicyStatusRequestMarshaller)
  strict private
    class var FInstance: IGetBucketPolicyStatusRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBucketPolicyStatusRequest): IRequest; overload;
    class function Instance: IGetBucketPolicyStatusRequestMarshaller; static;
  end;
  
implementation

{ TGetBucketPolicyStatusRequestMarshaller }

function TGetBucketPolicyStatusRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBucketPolicyStatusRequest(AInput));
end;

function TGetBucketPolicyStatusRequestMarshaller.Marshall(PublicRequest: TGetBucketPolicyStatusRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('policyStatus');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TGetBucketPolicyStatusRequestMarshaller.Create;
begin
  FInstance := TGetBucketPolicyStatusRequestMarshaller.Create;
end;

class function TGetBucketPolicyStatusRequestMarshaller.Instance: IGetBucketPolicyStatusRequestMarshaller;
begin
  Result := FInstance;
end;

end.
