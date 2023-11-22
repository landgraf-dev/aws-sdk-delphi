unit AWS.S3Control.Transform.GetAccessPointPolicyRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.GetAccessPointPolicyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Arn, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils;

type
  IGetAccessPointPolicyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetAccessPointPolicyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetAccessPointPolicyRequest>, IGetAccessPointPolicyRequestMarshaller)
  strict private
    class var FInstance: IGetAccessPointPolicyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetAccessPointPolicyRequest): IRequest; overload;
    class function Instance: IGetAccessPointPolicyRequestMarshaller; static;
  end;
  
implementation

{ TGetAccessPointPolicyRequestMarshaller }

function TGetAccessPointPolicyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetAccessPointPolicyRequest(AInput));
end;

function TGetAccessPointPolicyRequestMarshaller.Marshall(PublicRequest: TGetAccessPointPolicyRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'GET';
  if TArn.IsArn(PublicRequest.Name) then
    PublicRequest.AccountId := TS3ArnUtils.GetAccountidBaseOnArn(PublicRequest.AccountId, TArn.Parse(PublicRequest.Name).AccountId);
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetName then
    raise EAmazonS3ControlException.Create('Request object does not have required field Name set');
  Request.AddPathResource('{name}', TStringUtils.Fromstring(PublicRequest.Name));
  Request.ResourcePath := '/v20180820/accesspoint/{name}/policy';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise AmazonS3ControlException.CreateFmt('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TGetAccessPointPolicyRequestMarshaller.Create;
begin
  FInstance := TGetAccessPointPolicyRequestMarshaller.Create;
end;

class function TGetAccessPointPolicyRequestMarshaller.Instance: IGetAccessPointPolicyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
