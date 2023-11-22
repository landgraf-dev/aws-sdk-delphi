unit AWS.S3Control.Transform.DeleteBucketPolicyRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.DeleteBucketPolicyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IDeleteBucketPolicyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteBucketPolicyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteBucketPolicyRequest>, IDeleteBucketPolicyRequestMarshaller)
  strict private
    class var FInstance: IDeleteBucketPolicyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteBucketPolicyRequest): IRequest; overload;
    class function Instance: IDeleteBucketPolicyRequestMarshaller; static;
  end;
  
implementation

{ TDeleteBucketPolicyRequestMarshaller }

function TDeleteBucketPolicyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteBucketPolicyRequest(AInput));
end;

function TDeleteBucketPolicyRequestMarshaller.Marshall(PublicRequest: TDeleteBucketPolicyRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'DELETE';
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

class constructor TDeleteBucketPolicyRequestMarshaller.Create;
begin
  FInstance := TDeleteBucketPolicyRequestMarshaller.Create;
end;

class function TDeleteBucketPolicyRequestMarshaller.Instance: IDeleteBucketPolicyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
