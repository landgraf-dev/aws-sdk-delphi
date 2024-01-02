unit AWS.S3.Transform.PutBucketOwnershipControlsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.PutBucketOwnershipControlsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils, 
  System.Classes, 
  AWS.Xml.Writer, 
  System.SysUtils, 
  AWS.SDKUtils;

type
  IPutBucketOwnershipControlsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutBucketOwnershipControlsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutBucketOwnershipControlsRequest>, IPutBucketOwnershipControlsRequestMarshaller)
  strict private
    class var FInstance: IPutBucketOwnershipControlsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutBucketOwnershipControlsRequest): IRequest; overload;
    class function Instance: IPutBucketOwnershipControlsRequestMarshaller; static;
  end;
  
implementation

{ TPutBucketOwnershipControlsRequestMarshaller }

function TPutBucketOwnershipControlsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutBucketOwnershipControlsRequest(AInput));
end;

function TPutBucketOwnershipControlsRequestMarshaller.Marshall(PublicRequest: TPutBucketOwnershipControlsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'PUT';
  Request.AddSubResource('ownershipControls');
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
      XmlWriter.WriteStartElement('OwnershipControls', '');
      var PublicRequestRules := PublicRequest.Rules;
      if (PublicRequestRules <> nil) and (PublicRequestRules.Count > 0) then
      begin
        XmlWriter.WriteStartElement('Rule', '');
        for var PublicRequestRulesValue in PublicRequestRules do
          if PublicRequestRulesValue <> nil then
          begin
            XmlWriter.WriteStartElement('member', '');
            if PublicRequestRulesValue.IsSetObjectOwnership then
              XmlWriter.WriteElementString('ObjectOwnership', '', PublicRequestRulesValue.ObjectOwnership.Value);
            XmlWriter.WriteEndElement;
          end;
        XmlWriter.WriteEndElement;
      end;
      XmlWriter.WriteEndElement;
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

class constructor TPutBucketOwnershipControlsRequestMarshaller.Create;
begin
  FInstance := TPutBucketOwnershipControlsRequestMarshaller.Create;
end;

class function TPutBucketOwnershipControlsRequestMarshaller.Instance: IPutBucketOwnershipControlsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
