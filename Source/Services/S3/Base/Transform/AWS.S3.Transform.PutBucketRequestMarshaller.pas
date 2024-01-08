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
  AWS.S3.Util.S3Constants,
  AWS.S3.Util.AmazonS3Util,
  AWS.S3.Internal.S3Transforms,
  System.Classes,
  AWS.Xml.Writer, 
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
    Request.Headers.Add(THeaderKeys.XAmzAclHeader, PublicRequest.ACL.Value)
  else
//  if (PublicRequest.Grants <> nil) and (PublicRequest.Grants.Count > 0) then
//    ConvertPutWithACLRequest(PublicRequest, Request);
  begin
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
  end;

  if PublicRequest.IsSetObjectLockEnabledForBucket then
    Request.Headers.Add('x-amz-bucket-object-lock-enabled', TS3Transforms.ToStringValue(PublicRequest.ObjectLockEnabledForBucket));

  if string.IsNullOrEmpty(PublicRequest.BucketName) then
    raise EArgumentException.Create('BucketName is a required property and must be set before making this call');

  Request.ResourcePath := '/' + TS3Transforms.ToStringValue(PublicRequest.BucketName);

  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
      var regionCode := '';
      if PublicRequest.BucketRegionName <> '' then
      begin
        if PublicRequest.BucketRegionName = 'eu-west-1' then
          regionCode := 'EU'
        else
        if PublicRequest.BucketRegionName <> 'us-east-1' then
          regionCode := PublicRequest.BucketRegionName;
      end;

      if regionCode <> '' then
      begin
        XmlWriter.WriteStartElement('CreateBucketConfiguration', '');
        XmlWriter.WriteElementString('LocationConstraint', '', regionCode);
        XmlWriter.WriteEndElement;
      end;
    finally
      XmlWriter.Free;
    end;

    Request.Content := Copy(XmlStream.Bytes, 0, XmlStream.Size);
    Request.Headers.AddOrSetValue('Content-Type', 'application/xml');
    var content := TEncoding.UTF8.GetString(Request.Content);

    var checksum := TAWSSDKUtils.GenerateChecksumForContent(content, True);
    Request.Headers.AddOrSetValue(THeaderKeys.ContentMD5Header, checksum);
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
