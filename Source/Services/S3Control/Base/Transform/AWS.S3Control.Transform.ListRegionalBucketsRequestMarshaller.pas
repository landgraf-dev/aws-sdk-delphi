unit AWS.S3Control.Transform.ListRegionalBucketsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.ListRegionalBucketsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IListRegionalBucketsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListRegionalBucketsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListRegionalBucketsRequest>, IListRegionalBucketsRequestMarshaller)
  strict private
    class var FInstance: IListRegionalBucketsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListRegionalBucketsRequest): IRequest; overload;
    class function Instance: IListRegionalBucketsRequestMarshaller; static;
  end;
  
implementation

{ TListRegionalBucketsRequestMarshaller }

function TListRegionalBucketsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListRegionalBucketsRequest(AInput));
end;

function TListRegionalBucketsRequestMarshaller.Marshall(PublicRequest: TListRegionalBucketsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'GET';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if PublicRequest.IsSetOutpostId then
    Request.Headers.Add('x-amz-outpost-id', PublicRequest.OutpostId);
  if PublicRequest.IsSetMaxResults then
    Request.Parameters.Add('maxResults', TStringUtils.FromInteger(PublicRequest.MaxResults));
  if PublicRequest.IsSetNextToken then
    Request.Parameters.Add('nextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  Request.ResourcePath := '/v20180820/bucket';
  Request.UseQueryString := True;
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TListRegionalBucketsRequestMarshaller.Create;
begin
  FInstance := TListRegionalBucketsRequestMarshaller.Create;
end;

class function TListRegionalBucketsRequestMarshaller.Instance: IListRegionalBucketsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
