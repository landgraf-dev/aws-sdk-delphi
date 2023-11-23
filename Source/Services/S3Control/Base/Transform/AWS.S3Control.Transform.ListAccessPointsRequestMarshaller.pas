unit AWS.S3Control.Transform.ListAccessPointsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.ListAccessPointsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Arn, 
  AWS.S3Control.Internal.S3ArnUtils, 
  AWS.Internal.StringUtils, 
  AWS.S3Control.Exception, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IListAccessPointsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListAccessPointsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListAccessPointsRequest>, IListAccessPointsRequestMarshaller)
  strict private
    class var FInstance: IListAccessPointsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListAccessPointsRequest): IRequest; overload;
    class function Instance: IListAccessPointsRequestMarshaller; static;
  end;
  
implementation

{ TListAccessPointsRequestMarshaller }

function TListAccessPointsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListAccessPointsRequest(AInput));
end;

function TListAccessPointsRequestMarshaller.Marshall(PublicRequest: TListAccessPointsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'GET';
  if TArn.IsArn(PublicRequest.Bucket) then
    PublicRequest.AccountId := TS3ArnUtils.GetAccountidBasedOnArn(PublicRequest.AccountId, TArn.Parse(PublicRequest.Bucket).AccountId);
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if PublicRequest.IsSetBucket then
    Request.Parameters.Add('bucket', TStringUtils.Fromstring(PublicRequest.Bucket));
  if PublicRequest.IsSetMaxResults then
    Request.Parameters.Add('maxResults', TStringUtils.FromInteger(PublicRequest.MaxResults));
  if PublicRequest.IsSetNextToken then
    Request.Parameters.Add('nextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  Request.ResourcePath := '/v20180820/accesspoint';
  Request.UseQueryString := True;
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TListAccessPointsRequestMarshaller.Create;
begin
  FInstance := TListAccessPointsRequestMarshaller.Create;
end;

class function TListAccessPointsRequestMarshaller.Instance: IListAccessPointsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
