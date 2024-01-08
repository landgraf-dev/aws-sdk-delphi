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
  AWS.S3.Internal.AWSConfigsS3,
  AWS.S3.Util.S3Constants,
  AWS.S3.Internal.S3Transforms,
  System.Classes,
  AWS.Xml.Writer, 
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

  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add(TS3Constants.AmzHeaderExpectedBucketOwner, TS3Transforms.ToStringValue(PublicRequest.ExpectedBucketOwner));

  if string.IsNullOrEmpty(PublicRequest.BucketName) then
    raise EArgumentException.Create('BucketName is a required property and must be set before making this call');

  Request.ResourcePath := '/' +TS3Transforms.ToStringValue(PublicRequest.BucketName);

  Request.AddSubResource('publicAccessBlock');

  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
      if PublicRequest.PublicAccessBlockConfiguration <> nil then
      begin
        XmlWriter.WriteStartElement('PublicAccessBlockConfiguration', 'http://s3.amazonaws.com/doc/2006-03-01/');

        if PublicRequest.PublicAccessBlockConfiguration.IsSetRestrictPublicBuckets then
          XmlWriter.WriteElementString('RestrictPublicBuckets', '', TStringUtils.FromBoolean(PublicRequest.PublicAccessBlockConfiguration.RestrictPublicBuckets));
        if PublicRequest.PublicAccessBlockConfiguration.IsSetBlockPublicAcls then
          XmlWriter.WriteElementString('BlockPublicAcls', 'http://s3.amazonaws.com/doc/2006-03-01/', TS3Transforms.ToXmlStringValue(PublicRequest.PublicAccessBlockConfiguration.BlockPublicAcls));
        if PublicRequest.PublicAccessBlockConfiguration.IsSetIgnorePublicAcls then
          XmlWriter.WriteElementString('IgnorePublicAcls', 'http://s3.amazonaws.com/doc/2006-03-01/', TS3Transforms.ToXmlStringValue(PublicRequest.PublicAccessBlockConfiguration.IgnorePublicAcls));
        if PublicRequest.PublicAccessBlockConfiguration.IsSetBlockPublicPolicy then
          XmlWriter.WriteElementString('BlockPublicPolicy', 'http://s3.amazonaws.com/doc/2006-03-01/', TS3Transforms.ToXmlStringValue(PublicRequest.PublicAccessBlockConfiguration.BlockPublicPolicy));
        if PublicRequest.PublicAccessBlockConfiguration.IsSetRestrictPublicBuckets then
          XmlWriter.WriteElementString('RestrictPublicBuckets', 'http://s3.amazonaws.com/doc/2006-03-01/', TS3Transforms.ToXmlStringValue(PublicRequest.PublicAccessBlockConfiguration.RestrictPublicBuckets));

       XmlWriter.WriteEndElement;
      end;
    finally
      XmlWriter.Free;
    end;
    Request.Content := Copy(XmlStream.Bytes, 0, XmlStream.Size);
    Request.Headers.AddOrSetValue('Content-Type', 'application/xml');
    var content := TEncoding.UTF8.GetString(Request.Content);
    var checksum := TAWSSDKUtils.GenerateChecksumForContent(content, True);
    if PublicRequest.IsSetContentMD5 then
      checksum := PublicRequest.ContentMD5;
    Request.Headers.AddOrSetValue(THeaderKeys.ContentMD5Header, checksum);
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
