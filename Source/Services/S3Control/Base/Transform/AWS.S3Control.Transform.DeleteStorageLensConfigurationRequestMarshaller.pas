unit AWS.S3Control.Transform.DeleteStorageLensConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.DeleteStorageLensConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IDeleteStorageLensConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteStorageLensConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteStorageLensConfigurationRequest>, IDeleteStorageLensConfigurationRequestMarshaller)
  strict private
    class var FInstance: IDeleteStorageLensConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteStorageLensConfigurationRequest): IRequest; overload;
    class function Instance: IDeleteStorageLensConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TDeleteStorageLensConfigurationRequestMarshaller }

function TDeleteStorageLensConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteStorageLensConfigurationRequest(AInput));
end;

function TDeleteStorageLensConfigurationRequestMarshaller.Marshall(PublicRequest: TDeleteStorageLensConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'DELETE';
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

class constructor TDeleteStorageLensConfigurationRequestMarshaller.Create;
begin
  FInstance := TDeleteStorageLensConfigurationRequestMarshaller.Create;
end;

class function TDeleteStorageLensConfigurationRequestMarshaller.Instance: IDeleteStorageLensConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
