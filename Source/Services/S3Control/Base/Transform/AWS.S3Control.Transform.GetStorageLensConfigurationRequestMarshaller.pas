unit AWS.S3Control.Transform.GetStorageLensConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.GetStorageLensConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IGetStorageLensConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetStorageLensConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetStorageLensConfigurationRequest>, IGetStorageLensConfigurationRequestMarshaller)
  strict private
    class var FInstance: IGetStorageLensConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetStorageLensConfigurationRequest): IRequest; overload;
    class function Instance: IGetStorageLensConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TGetStorageLensConfigurationRequestMarshaller }

function TGetStorageLensConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetStorageLensConfigurationRequest(AInput));
end;

function TGetStorageLensConfigurationRequestMarshaller.Marshall(PublicRequest: TGetStorageLensConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'GET';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetConfigId then
    raise EAmazonS3ControlException.Create('Request object does not have required field ConfigId set');
  Request.AddPathResource('{storagelensid}', TStringUtils.Fromstring(PublicRequest.ConfigId));
  Request.ResourcePath := '/v20180820/storagelens/{storagelensid}';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TGetStorageLensConfigurationRequestMarshaller.Create;
begin
  FInstance := TGetStorageLensConfigurationRequestMarshaller.Create;
end;

class function TGetStorageLensConfigurationRequestMarshaller.Instance: IGetStorageLensConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
