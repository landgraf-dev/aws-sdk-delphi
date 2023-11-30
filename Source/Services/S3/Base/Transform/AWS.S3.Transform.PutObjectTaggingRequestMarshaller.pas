unit AWS.S3.Transform.PutObjectTaggingRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.PutObjectTaggingRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3.Exception, 
  System.Classes, 
  Bcl.Xml.Writer, 
  AWS.SDKUtils;

type
  IPutObjectTaggingRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutObjectTaggingRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutObjectTaggingRequest>, IPutObjectTaggingRequestMarshaller)
  strict private
    class var FInstance: IPutObjectTaggingRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutObjectTaggingRequest): IRequest; overload;
    class function Instance: IPutObjectTaggingRequestMarshaller; static;
  end;
  
implementation

{ TPutObjectTaggingRequestMarshaller }

function TPutObjectTaggingRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutObjectTaggingRequest(AInput));
end;

function TPutObjectTaggingRequestMarshaller.Marshall(PublicRequest: TPutObjectTaggingRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'PUT';
  Request.AddSubResource('tagging');
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

class constructor TPutObjectTaggingRequestMarshaller.Create;
begin
  FInstance := TPutObjectTaggingRequestMarshaller.Create;
end;

class function TPutObjectTaggingRequestMarshaller.Instance: IPutObjectTaggingRequestMarshaller;
begin
  Result := FInstance;
end;

end.
