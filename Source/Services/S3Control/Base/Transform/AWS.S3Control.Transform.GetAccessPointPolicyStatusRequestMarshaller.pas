unit AWS.S3Control.Transform.GetAccessPointPolicyStatusRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.GetAccessPointPolicyStatusRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils;

type
  IGetAccessPointPolicyStatusRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetAccessPointPolicyStatusRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetAccessPointPolicyStatusRequest>, IGetAccessPointPolicyStatusRequestMarshaller)
  strict private
    class var FInstance: IGetAccessPointPolicyStatusRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetAccessPointPolicyStatusRequest): IRequest; overload;
    class function Instance: IGetAccessPointPolicyStatusRequestMarshaller; static;
  end;
  
implementation

{ TGetAccessPointPolicyStatusRequestMarshaller }

function TGetAccessPointPolicyStatusRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetAccessPointPolicyStatusRequest(AInput));
end;

function TGetAccessPointPolicyStatusRequestMarshaller.Marshall(PublicRequest: TGetAccessPointPolicyStatusRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'GET';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetName then
    raise EAmazonS3ControlException.Create('Request object does not have required field Name set');
  Request.AddPathResource('{name}', TStringUtils.Fromstring(PublicRequest.Name));
  Request.ResourcePath := '/v20180820/accesspoint/{name}/policyStatus';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise AmazonS3ControlException.CreateFmt('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TGetAccessPointPolicyStatusRequestMarshaller.Create;
begin
  FInstance := TGetAccessPointPolicyStatusRequestMarshaller.Create;
end;

class function TGetAccessPointPolicyStatusRequestMarshaller.Instance: IGetAccessPointPolicyStatusRequestMarshaller;
begin
  Result := FInstance;
end;

end.
