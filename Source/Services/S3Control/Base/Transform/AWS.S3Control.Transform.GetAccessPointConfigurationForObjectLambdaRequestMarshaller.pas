unit AWS.S3Control.Transform.GetAccessPointConfigurationForObjectLambdaRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.GetAccessPointConfigurationForObjectLambdaRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IGetAccessPointConfigurationForObjectLambdaRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetAccessPointConfigurationForObjectLambdaRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetAccessPointConfigurationForObjectLambdaRequest>, IGetAccessPointConfigurationForObjectLambdaRequestMarshaller)
  strict private
    class var FInstance: IGetAccessPointConfigurationForObjectLambdaRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetAccessPointConfigurationForObjectLambdaRequest): IRequest; overload;
    class function Instance: IGetAccessPointConfigurationForObjectLambdaRequestMarshaller; static;
  end;
  
implementation

{ TGetAccessPointConfigurationForObjectLambdaRequestMarshaller }

function TGetAccessPointConfigurationForObjectLambdaRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetAccessPointConfigurationForObjectLambdaRequest(AInput));
end;

function TGetAccessPointConfigurationForObjectLambdaRequestMarshaller.Marshall(PublicRequest: TGetAccessPointConfigurationForObjectLambdaRequest): IRequest;
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
  Request.ResourcePath := '/v20180820/accesspointforobjectlambda/{name}/configuration';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TGetAccessPointConfigurationForObjectLambdaRequestMarshaller.Create;
begin
  FInstance := TGetAccessPointConfigurationForObjectLambdaRequestMarshaller.Create;
end;

class function TGetAccessPointConfigurationForObjectLambdaRequestMarshaller.Instance: IGetAccessPointConfigurationForObjectLambdaRequestMarshaller;
begin
  Result := FInstance;
end;

end.
