unit AWS.S3.Transform.PutBucketOwnershipControlsRequestMarshaller;

interface

uses
  AWS.Internal.Request,
  AWS.Transform.RequestMarshaller,
  AWS.Runtime.Model,
  AWS.S3.Model.PutBucketOwnershipControlsRequest,
  AWS.Internal.DefaultRequest,
  AWS.S3.Exception,
  AWS.S3.Internal.S3Transforms,
  AWS.Internal.StringUtils,
  System.Classes,
  AWS.Xml.Writer,
  System.SysUtils,
  AWS.SDKUtils,
  AWS.S3.Util.S3Constants;

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

  if string.IsNullOrEmpty(PublicRequest.BucketName) then
    raise EArgumentException.Create('BucketName is a required property and must be set before making this call');

  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add(TS3Constants.AmzHeaderExpectedBucketOwner, TS3Transforms.ToStringValue(PublicRequest.ExpectedBucketOwner));

  Request.ResourcePath := '/' + TS3Transforms.ToStringValue(PublicRequest.BucketName);

  request.AddSubResource('ownershipControls');

  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
      var ownershipControls := PublicRequest.OwnershipControls;
      if ownershipControls <> nil then
      begin
        XmlWriter.WriteStartElement('OwnershipControls', TS3Constants.S3RequestXmlNamespace);
        if ownershipControls.Rules <> nil then
          for var rule in ownershipControls.Rules do
          begin
            XmlWriter.WriteStartElement('Rule', '');
            if rule.IsSetObjectOwnership then
              XmlWriter.WriteElementString('ObjectOwnership', '', Rule.ObjectOwnership.Value);
            XmlWriter.WriteEndElement;
          end;
        XmlWriter.WriteEndElement;
      end;
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
