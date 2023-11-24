unit AWS.S3.Transform.ListBucketIntelligentTieringConfigurationsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.ListBucketIntelligentTieringConfigurationsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IListBucketIntelligentTieringConfigurationsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListBucketIntelligentTieringConfigurationsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListBucketIntelligentTieringConfigurationsRequest>, IListBucketIntelligentTieringConfigurationsRequestMarshaller)
  strict private
    class var FInstance: IListBucketIntelligentTieringConfigurationsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListBucketIntelligentTieringConfigurationsRequest): IRequest; overload;
    class function Instance: IListBucketIntelligentTieringConfigurationsRequestMarshaller; static;
  end;
  
implementation

{ TListBucketIntelligentTieringConfigurationsRequestMarshaller }

function TListBucketIntelligentTieringConfigurationsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListBucketIntelligentTieringConfigurationsRequest(AInput));
end;

function TListBucketIntelligentTieringConfigurationsRequestMarshaller.Marshall(PublicRequest: TListBucketIntelligentTieringConfigurationsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('intelligent-tiering');
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  if PublicRequest.IsSetContinuationToken then
    Request.Parameters.Add('continuation-token', TStringUtils.Fromstring(PublicRequest.ContinuationToken));
  Request.ResourcePath := '/{Bucket}';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListBucketIntelligentTieringConfigurationsRequestMarshaller.Create;
begin
  FInstance := TListBucketIntelligentTieringConfigurationsRequestMarshaller.Create;
end;

class function TListBucketIntelligentTieringConfigurationsRequestMarshaller.Instance: IListBucketIntelligentTieringConfigurationsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
