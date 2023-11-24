unit AWS.S3.Transform.DeleteObjectTaggingRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.DeleteObjectTaggingRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteObjectTaggingRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteObjectTaggingRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteObjectTaggingRequest>, IDeleteObjectTaggingRequestMarshaller)
  strict private
    class var FInstance: IDeleteObjectTaggingRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteObjectTaggingRequest): IRequest; overload;
    class function Instance: IDeleteObjectTaggingRequestMarshaller; static;
  end;
  
implementation

{ TDeleteObjectTaggingRequestMarshaller }

function TDeleteObjectTaggingRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteObjectTaggingRequest(AInput));
end;

function TDeleteObjectTaggingRequestMarshaller.Marshall(PublicRequest: TDeleteObjectTaggingRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'DELETE';
  Request.AddSubResource('tagging');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  if not PublicRequest.IsSetKey then
    raise EAmazonS3Exception.Create('Request object does not have required field Key set');
  Request.AddPathResource('{Key+}', TStringUtils.Fromstring(PublicRequest.Key.TrimLeft(['/'])));
  if PublicRequest.IsSetVersionId then
    Request.Parameters.Add('versionId', TStringUtils.Fromstring(PublicRequest.VersionId));
  Request.ResourcePath := '/{Bucket}/{Key+}';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TDeleteObjectTaggingRequestMarshaller.Create;
begin
  FInstance := TDeleteObjectTaggingRequestMarshaller.Create;
end;

class function TDeleteObjectTaggingRequestMarshaller.Instance: IDeleteObjectTaggingRequestMarshaller;
begin
  Result := FInstance;
end;

end.
