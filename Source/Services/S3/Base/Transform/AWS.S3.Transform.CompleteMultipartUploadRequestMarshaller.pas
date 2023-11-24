unit AWS.S3.Transform.CompleteMultipartUploadRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.CompleteMultipartUploadRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3.Exception, 
  System.Classes, 
  Bcl.Xml.Writer, 
  AWS.SDKUtils;

type
  ICompleteMultipartUploadRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCompleteMultipartUploadRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCompleteMultipartUploadRequest>, ICompleteMultipartUploadRequestMarshaller)
  strict private
    class var FInstance: ICompleteMultipartUploadRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCompleteMultipartUploadRequest): IRequest; overload;
    class function Instance: ICompleteMultipartUploadRequestMarshaller; static;
  end;
  
implementation

{ TCompleteMultipartUploadRequestMarshaller }

function TCompleteMultipartUploadRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCompleteMultipartUploadRequest(AInput));
end;

function TCompleteMultipartUploadRequestMarshaller.Marshall(PublicRequest: TCompleteMultipartUploadRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'POST';
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
  if PublicRequest.IsSetUploadId then
    Request.Parameters.Add('uploadId', TStringUtils.Fromstring(PublicRequest.UploadId));
  Request.ResourcePath := '/{Bucket}/{Key+}';
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
    Request.Headers[THeaderKeys.XAmzApiVersion] := '2006-03-01';
  finally
    XmlStream.Free;
  end;
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TCompleteMultipartUploadRequestMarshaller.Create;
begin
  FInstance := TCompleteMultipartUploadRequestMarshaller.Create;
end;

class function TCompleteMultipartUploadRequestMarshaller.Instance: ICompleteMultipartUploadRequestMarshaller;
begin
  Result := FInstance;
end;

end.
