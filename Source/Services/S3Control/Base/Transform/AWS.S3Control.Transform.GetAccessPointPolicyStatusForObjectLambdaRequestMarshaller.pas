unit AWS.S3Control.Transform.GetAccessPointPolicyStatusForObjectLambdaRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.GetAccessPointPolicyStatusForObjectLambdaRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils;

type
  IGetAccessPointPolicyStatusForObjectLambdaRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetAccessPointPolicyStatusForObjectLambdaRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetAccessPointPolicyStatusForObjectLambdaRequest>, IGetAccessPointPolicyStatusForObjectLambdaRequestMarshaller)
  strict private
    class var FInstance: IGetAccessPointPolicyStatusForObjectLambdaRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetAccessPointPolicyStatusForObjectLambdaRequest): IRequest; overload;
    class function Instance: IGetAccessPointPolicyStatusForObjectLambdaRequestMarshaller; static;
  end;
  
implementation

{ TGetAccessPointPolicyStatusForObjectLambdaRequestMarshaller }

function TGetAccessPointPolicyStatusForObjectLambdaRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetAccessPointPolicyStatusForObjectLambdaRequest(AInput));
end;

function TGetAccessPointPolicyStatusForObjectLambdaRequestMarshaller.Marshall(PublicRequest: TGetAccessPointPolicyStatusForObjectLambdaRequest): IRequest;
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
  Request.ResourcePath := '/v20180820/accesspointforobjectlambda/{name}/policyStatus';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise AmazonS3ControlException.CreateFmt('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TGetAccessPointPolicyStatusForObjectLambdaRequestMarshaller.Create;
begin
  FInstance := TGetAccessPointPolicyStatusForObjectLambdaRequestMarshaller.Create;
end;

class function TGetAccessPointPolicyStatusForObjectLambdaRequestMarshaller.Instance: IGetAccessPointPolicyStatusForObjectLambdaRequestMarshaller;
begin
  Result := FInstance;
end;

end.
