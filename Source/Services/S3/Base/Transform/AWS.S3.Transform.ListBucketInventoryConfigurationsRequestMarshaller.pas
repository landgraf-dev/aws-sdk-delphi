unit AWS.S3.Transform.ListBucketInventoryConfigurationsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.ListBucketInventoryConfigurationsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IListBucketInventoryConfigurationsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListBucketInventoryConfigurationsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListBucketInventoryConfigurationsRequest>, IListBucketInventoryConfigurationsRequestMarshaller)
  strict private
    class var FInstance: IListBucketInventoryConfigurationsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListBucketInventoryConfigurationsRequest): IRequest; overload;
    class function Instance: IListBucketInventoryConfigurationsRequestMarshaller; static;
  end;
  
implementation

{ TListBucketInventoryConfigurationsRequestMarshaller }

function TListBucketInventoryConfigurationsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListBucketInventoryConfigurationsRequest(AInput));
end;

function TListBucketInventoryConfigurationsRequestMarshaller.Marshall(PublicRequest: TListBucketInventoryConfigurationsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('inventory');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  if PublicRequest.IsSetContinuationToken then
    Request.Parameters.Add('continuation-token', TStringUtils.Fromstring(PublicRequest.ContinuationToken));
  Request.ResourcePath := '/{Bucket}';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListBucketInventoryConfigurationsRequestMarshaller.Create;
begin
  FInstance := TListBucketInventoryConfigurationsRequestMarshaller.Create;
end;

class function TListBucketInventoryConfigurationsRequestMarshaller.Instance: IListBucketInventoryConfigurationsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
