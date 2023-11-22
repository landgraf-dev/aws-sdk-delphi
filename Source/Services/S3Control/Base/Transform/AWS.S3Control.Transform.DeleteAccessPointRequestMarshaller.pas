unit AWS.S3Control.Transform.DeleteAccessPointRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.DeleteAccessPointRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Arn, 
  AWS.S3Control.Internal.S3ArnUtils, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IDeleteAccessPointRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteAccessPointRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteAccessPointRequest>, IDeleteAccessPointRequestMarshaller)
  strict private
    class var FInstance: IDeleteAccessPointRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteAccessPointRequest): IRequest; overload;
    class function Instance: IDeleteAccessPointRequestMarshaller; static;
  end;
  
implementation

{ TDeleteAccessPointRequestMarshaller }

function TDeleteAccessPointRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteAccessPointRequest(AInput));
end;

function TDeleteAccessPointRequestMarshaller.Marshall(PublicRequest: TDeleteAccessPointRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'DELETE';
  if TArn.IsArn(PublicRequest.Name) then
    PublicRequest.AccountId := TS3ArnUtils.GetAccountidBasedOnArn(PublicRequest.AccountId, TArn.Parse(PublicRequest.Name).AccountId);
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetName then
    raise EAmazonS3ControlException.Create('Request object does not have required field Name set');
  Request.AddPathResource('{name}', TStringUtils.Fromstring(PublicRequest.Name));
  Request.ResourcePath := '/v20180820/accesspoint/{name}';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TDeleteAccessPointRequestMarshaller.Create;
begin
  FInstance := TDeleteAccessPointRequestMarshaller.Create;
end;

class function TDeleteAccessPointRequestMarshaller.Instance: IDeleteAccessPointRequestMarshaller;
begin
  Result := FInstance;
end;

end.
