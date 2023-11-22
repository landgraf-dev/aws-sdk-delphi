unit AWS.S3Control.Transform.DeleteJobTaggingRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.DeleteJobTaggingRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IDeleteJobTaggingRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteJobTaggingRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteJobTaggingRequest>, IDeleteJobTaggingRequestMarshaller)
  strict private
    class var FInstance: IDeleteJobTaggingRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteJobTaggingRequest): IRequest; overload;
    class function Instance: IDeleteJobTaggingRequestMarshaller; static;
  end;
  
implementation

{ TDeleteJobTaggingRequestMarshaller }

function TDeleteJobTaggingRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteJobTaggingRequest(AInput));
end;

function TDeleteJobTaggingRequestMarshaller.Marshall(PublicRequest: TDeleteJobTaggingRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'DELETE';
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

class constructor TDeleteJobTaggingRequestMarshaller.Create;
begin
  FInstance := TDeleteJobTaggingRequestMarshaller.Create;
end;

class function TDeleteJobTaggingRequestMarshaller.Instance: IDeleteJobTaggingRequestMarshaller;
begin
  Result := FInstance;
end;

end.
