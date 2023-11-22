unit AWS.S3Control.Transform.DeleteBucketTaggingRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.DeleteBucketTaggingRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Arn, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteBucketTaggingRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteBucketTaggingRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteBucketTaggingRequest>, IDeleteBucketTaggingRequestMarshaller)
  strict private
    class var FInstance: IDeleteBucketTaggingRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteBucketTaggingRequest): IRequest; overload;
    class function Instance: IDeleteBucketTaggingRequestMarshaller; static;
  end;
  
implementation

{ TDeleteBucketTaggingRequestMarshaller }

function TDeleteBucketTaggingRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteBucketTaggingRequest(AInput));
end;

function TDeleteBucketTaggingRequestMarshaller.Marshall(PublicRequest: TDeleteBucketTaggingRequest): IRequest;
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
  Request.ResourcePath := '/v20180820/bucket/{name}/tagging';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise AmazonS3ControlException.CreateFmt('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TDeleteBucketTaggingRequestMarshaller.Create;
begin
  FInstance := TDeleteBucketTaggingRequestMarshaller.Create;
end;

class function TDeleteBucketTaggingRequestMarshaller.Instance: IDeleteBucketTaggingRequestMarshaller;
begin
  Result := FInstance;
end;

end.
