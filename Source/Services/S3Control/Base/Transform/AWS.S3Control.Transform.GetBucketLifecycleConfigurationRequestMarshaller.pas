unit AWS.S3Control.Transform.GetBucketLifecycleConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.GetBucketLifecycleConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Arn, 
  AWS.S3Control.Internal.S3ArnUtils, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IGetBucketLifecycleConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBucketLifecycleConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBucketLifecycleConfigurationRequest>, IGetBucketLifecycleConfigurationRequestMarshaller)
  strict private
    class var FInstance: IGetBucketLifecycleConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBucketLifecycleConfigurationRequest): IRequest; overload;
    class function Instance: IGetBucketLifecycleConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TGetBucketLifecycleConfigurationRequestMarshaller }

function TGetBucketLifecycleConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBucketLifecycleConfigurationRequest(AInput));
end;

function TGetBucketLifecycleConfigurationRequestMarshaller.Marshall(PublicRequest: TGetBucketLifecycleConfigurationRequest): IRequest;
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
  Request.ResourcePath := '/v20180820/bucket/{name}/lifecycleconfiguration';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TGetBucketLifecycleConfigurationRequestMarshaller.Create;
begin
  FInstance := TGetBucketLifecycleConfigurationRequestMarshaller.Create;
end;

class function TGetBucketLifecycleConfigurationRequestMarshaller.Instance: IGetBucketLifecycleConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
