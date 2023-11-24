unit AWS.S3.Transform.PutBucketRequestPaymentRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.PutBucketRequestPaymentRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils, 
  System.Classes, 
  Bcl.Xml.Writer, 
  System.SysUtils, 
  AWS.SDKUtils;

type
  IPutBucketRequestPaymentRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutBucketRequestPaymentRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutBucketRequestPaymentRequest>, IPutBucketRequestPaymentRequestMarshaller)
  strict private
    class var FInstance: IPutBucketRequestPaymentRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutBucketRequestPaymentRequest): IRequest; overload;
    class function Instance: IPutBucketRequestPaymentRequestMarshaller; static;
  end;
  
implementation

{ TPutBucketRequestPaymentRequestMarshaller }

function TPutBucketRequestPaymentRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutBucketRequestPaymentRequest(AInput));
end;

function TPutBucketRequestPaymentRequestMarshaller.Marshall(PublicRequest: TPutBucketRequestPaymentRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'PUT';
  Request.AddSubResource('requestPayment');
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
    Request.Headers['Content-Type'] := 'application/xml';
    var content := TEncoding.UTF8.GetString(Request.Content);
    var checksum := TAWSSDKUtils.GenerateChecksumForContent(content, true);
    if PublicRequest.IsSetContentMD5 then
      checksum := PublicRequest.ContentMD5;
    Request.Headers[THeaderKeys.ContentMD5Header] := checksum;
    Request.Headers[THeaderKeys.XAmzApiVersion] := '2006-03-01';
  finally
    XmlStream.Free;
  end;
  Result := Request;
end;

class constructor TPutBucketRequestPaymentRequestMarshaller.Create;
begin
  FInstance := TPutBucketRequestPaymentRequestMarshaller.Create;
end;

class function TPutBucketRequestPaymentRequestMarshaller.Instance: IPutBucketRequestPaymentRequestMarshaller;
begin
  Result := FInstance;
end;

end.
