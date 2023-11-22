unit AWS.S3Control.Transform.DeleteBucketLifecycleConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.DeleteBucketLifecycleConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Arn, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteBucketLifecycleConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteBucketLifecycleConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteBucketLifecycleConfigurationRequest>, IDeleteBucketLifecycleConfigurationRequestMarshaller)
  strict private
    class var FInstance: IDeleteBucketLifecycleConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteBucketLifecycleConfigurationRequest): IRequest; overload;
    class function Instance: IDeleteBucketLifecycleConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TDeleteBucketLifecycleConfigurationRequestMarshaller }

function TDeleteBucketLifecycleConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteBucketLifecycleConfigurationRequest(AInput));
end;

function TDeleteBucketLifecycleConfigurationRequestMarshaller.Marshall(PublicRequest: TDeleteBucketLifecycleConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'DELETE';
  if TArn.IsArn(PublicRequest.Bucket) then
    PublicRequest.AccountId := TS3ArnUtils.GetAccountidBaseOnArn(PublicRequest.AccountId, TArn.Parse(PublicRequest.Bucket).AccountId);
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetBucket then
    raise EAmazonS3ControlException.Create('Request object does not have required field Bucket set');
  Request.AddPathResource('{name}', TStringUtils.Fromstring(PublicRequest.Bucket));
  Request.ResourcePath := '/v20180820/bucket/{name}/lifecycleconfiguration';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise AmazonS3ControlException.CreateFmt('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TDeleteBucketLifecycleConfigurationRequestMarshaller.Create;
begin
  FInstance := TDeleteBucketLifecycleConfigurationRequestMarshaller.Create;
end;

class function TDeleteBucketLifecycleConfigurationRequestMarshaller.Instance: IDeleteBucketLifecycleConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
