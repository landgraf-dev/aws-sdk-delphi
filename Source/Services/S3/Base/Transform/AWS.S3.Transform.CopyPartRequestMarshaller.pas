unit AWS.S3.Transform.CopyPartRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.CopyPartRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  System.Classes, 
  Bcl.Xml.Writer, 
  System.SysUtils, 
  AWS.SDKUtils;

type
  ICopyPartRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCopyPartRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCopyPartRequest>, ICopyPartRequestMarshaller)
  strict private
    class var FInstance: ICopyPartRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCopyPartRequest): IRequest; overload;
    class function Instance: ICopyPartRequestMarshaller; static;
  end;
  
implementation

{ TCopyPartRequestMarshaller }

function TCopyPartRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCopyPartRequest(AInput));
end;

function TCopyPartRequestMarshaller.Marshall(PublicRequest: TCopyPartRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'PUT';
  if PublicRequest.IsSetCopySourceIfMatch then
    Request.Headers.Add('x-amz-copy-source-if-match', PublicRequest.CopySourceIfMatch);
  if PublicRequest.IsSetCopySourceIfModifiedSince then
    Request.Headers.Add('x-amz-copy-source-if-modified-since', TStringUtils.FromDateTimeToRFC822(PublicRequest.CopySourceIfModifiedSince));
  if PublicRequest.IsSetCopySourceIfNoneMatch then
    Request.Headers.Add('x-amz-copy-source-if-none-match', PublicRequest.CopySourceIfNoneMatch);
  if PublicRequest.IsSetCopySourceIfUnmodifiedSince then
    Request.Headers.Add('x-amz-copy-source-if-unmodified-since', TStringUtils.FromDateTimeToRFC822(PublicRequest.CopySourceIfUnmodifiedSince));
  if PublicRequest.IsSetCopySourceRange then
    Request.Headers.Add('x-amz-copy-source-range', PublicRequest.CopySourceRange);
  if PublicRequest.IsSetCopySourceSSECustomerAlgorithm then
    Request.Headers.Add('x-amz-copy-source-server-side-encryption-customer-algorithm', PublicRequest.CopySourceSSECustomerAlgorithm);
  if PublicRequest.IsSetCopySourceSSECustomerKey then
    Request.Headers.Add('x-amz-copy-source-server-side-encryption-customer-key', PublicRequest.CopySourceSSECustomerKey);
  if PublicRequest.IsSetCopySourceSSECustomerKeyMD5 then
    Request.Headers.Add('x-amz-copy-source-server-side-encryption-customer-key-MD5', PublicRequest.CopySourceSSECustomerKeyMD5);
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if PublicRequest.IsSetExpectedSourceBucketOwner then
    Request.Headers.Add('x-amz-source-expected-bucket-owner', PublicRequest.ExpectedSourceBucketOwner);
  if PublicRequest.IsSetRequestPayer then
    Request.Headers.Add('x-amz-request-payer', PublicRequest.RequestPayer.Value);
  if PublicRequest.IsSetSSECustomerAlgorithm then
    Request.Headers.Add('x-amz-server-side-encryption-customer-algorithm', PublicRequest.SSECustomerAlgorithm);
  if PublicRequest.IsSetSSECustomerKey then
    Request.Headers.Add('x-amz-server-side-encryption-customer-key', PublicRequest.SSECustomerKey);
  if PublicRequest.IsSetSSECustomerKeyMD5 then
    Request.Headers.Add('x-amz-server-side-encryption-customer-key-MD5', PublicRequest.SSECustomerKeyMD5);
  if PublicRequest.IsSetPartNumber then
    Request.Parameters.Add('partNumber', TStringUtils.FromInteger(PublicRequest.PartNumber));
  if PublicRequest.IsSetUploadId then
    Request.Parameters.Add('uploadId', TStringUtils.Fromstring(PublicRequest.UploadId));
  Request.ResourcePath := '/{Bucket}/{Key+}';
  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
      XmlWriter.WriteStartElement('', '');
      XmlWriter.WriteEndElement;
    finally
      XmlWriter.Free;
    end;
    Request.Content := Copy(XmlStream.Bytes, 0, XmlStream.Size);
    Request.Headers['Content-Type'] := 'application/xml';
    var content := TEncoding.UTF8.GetString(Request.Content);
    Request.Headers[THeaderKeys.XAmzApiVersion] := '2006-03-01';
  finally
    XmlStream.Free;
  end;
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TCopyPartRequestMarshaller.Create;
begin
  FInstance := TCopyPartRequestMarshaller.Create;
end;

class function TCopyPartRequestMarshaller.Instance: ICopyPartRequestMarshaller;
begin
  Result := FInstance;
end;

end.
