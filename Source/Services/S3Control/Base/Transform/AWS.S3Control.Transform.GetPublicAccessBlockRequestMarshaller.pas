unit AWS.S3Control.Transform.GetPublicAccessBlockRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.GetPublicAccessBlockRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3Control.Exception, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IGetPublicAccessBlockRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetPublicAccessBlockRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetPublicAccessBlockRequest>, IGetPublicAccessBlockRequestMarshaller)
  strict private
    class var FInstance: IGetPublicAccessBlockRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetPublicAccessBlockRequest): IRequest; overload;
    class function Instance: IGetPublicAccessBlockRequestMarshaller; static;
  end;
  
implementation

{ TGetPublicAccessBlockRequestMarshaller }

function TGetPublicAccessBlockRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetPublicAccessBlockRequest(AInput));
end;

function TGetPublicAccessBlockRequestMarshaller.Marshall(PublicRequest: TGetPublicAccessBlockRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'GET';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  Request.ResourcePath := '/v20180820/configuration/publicAccessBlock';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TGetPublicAccessBlockRequestMarshaller.Create;
begin
  FInstance := TGetPublicAccessBlockRequestMarshaller.Create;
end;

class function TGetPublicAccessBlockRequestMarshaller.Instance: IGetPublicAccessBlockRequestMarshaller;
begin
  Result := FInstance;
end;

end.
