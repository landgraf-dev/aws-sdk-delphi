unit AWS.S3Control.Transform.DeleteAccessPointForObjectLambdaRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.DeleteAccessPointForObjectLambdaRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IDeleteAccessPointForObjectLambdaRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteAccessPointForObjectLambdaRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteAccessPointForObjectLambdaRequest>, IDeleteAccessPointForObjectLambdaRequestMarshaller)
  strict private
    class var FInstance: IDeleteAccessPointForObjectLambdaRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteAccessPointForObjectLambdaRequest): IRequest; overload;
    class function Instance: IDeleteAccessPointForObjectLambdaRequestMarshaller; static;
  end;
  
implementation

{ TDeleteAccessPointForObjectLambdaRequestMarshaller }

function TDeleteAccessPointForObjectLambdaRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteAccessPointForObjectLambdaRequest(AInput));
end;

function TDeleteAccessPointForObjectLambdaRequestMarshaller.Marshall(PublicRequest: TDeleteAccessPointForObjectLambdaRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'DELETE';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetName then
    raise EAmazonS3ControlException.Create('Request object does not have required field Name set');
  Request.AddPathResource('{name}', TStringUtils.Fromstring(PublicRequest.Name));
  Request.ResourcePath := '/v20180820/accesspointforobjectlambda/{name}';
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TDeleteAccessPointForObjectLambdaRequestMarshaller.Create;
begin
  FInstance := TDeleteAccessPointForObjectLambdaRequestMarshaller.Create;
end;

class function TDeleteAccessPointForObjectLambdaRequestMarshaller.Instance: IDeleteAccessPointForObjectLambdaRequestMarshaller;
begin
  Result := FInstance;
end;

end.
