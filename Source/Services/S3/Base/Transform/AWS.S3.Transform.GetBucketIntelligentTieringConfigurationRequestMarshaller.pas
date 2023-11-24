unit AWS.S3.Transform.GetBucketIntelligentTieringConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetBucketIntelligentTieringConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetBucketIntelligentTieringConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBucketIntelligentTieringConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBucketIntelligentTieringConfigurationRequest>, IGetBucketIntelligentTieringConfigurationRequestMarshaller)
  strict private
    class var FInstance: IGetBucketIntelligentTieringConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBucketIntelligentTieringConfigurationRequest): IRequest; overload;
    class function Instance: IGetBucketIntelligentTieringConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TGetBucketIntelligentTieringConfigurationRequestMarshaller }

function TGetBucketIntelligentTieringConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBucketIntelligentTieringConfigurationRequest(AInput));
end;

function TGetBucketIntelligentTieringConfigurationRequestMarshaller.Marshall(PublicRequest: TGetBucketIntelligentTieringConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('intelligent-tiering');
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  if PublicRequest.IsSetId then
    Request.Parameters.Add('id', TStringUtils.Fromstring(PublicRequest.Id));
  Request.ResourcePath := '/{Bucket}';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TGetBucketIntelligentTieringConfigurationRequestMarshaller.Create;
begin
  FInstance := TGetBucketIntelligentTieringConfigurationRequestMarshaller.Create;
end;

class function TGetBucketIntelligentTieringConfigurationRequestMarshaller.Instance: IGetBucketIntelligentTieringConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
