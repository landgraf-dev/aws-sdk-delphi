unit AWS.S3Control.Transform.GetStorageLensConfigurationTaggingRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.GetStorageLensConfigurationTaggingRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils;

type
  IGetStorageLensConfigurationTaggingRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetStorageLensConfigurationTaggingRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetStorageLensConfigurationTaggingRequest>, IGetStorageLensConfigurationTaggingRequestMarshaller)
  strict private
    class var FInstance: IGetStorageLensConfigurationTaggingRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetStorageLensConfigurationTaggingRequest): IRequest; overload;
    class function Instance: IGetStorageLensConfigurationTaggingRequestMarshaller; static;
  end;
  
implementation

{ TGetStorageLensConfigurationTaggingRequestMarshaller }

function TGetStorageLensConfigurationTaggingRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetStorageLensConfigurationTaggingRequest(AInput));
end;

function TGetStorageLensConfigurationTaggingRequestMarshaller.Marshall(PublicRequest: TGetStorageLensConfigurationTaggingRequest): IRequest;
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
  Request.ResourcePath := '/v20180820/storagelens/{storagelensid}/tagging';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise AmazonS3ControlException.CreateFmt('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TGetStorageLensConfigurationTaggingRequestMarshaller.Create;
begin
  FInstance := TGetStorageLensConfigurationTaggingRequestMarshaller.Create;
end;

class function TGetStorageLensConfigurationTaggingRequestMarshaller.Instance: IGetStorageLensConfigurationTaggingRequestMarshaller;
begin
  Result := FInstance;
end;

end.
