unit AWS.S3.Transform.ListBucketMetricsConfigurationsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.ListBucketMetricsConfigurationsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IListBucketMetricsConfigurationsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListBucketMetricsConfigurationsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListBucketMetricsConfigurationsRequest>, IListBucketMetricsConfigurationsRequestMarshaller)
  strict private
    class var FInstance: IListBucketMetricsConfigurationsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListBucketMetricsConfigurationsRequest): IRequest; overload;
    class function Instance: IListBucketMetricsConfigurationsRequestMarshaller; static;
  end;
  
implementation

{ TListBucketMetricsConfigurationsRequestMarshaller }

function TListBucketMetricsConfigurationsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListBucketMetricsConfigurationsRequest(AInput));
end;

function TListBucketMetricsConfigurationsRequestMarshaller.Marshall(PublicRequest: TListBucketMetricsConfigurationsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('metrics');
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

class constructor TListBucketMetricsConfigurationsRequestMarshaller.Create;
begin
  FInstance := TListBucketMetricsConfigurationsRequestMarshaller.Create;
end;

class function TListBucketMetricsConfigurationsRequestMarshaller.Instance: IListBucketMetricsConfigurationsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
