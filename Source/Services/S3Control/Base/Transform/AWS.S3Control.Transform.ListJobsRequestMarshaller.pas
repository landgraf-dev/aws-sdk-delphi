unit AWS.S3Control.Transform.ListJobsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.ListJobsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3Control.Exception, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IListJobsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListJobsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListJobsRequest>, IListJobsRequestMarshaller)
  strict private
    class var FInstance: IListJobsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListJobsRequest): IRequest; overload;
    class function Instance: IListJobsRequestMarshaller; static;
  end;
  
implementation

{ TListJobsRequestMarshaller }

function TListJobsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListJobsRequest(AInput));
end;

function TListJobsRequestMarshaller.Marshall(PublicRequest: TListJobsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'GET';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if PublicRequest.IsSetJobStatuses then
    Request.ParameterCollection.Add('jobStatuses', PublicRequest.JobStatuses);
  if PublicRequest.IsSetMaxResults then
    Request.Parameters.Add('maxResults', TStringUtils.FromInteger(PublicRequest.MaxResults));
  if PublicRequest.IsSetNextToken then
    Request.Parameters.Add('nextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  Request.ResourcePath := '/v20180820/jobs';
  Request.UseQueryString := True;
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TListJobsRequestMarshaller.Create;
begin
  FInstance := TListJobsRequestMarshaller.Create;
end;

class function TListJobsRequestMarshaller.Instance: IListJobsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
