unit AWS.S3Control.Transform.UpdateJobPriorityRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.UpdateJobPriorityRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IUpdateJobPriorityRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateJobPriorityRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateJobPriorityRequest>, IUpdateJobPriorityRequestMarshaller)
  strict private
    class var FInstance: IUpdateJobPriorityRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateJobPriorityRequest): IRequest; overload;
    class function Instance: IUpdateJobPriorityRequestMarshaller; static;
  end;
  
implementation

{ TUpdateJobPriorityRequestMarshaller }

function TUpdateJobPriorityRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateJobPriorityRequest(AInput));
end;

function TUpdateJobPriorityRequestMarshaller.Marshall(PublicRequest: TUpdateJobPriorityRequest): IRequest;
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
  if PublicRequest.IsSetPriority then
    Request.Parameters.Add('priority', TStringUtils.FromInteger(PublicRequest.Priority));
  Request.ResourcePath := '/v20180820/jobs/{id}/priority';
  Request.UseQueryString := True;
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TUpdateJobPriorityRequestMarshaller.Create;
begin
  FInstance := TUpdateJobPriorityRequestMarshaller.Create;
end;

class function TUpdateJobPriorityRequestMarshaller.Instance: IUpdateJobPriorityRequestMarshaller;
begin
  Result := FInstance;
end;

end.
