unit AWS.S3.Transform.PutBucketVersioningRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.PutBucketVersioningRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils, 
  System.Classes, 
  Bcl.Xml.Writer, 
  System.SysUtils, 
  AWS.SDKUtils;

type
  IPutBucketVersioningRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutBucketVersioningRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutBucketVersioningRequest>, IPutBucketVersioningRequestMarshaller)
  strict private
    class var FInstance: IPutBucketVersioningRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutBucketVersioningRequest): IRequest; overload;
    class function Instance: IPutBucketVersioningRequestMarshaller; static;
  end;
  
implementation

{ TPutBucketVersioningRequestMarshaller }

function TPutBucketVersioningRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutBucketVersioningRequest(AInput));
end;

function TPutBucketVersioningRequestMarshaller.Marshall(PublicRequest: TPutBucketVersioningRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'PUT';
  Request.AddSubResource('versioning');
  if PublicRequest.IsSetContentMD5 then
    Request.Headers.Add('Content-MD5', PublicRequest.ContentMD5);
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if PublicRequest.IsSetMFA then
    Request.Headers.Add('x-amz-mfa', PublicRequest.MFA);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
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
  Result := Request;
end;

class constructor TPutBucketVersioningRequestMarshaller.Create;
begin
  FInstance := TPutBucketVersioningRequestMarshaller.Create;
end;

class function TPutBucketVersioningRequestMarshaller.Instance: IPutBucketVersioningRequestMarshaller;
begin
  Result := FInstance;
end;

end.
