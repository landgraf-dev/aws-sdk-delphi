unit AWS.S3Control.Transform.CreateBucketRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.CreateBucketRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  System.Classes, 
  Bcl.Xml.Writer, 
  AWS.SDKUtils;

type
  ICreateBucketRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateBucketRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateBucketRequest>, ICreateBucketRequestMarshaller)
  strict private
    class var FInstance: ICreateBucketRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateBucketRequest): IRequest; overload;
    class function Instance: ICreateBucketRequestMarshaller; static;
  end;
  
implementation

{ TCreateBucketRequestMarshaller }

function TCreateBucketRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateBucketRequest(AInput));
end;

function TCreateBucketRequestMarshaller.Marshall(PublicRequest: TCreateBucketRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'PUT';
  if PublicRequest.IsSetACL then
    Request.Headers.Add('x-amz-acl', PublicRequest.ACL);
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
  if PublicRequest.IsSetOutpostId then
    Request.Headers.Add('x-amz-outpost-id', PublicRequest.OutpostId);
  if not PublicRequest.IsSetBucket then
    raise EAmazonS3ControlException.Create('Request object does not have required field Bucket set');
  Request.AddPathResource('{name}', TStringUtils.Fromstring(PublicRequest.Bucket));
  Request.ResourcePath := '/v20180820/bucket/{name}';
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
    ARequest.Headers[THeaderKeys.ContentMD5Header] := checksum;
    Request.Headers[Amazon.Util.HeaderKeys.XAmzApiVersion] := '2018-08-20';
  finally
    XmlStream.Free;
  end;
  Result := Request;
end;

class constructor TCreateBucketRequestMarshaller.Create;
begin
  FInstance := TCreateBucketRequestMarshaller.Create;
end;

class function TCreateBucketRequestMarshaller.Instance: ICreateBucketRequestMarshaller;
begin
  Result := FInstance;
end;

end.
