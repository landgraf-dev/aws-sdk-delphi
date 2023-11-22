unit AWS.S3Control.Transform.GetJobTaggingRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.GetJobTaggingRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IGetJobTaggingRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetJobTaggingRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetJobTaggingRequest>, IGetJobTaggingRequestMarshaller)
  strict private
    class var FInstance: IGetJobTaggingRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetJobTaggingRequest): IRequest; overload;
    class function Instance: IGetJobTaggingRequestMarshaller; static;
  end;
  
implementation

{ TGetJobTaggingRequestMarshaller }

function TGetJobTaggingRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetJobTaggingRequest(AInput));
end;

function TGetJobTaggingRequestMarshaller.Marshall(PublicRequest: TGetJobTaggingRequest): IRequest;
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
  Request.ResourcePath := '/v20180820/jobs/{id}/tagging';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TGetJobTaggingRequestMarshaller.Create;
begin
  FInstance := TGetJobTaggingRequestMarshaller.Create;
end;

class function TGetJobTaggingRequestMarshaller.Instance: IGetJobTaggingRequestMarshaller;
begin
  Result := FInstance;
end;

end.
