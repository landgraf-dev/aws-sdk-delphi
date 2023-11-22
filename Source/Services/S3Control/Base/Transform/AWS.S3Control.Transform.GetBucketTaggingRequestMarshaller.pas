unit AWS.S3Control.Transform.GetBucketTaggingRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.GetBucketTaggingRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Arn, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils;

type
  IGetBucketTaggingRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBucketTaggingRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBucketTaggingRequest>, IGetBucketTaggingRequestMarshaller)
  strict private
    class var FInstance: IGetBucketTaggingRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBucketTaggingRequest): IRequest; overload;
    class function Instance: IGetBucketTaggingRequestMarshaller; static;
  end;
  
implementation

{ TGetBucketTaggingRequestMarshaller }

function TGetBucketTaggingRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBucketTaggingRequest(AInput));
end;

function TGetBucketTaggingRequestMarshaller.Marshall(PublicRequest: TGetBucketTaggingRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'GET';
  if TArn.IsArn(PublicRequest.Bucket) then
    PublicRequest.AccountId := TS3ArnUtils.GetAccountidBaseOnArn(PublicRequest.AccountId, TArn.Parse(PublicRequest.Bucket).AccountId);
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetBucket then
    raise EAmazonS3ControlException.Create('Request object does not have required field Bucket set');
  Request.AddPathResource('{name}', TStringUtils.Fromstring(PublicRequest.Bucket));
  Request.ResourcePath := '/v20180820/bucket/{name}/tagging';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise AmazonS3ControlException.CreateFmt('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TGetBucketTaggingRequestMarshaller.Create;
begin
  FInstance := TGetBucketTaggingRequestMarshaller.Create;
end;

class function TGetBucketTaggingRequestMarshaller.Instance: IGetBucketTaggingRequestMarshaller;
begin
  Result := FInstance;
end;

end.
