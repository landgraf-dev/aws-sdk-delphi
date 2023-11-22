unit AWS.S3Control.Transform.DeleteAccessPointPolicyForObjectLambdaRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.DeleteAccessPointPolicyForObjectLambdaRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IDeleteAccessPointPolicyForObjectLambdaRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteAccessPointPolicyForObjectLambdaRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteAccessPointPolicyForObjectLambdaRequest>, IDeleteAccessPointPolicyForObjectLambdaRequestMarshaller)
  strict private
    class var FInstance: IDeleteAccessPointPolicyForObjectLambdaRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteAccessPointPolicyForObjectLambdaRequest): IRequest; overload;
    class function Instance: IDeleteAccessPointPolicyForObjectLambdaRequestMarshaller; static;
  end;
  
implementation

{ TDeleteAccessPointPolicyForObjectLambdaRequestMarshaller }

function TDeleteAccessPointPolicyForObjectLambdaRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteAccessPointPolicyForObjectLambdaRequest(AInput));
end;

function TDeleteAccessPointPolicyForObjectLambdaRequestMarshaller.Marshall(PublicRequest: TDeleteAccessPointPolicyForObjectLambdaRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'DELETE';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetName then
    raise EAmazonS3ControlException.Create('Request object does not have required field Name set');
  Request.AddPathResource('{name}', TStringUtils.Fromstring(PublicRequest.Name));
  Request.ResourcePath := '/v20180820/accesspointforobjectlambda/{name}/policy';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TDeleteAccessPointPolicyForObjectLambdaRequestMarshaller.Create;
begin
  FInstance := TDeleteAccessPointPolicyForObjectLambdaRequestMarshaller.Create;
end;

class function TDeleteAccessPointPolicyForObjectLambdaRequestMarshaller.Instance: IDeleteAccessPointPolicyForObjectLambdaRequestMarshaller;
begin
  Result := FInstance;
end;

end.
