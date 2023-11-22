unit AWS.S3Control.Transform.UpdateJobStatusRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.UpdateJobStatusRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IUpdateJobStatusRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateJobStatusRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateJobStatusRequest>, IUpdateJobStatusRequestMarshaller)
  strict private
    class var FInstance: IUpdateJobStatusRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateJobStatusRequest): IRequest; overload;
    class function Instance: IUpdateJobStatusRequestMarshaller; static;
  end;
  
implementation

{ TUpdateJobStatusRequestMarshaller }

function TUpdateJobStatusRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateJobStatusRequest(AInput));
end;

function TUpdateJobStatusRequestMarshaller.Marshall(PublicRequest: TUpdateJobStatusRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'POST';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetJobId then
    raise EAmazonS3ControlException.Create('Request object does not have required field JobId set');
  Request.AddPathResource('{id}', TStringUtils.Fromstring(PublicRequest.JobId));
  if PublicRequest.IsSetRequestedJobStatus then
    Request.Parameters.Add('requestedJobStatus', PublicRequest.RequestedJobStatus.Value);
  if PublicRequest.IsSetStatusUpdateReason then
    Request.Parameters.Add('statusUpdateReason', TStringUtils.Fromstring(PublicRequest.StatusUpdateReason));
  Request.ResourcePath := '/v20180820/jobs/{id}/status';
  Request.UseQueryString := True;
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TUpdateJobStatusRequestMarshaller.Create;
begin
  FInstance := TUpdateJobStatusRequestMarshaller.Create;
end;

class function TUpdateJobStatusRequestMarshaller.Instance: IUpdateJobStatusRequestMarshaller;
begin
  Result := FInstance;
end;

end.
