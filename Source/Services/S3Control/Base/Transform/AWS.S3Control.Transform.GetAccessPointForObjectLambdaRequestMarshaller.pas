unit AWS.S3Control.Transform.GetAccessPointForObjectLambdaRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.GetAccessPointForObjectLambdaRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils;

type
  IGetAccessPointForObjectLambdaRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetAccessPointForObjectLambdaRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetAccessPointForObjectLambdaRequest>, IGetAccessPointForObjectLambdaRequestMarshaller)
  strict private
    class var FInstance: IGetAccessPointForObjectLambdaRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetAccessPointForObjectLambdaRequest): IRequest; overload;
    class function Instance: IGetAccessPointForObjectLambdaRequestMarshaller; static;
  end;
  
implementation

{ TGetAccessPointForObjectLambdaRequestMarshaller }

function TGetAccessPointForObjectLambdaRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetAccessPointForObjectLambdaRequest(AInput));
end;

function TGetAccessPointForObjectLambdaRequestMarshaller.Marshall(PublicRequest: TGetAccessPointForObjectLambdaRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'GET';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetName then
    raise EAmazonS3ControlException.Create('Request object does not have required field Name set');
  Request.AddPathResource('{name}', TStringUtils.Fromstring(PublicRequest.Name));
  Request.ResourcePath := '/v20180820/accesspointforobjectlambda/{name}';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise AmazonS3ControlException.CreateFmt('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TGetAccessPointForObjectLambdaRequestMarshaller.Create;
begin
  FInstance := TGetAccessPointForObjectLambdaRequestMarshaller.Create;
end;

class function TGetAccessPointForObjectLambdaRequestMarshaller.Instance: IGetAccessPointForObjectLambdaRequestMarshaller;
begin
  Result := FInstance;
end;

end.
