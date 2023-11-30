unit AWS.S3.Transform.PutPublicAccessBlockRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.PutPublicAccessBlockRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils, 
  System.Classes, 
  Bcl.Xml.Writer, 
  System.SysUtils, 
  AWS.SDKUtils;

type
  IPutPublicAccessBlockRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutPublicAccessBlockRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutPublicAccessBlockRequest>, IPutPublicAccessBlockRequestMarshaller)
  strict private
    class var FInstance: IPutPublicAccessBlockRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutPublicAccessBlockRequest): IRequest; overload;
    class function Instance: IPutPublicAccessBlockRequestMarshaller; static;
  end;
  
implementation

{ TPutPublicAccessBlockRequestMarshaller }

function TPutPublicAccessBlockRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutPublicAccessBlockRequest(AInput));
end;

function TPutPublicAccessBlockRequestMarshaller.Marshall(PublicRequest: TPutPublicAccessBlockRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'PUT';
  Request.AddSubResource('publicAccessBlock');
  if PublicRequest.IsSetContentMD5 then
    Request.Headers.Add('Content-MD5', PublicRequest.ContentMD5);
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
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

class constructor TPutPublicAccessBlockRequestMarshaller.Create;
begin
  FInstance := TPutPublicAccessBlockRequestMarshaller.Create;
end;

class function TPutPublicAccessBlockRequestMarshaller.Instance: IPutPublicAccessBlockRequestMarshaller;
begin
  Result := FInstance;
end;

end.
