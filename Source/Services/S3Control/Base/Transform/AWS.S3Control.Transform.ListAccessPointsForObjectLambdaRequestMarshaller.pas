unit AWS.S3Control.Transform.ListAccessPointsForObjectLambdaRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.ListAccessPointsForObjectLambdaRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3Control.Exception, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IListAccessPointsForObjectLambdaRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListAccessPointsForObjectLambdaRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListAccessPointsForObjectLambdaRequest>, IListAccessPointsForObjectLambdaRequestMarshaller)
  strict private
    class var FInstance: IListAccessPointsForObjectLambdaRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListAccessPointsForObjectLambdaRequest): IRequest; overload;
    class function Instance: IListAccessPointsForObjectLambdaRequestMarshaller; static;
  end;
  
implementation

{ TListAccessPointsForObjectLambdaRequestMarshaller }

function TListAccessPointsForObjectLambdaRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListAccessPointsForObjectLambdaRequest(AInput));
end;

function TListAccessPointsForObjectLambdaRequestMarshaller.Marshall(PublicRequest: TListAccessPointsForObjectLambdaRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'GET';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if PublicRequest.IsSetMaxResults then
    Request.Parameters.Add('maxResults', TStringUtils.FromInteger(PublicRequest.MaxResults));
  if PublicRequest.IsSetNextToken then
    Request.Parameters.Add('nextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  Request.ResourcePath := '/v20180820/accesspointforobjectlambda';
  Request.UseQueryString := True;
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TListAccessPointsForObjectLambdaRequestMarshaller.Create;
begin
  FInstance := TListAccessPointsForObjectLambdaRequestMarshaller.Create;
end;

class function TListAccessPointsForObjectLambdaRequestMarshaller.Instance: IListAccessPointsForObjectLambdaRequestMarshaller;
begin
  Result := FInstance;
end;

end.
