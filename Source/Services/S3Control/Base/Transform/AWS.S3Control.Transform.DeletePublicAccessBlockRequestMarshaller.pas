unit AWS.S3Control.Transform.DeletePublicAccessBlockRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.DeletePublicAccessBlockRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3Control.Exception, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IDeletePublicAccessBlockRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeletePublicAccessBlockRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeletePublicAccessBlockRequest>, IDeletePublicAccessBlockRequestMarshaller)
  strict private
    class var FInstance: IDeletePublicAccessBlockRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeletePublicAccessBlockRequest): IRequest; overload;
    class function Instance: IDeletePublicAccessBlockRequestMarshaller; static;
  end;
  
implementation

{ TDeletePublicAccessBlockRequestMarshaller }

function TDeletePublicAccessBlockRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeletePublicAccessBlockRequest(AInput));
end;

function TDeletePublicAccessBlockRequestMarshaller.Marshall(PublicRequest: TDeletePublicAccessBlockRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'DELETE';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  Request.ResourcePath := '/v20180820/configuration/publicAccessBlock';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TDeletePublicAccessBlockRequestMarshaller.Create;
begin
  FInstance := TDeletePublicAccessBlockRequestMarshaller.Create;
end;

class function TDeletePublicAccessBlockRequestMarshaller.Instance: IDeletePublicAccessBlockRequestMarshaller;
begin
  Result := FInstance;
end;

end.
