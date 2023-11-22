unit AWS.S3Control.Transform.GetBucketPolicyRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.GetBucketPolicyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Arn, 
  AWS.S3Control.Internal.S3ArnUtils, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Internal.Util.HostPrefixUtils;

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
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'GET';
  if TArn.IsArn(PublicRequest.Bucket) then
    PublicRequest.AccountId := TS3ArnUtils.GetAccountidBasedOnArn(PublicRequest.AccountId, TArn.Parse(PublicRequest.Bucket).AccountId);
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetBucket then
    raise EAmazonS3ControlException.Create('Request object does not have required field Bucket set');
  Request.AddPathResource('{name}', TStringUtils.Fromstring(PublicRequest.Bucket));
  Request.ResourcePath := '/v20180820/bucket/{name}/policy';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
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
