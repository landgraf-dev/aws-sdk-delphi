unit AWS.S3.Transform.PutBucketPolicyRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.PutBucketPolicyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3.Exception;

type
  IPutBucketPolicyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutBucketPolicyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutBucketPolicyRequest>, IPutBucketPolicyRequestMarshaller)
  strict private
    class var FInstance: IPutBucketPolicyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutBucketPolicyRequest): IRequest; overload;
    class function Instance: IPutBucketPolicyRequestMarshaller; static;
  end;
  
implementation

{ TPutBucketPolicyRequestMarshaller }

function TPutBucketPolicyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutBucketPolicyRequest(AInput));
end;

function TPutBucketPolicyRequestMarshaller.Marshall(PublicRequest: TPutBucketPolicyRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'PUT';
  Request.AddSubResource('policy');
  if PublicRequest.IsSetConfirmRemoveSelfBucketAccess then
    Request.Headers.Add('x-amz-confirm-remove-self-bucket-access', TStringUtils.FromBoolean(PublicRequest.ConfirmRemoveSelfBucketAccess));
  if PublicRequest.IsSetContentMD5 then
    Request.Headers.Add('Content-MD5', PublicRequest.ContentMD5);
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TPutBucketPolicyRequestMarshaller.Create;
begin
  FInstance := TPutBucketPolicyRequestMarshaller.Create;
end;

class function TPutBucketPolicyRequestMarshaller.Instance: IPutBucketPolicyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
