unit AWS.S3.Transform.DeleteBucketIntelligentTieringConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.DeleteBucketIntelligentTieringConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteBucketIntelligentTieringConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteBucketIntelligentTieringConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteBucketIntelligentTieringConfigurationRequest>, IDeleteBucketIntelligentTieringConfigurationRequestMarshaller)
  strict private
    class var FInstance: IDeleteBucketIntelligentTieringConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteBucketIntelligentTieringConfigurationRequest): IRequest; overload;
    class function Instance: IDeleteBucketIntelligentTieringConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TDeleteBucketIntelligentTieringConfigurationRequestMarshaller }

function TDeleteBucketIntelligentTieringConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteBucketIntelligentTieringConfigurationRequest(AInput));
end;

function TDeleteBucketIntelligentTieringConfigurationRequestMarshaller.Marshall(PublicRequest: TDeleteBucketIntelligentTieringConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'DELETE';
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

class constructor TDeleteBucketIntelligentTieringConfigurationRequestMarshaller.Create;
begin
  FInstance := TDeleteBucketIntelligentTieringConfigurationRequestMarshaller.Create;
end;

class function TDeleteBucketIntelligentTieringConfigurationRequestMarshaller.Instance: IDeleteBucketIntelligentTieringConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
