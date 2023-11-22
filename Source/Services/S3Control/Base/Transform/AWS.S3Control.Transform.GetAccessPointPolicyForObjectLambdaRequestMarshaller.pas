unit AWS.S3Control.Transform.GetAccessPointPolicyForObjectLambdaRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.GetAccessPointPolicyForObjectLambdaRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils;

type
  IGetAccessPointPolicyForObjectLambdaRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetAccessPointPolicyForObjectLambdaRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetAccessPointPolicyForObjectLambdaRequest>, IGetAccessPointPolicyForObjectLambdaRequestMarshaller)
  strict private
    class var FInstance: IGetAccessPointPolicyForObjectLambdaRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetAccessPointPolicyForObjectLambdaRequest): IRequest; overload;
    class function Instance: IGetAccessPointPolicyForObjectLambdaRequestMarshaller; static;
  end;
  
implementation

{ TGetAccessPointPolicyForObjectLambdaRequestMarshaller }

function TGetAccessPointPolicyForObjectLambdaRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetAccessPointPolicyForObjectLambdaRequest(AInput));
end;

function TGetAccessPointPolicyForObjectLambdaRequestMarshaller.Marshall(PublicRequest: TGetAccessPointPolicyForObjectLambdaRequest): IRequest;
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
  Request.ResourcePath := '/v20180820/accesspointforobjectlambda/{name}/policy';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise AmazonS3ControlException.CreateFmt('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TGetAccessPointPolicyForObjectLambdaRequestMarshaller.Create;
begin
  FInstance := TGetAccessPointPolicyForObjectLambdaRequestMarshaller.Create;
end;

class function TGetAccessPointPolicyForObjectLambdaRequestMarshaller.Instance: IGetAccessPointPolicyForObjectLambdaRequestMarshaller;
begin
  Result := FInstance;
end;

end.
