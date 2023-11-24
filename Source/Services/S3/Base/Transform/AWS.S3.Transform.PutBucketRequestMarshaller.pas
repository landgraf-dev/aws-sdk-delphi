unit AWS.S3.Transform.PutBucketRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.PutBucketRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3.Exception, 
  System.Classes, 
  Bcl.Xml.Writer, 
  System.SysUtils, 
  AWS.SDKUtils;

type
  IPutBucketRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutBucketRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutBucketRequest>, IPutBucketRequestMarshaller)
  strict private
    class var FInstance: IPutBucketRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutBucketRequest): IRequest; overload;
    class function Instance: IPutBucketRequestMarshaller; static;
  end;
  
implementation

{ TPutBucketRequestMarshaller }

function TPutBucketRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutBucketRequest(AInput));
end;

function TPutBucketRequestMarshaller.Marshall(PublicRequest: TPutBucketRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'PUT';
  if PublicRequest.IsSetACL then
    Request.Headers.Add('x-amz-acl', PublicRequest.ACL.Value);
  if PublicRequest.IsSetGrantFullControl then
    Request.Headers.Add('x-amz-grant-full-control', PublicRequest.GrantFullControl);
  if PublicRequest.IsSetGrantRead then
    Request.Headers.Add('x-amz-grant-read', PublicRequest.GrantRead);
  if PublicRequest.IsSetGrantReadACP then
    Request.Headers.Add('x-amz-grant-read-acp', PublicRequest.GrantReadACP);
  if PublicRequest.IsSetGrantWrite then
    Request.Headers.Add('x-amz-grant-write', PublicRequest.GrantWrite);
  if PublicRequest.IsSetGrantWriteACP then
    Request.Headers.Add('x-amz-grant-write-acp', PublicRequest.GrantWriteACP);
  if PublicRequest.IsSetObjectLockEnabledForBucket then
    Request.Headers.Add('x-amz-bucket-object-lock-enabled', TStringUtils.FromBoolean(PublicRequest.ObjectLockEnabledForBucket));
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
    Request.Headers[THeaderKeys.XAmzApiVersion] := '2006-03-01';
  finally
    XmlStream.Free;
  end;
  Result := Request;
end;

class constructor TPutBucketRequestMarshaller.Create;
begin
  FInstance := TPutBucketRequestMarshaller.Create;
end;

class function TPutBucketRequestMarshaller.Instance: IPutBucketRequestMarshaller;
begin
  Result := FInstance;
end;

end.
