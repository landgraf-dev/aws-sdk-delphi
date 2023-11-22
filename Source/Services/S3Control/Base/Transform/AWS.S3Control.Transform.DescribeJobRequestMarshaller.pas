unit AWS.S3Control.Transform.DescribeJobRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.DescribeJobRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IDescribeJobRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeJobRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeJobRequest>, IDescribeJobRequestMarshaller)
  strict private
    class var FInstance: IDescribeJobRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeJobRequest): IRequest; overload;
    class function Instance: IDescribeJobRequestMarshaller; static;
  end;
  
implementation

{ TDescribeJobRequestMarshaller }

function TDescribeJobRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeJobRequest(AInput));
end;

function TDescribeJobRequestMarshaller.Marshall(PublicRequest: TDescribeJobRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'GET';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetJobId then
    raise EAmazonS3ControlException.Create('Request object does not have required field JobId set');
  Request.AddPathResource('{id}', TStringUtils.Fromstring(PublicRequest.JobId));
  Request.ResourcePath := '/v20180820/jobs/{id}';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TDescribeJobRequestMarshaller.Create;
begin
  FInstance := TDescribeJobRequestMarshaller.Create;
end;

class function TDescribeJobRequestMarshaller.Instance: IDescribeJobRequestMarshaller;
begin
  Result := FInstance;
end;

end.
