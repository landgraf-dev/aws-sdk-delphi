unit AWS.S3Control.Transform.ListStorageLensConfigurationsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.ListStorageLensConfigurationsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IListStorageLensConfigurationsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListStorageLensConfigurationsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListStorageLensConfigurationsRequest>, IListStorageLensConfigurationsRequestMarshaller)
  strict private
    class var FInstance: IListStorageLensConfigurationsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListStorageLensConfigurationsRequest): IRequest; overload;
    class function Instance: IListStorageLensConfigurationsRequestMarshaller; static;
  end;
  
implementation

{ TListStorageLensConfigurationsRequestMarshaller }

function TListStorageLensConfigurationsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListStorageLensConfigurationsRequest(AInput));
end;

function TListStorageLensConfigurationsRequestMarshaller.Marshall(PublicRequest: TListStorageLensConfigurationsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'GET';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if PublicRequest.IsSetNextToken then
    Request.Parameters.Add('nextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  Request.ResourcePath := '/v20180820/storagelens';
  Request.UseQueryString := True;
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TListStorageLensConfigurationsRequestMarshaller.Create;
begin
  FInstance := TListStorageLensConfigurationsRequestMarshaller.Create;
end;

class function TListStorageLensConfigurationsRequestMarshaller.Instance: IListStorageLensConfigurationsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
