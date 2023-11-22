unit AWS.S3Control.Transform.DeleteStorageLensConfigurationTaggingRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.DeleteStorageLensConfigurationTaggingRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteStorageLensConfigurationTaggingRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteStorageLensConfigurationTaggingRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteStorageLensConfigurationTaggingRequest>, IDeleteStorageLensConfigurationTaggingRequestMarshaller)
  strict private
    class var FInstance: IDeleteStorageLensConfigurationTaggingRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteStorageLensConfigurationTaggingRequest): IRequest; overload;
    class function Instance: IDeleteStorageLensConfigurationTaggingRequestMarshaller; static;
  end;
  
implementation

{ TDeleteStorageLensConfigurationTaggingRequestMarshaller }

function TDeleteStorageLensConfigurationTaggingRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteStorageLensConfigurationTaggingRequest(AInput));
end;

function TDeleteStorageLensConfigurationTaggingRequestMarshaller.Marshall(PublicRequest: TDeleteStorageLensConfigurationTaggingRequest): IRequest;
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
  Request.ResourcePath := '/v20180820/storagelens/{storagelensid}/tagging';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise AmazonS3ControlException.CreateFmt('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TDeleteStorageLensConfigurationTaggingRequestMarshaller.Create;
begin
  FInstance := TDeleteStorageLensConfigurationTaggingRequestMarshaller.Create;
end;

class function TDeleteStorageLensConfigurationTaggingRequestMarshaller.Instance: IDeleteStorageLensConfigurationTaggingRequestMarshaller;
begin
  Result := FInstance;
end;

end.
