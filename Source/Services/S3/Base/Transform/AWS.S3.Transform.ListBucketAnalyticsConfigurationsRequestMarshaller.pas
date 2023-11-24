unit AWS.S3.Transform.ListBucketAnalyticsConfigurationsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.ListBucketAnalyticsConfigurationsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IListBucketAnalyticsConfigurationsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListBucketAnalyticsConfigurationsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListBucketAnalyticsConfigurationsRequest>, IListBucketAnalyticsConfigurationsRequestMarshaller)
  strict private
    class var FInstance: IListBucketAnalyticsConfigurationsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListBucketAnalyticsConfigurationsRequest): IRequest; overload;
    class function Instance: IListBucketAnalyticsConfigurationsRequestMarshaller; static;
  end;
  
implementation

{ TListBucketAnalyticsConfigurationsRequestMarshaller }

function TListBucketAnalyticsConfigurationsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListBucketAnalyticsConfigurationsRequest(AInput));
end;

function TListBucketAnalyticsConfigurationsRequestMarshaller.Marshall(PublicRequest: TListBucketAnalyticsConfigurationsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('analytics');
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

class constructor TListBucketAnalyticsConfigurationsRequestMarshaller.Create;
begin
  FInstance := TListBucketAnalyticsConfigurationsRequestMarshaller.Create;
end;

class function TListBucketAnalyticsConfigurationsRequestMarshaller.Instance: IListBucketAnalyticsConfigurationsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
