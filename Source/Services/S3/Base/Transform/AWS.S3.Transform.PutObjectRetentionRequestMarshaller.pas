unit AWS.S3.Transform.PutObjectRetentionRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.PutObjectRetentionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3.Exception, 
  System.Classes, 
  Bcl.Xml.Writer, 
  AWS.SDKUtils;

type
  IPutObjectRetentionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutObjectRetentionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutObjectRetentionRequest>, IPutObjectRetentionRequestMarshaller)
  strict private
    class var FInstance: IPutObjectRetentionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutObjectRetentionRequest): IRequest; overload;
    class function Instance: IPutObjectRetentionRequestMarshaller; static;
  end;
  
implementation

{ TPutObjectRetentionRequestMarshaller }

function TPutObjectRetentionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutObjectRetentionRequest(AInput));
end;

function TPutObjectRetentionRequestMarshaller.Marshall(PublicRequest: TPutObjectRetentionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'PUT';
  Request.AddSubResource('retention');
  if PublicRequest.IsSetBypassGovernanceRetention then
    Request.Headers.Add('x-amz-bypass-governance-retention', TStringUtils.FromBoolean(PublicRequest.BypassGovernanceRetention));
  if PublicRequest.IsSetContentMD5 then
    Request.Headers.Add('Content-MD5', PublicRequest.ContentMD5);
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if PublicRequest.IsSetRequestPayer then
    Request.Headers.Add('x-amz-request-payer', PublicRequest.RequestPayer.Value);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  if not PublicRequest.IsSetKey then
    raise EAmazonS3Exception.Create('Request object does not have required field Key set');
  Request.AddPathResource('{Key+}', TStringUtils.Fromstring(PublicRequest.Key.TrimLeft(['/'])));
  if PublicRequest.IsSetVersionId then
    Request.Parameters.Add('versionId', TStringUtils.Fromstring(PublicRequest.VersionId));
  Request.ResourcePath := '/{Bucket}/{Key+}';
  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
    finally
      XmlWriter.Free;
    end;
    Request.Content := Copy(XmlStream.Bytes, 0, XmlStream.Size);
    Request.Headers.AddOrSetValue('Content-Type', 'application/xml');
    var content := TEncoding.UTF8.GetString(Request.Content);
    var checksum := TAWSSDKUtils.GenerateChecksumForContent(content, true);
    if PublicRequest.IsSetContentMD5 then
      checksum := PublicRequest.ContentMD5;
    Request.Headers.AddOrSetValue(THeaderKeys.ContentMD5Header, checksum);
    Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2006-03-01');
  finally
    XmlStream.Free;
  end;
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TPutObjectRetentionRequestMarshaller.Create;
begin
  FInstance := TPutObjectRetentionRequestMarshaller.Create;
end;

class function TPutObjectRetentionRequestMarshaller.Instance: IPutObjectRetentionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
