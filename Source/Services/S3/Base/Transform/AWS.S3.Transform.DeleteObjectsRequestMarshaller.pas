unit AWS.S3.Transform.DeleteObjectsRequestMarshaller;

interface

uses
  AWS.Internal.Request,
  AWS.Transform.RequestMarshaller,
  AWS.Runtime.Model,
  AWS.S3.Model.DeleteObjectsRequest,
  AWS.Internal.DefaultRequest,
  AWS.Internal.StringUtils,
  AWS.S3.Exception,
  AWS.S3.Util.S3Constants,
  AWS.S3.Internal.S3Transforms,
  System.Classes,
  AWS.Xml.Writer, 
  System.SysUtils, 
  AWS.SDKUtils;

type
  IDeleteObjectsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteObjectsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteObjectsRequest>, IDeleteObjectsRequestMarshaller)
  strict private
    class var FInstance: IDeleteObjectsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteObjectsRequest): IRequest; overload;
    class function Instance: IDeleteObjectsRequestMarshaller; static;
  end;
  
implementation

{ TDeleteObjectsRequestMarshaller }

function TDeleteObjectsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteObjectsRequest(AInput));
end;

function TDeleteObjectsRequestMarshaller.Marshall(PublicRequest: TDeleteObjectsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');

  Request.HttpMethod := 'POST';

  if PublicRequest.IsSetBypassGovernanceRetention then
    Request.Headers.Add('x-amz-bypass-governance-retention', TS3Transforms.ToStringValue(PublicRequest.BypassGovernanceRetention));
  if PublicRequest.IsSetMfa then
    Request.Headers.Add(THeaderKeys.XAmzMfaHeader, PublicRequest.Mfa);
  if PublicRequest.IsSetRequestPayer then
    Request.Headers.Add(TS3Constants.AmzHeaderRequestPayer, TS3Transforms.ToStringValue(PublicRequest.RequestPayer.Value));
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add(TS3Constants.AmzHeaderExpectedBucketOwner, TS3Transforms.ToStringValue(PublicRequest.ExpectedBucketOwner));
  if string.IsNullOrEmpty(PublicRequest.BucketName) then
    raise EArgumentException.Create('BucketName is a required property and must be set before making this call');

  Request.ResourcePath := '/' + TS3Transforms.ToStringValue(PublicRequest.BucketName);
  Request.AddSubResource('delete');

  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
      XmlWriter.WriteStartElement('Delete', '');
      var PublicRequestObjects := PublicRequest.Objects;
      if (PublicRequestObjects <> nil) and (PublicRequestObjects.Count > 0) then
      begin
        for var PublicRequestObjectsValue in PublicRequestObjects do
        begin
          XmlWriter.WriteStartElement('Object', '');
          if PublicRequestObjectsValue <> nil then
          begin
            if PublicRequestObjectsValue.IsSetKey then
              XmlWriter.WriteElementString('Key', '', TStringUtils.Fromstring(PublicRequestObjectsValue.Key));
            if PublicRequestObjectsValue.IsSetVersionId then
              XmlWriter.WriteElementString('VersionId', '', TStringUtils.Fromstring(PublicRequestObjectsValue.VersionId));
          end;
          XmlWriter.WriteEndElement;
        end;
      end;
//      if PubliRequest.IsSetQuiet then
//        XmlWriter.WriteElementString('Quiet', '', TS3Transforms.ToXmlStringValue(PublicRequest.Quiet));
      XmlWriter.WriteEndElement;
    finally
      XmlWriter.Free;
    end;

    Request.Content := Copy(XmlStream.Bytes, 0, XmlStream.Size);
    Request.Headers.AddOrSetValue('Content-Type', 'application/xml');
    var content := TEncoding.UTF8.GetString(Request.Content);
    var checksum := TAWSSDKUtils.GenerateChecksumForContent(content, true);
    Request.Headers.AddOrSetValue(THeaderKeys.ContentMD5Header, checksum);
  finally
    XmlStream.Free;
  end;
  Result := Request;
end;

class constructor TDeleteObjectsRequestMarshaller.Create;
begin
  FInstance := TDeleteObjectsRequestMarshaller.Create;
end;

class function TDeleteObjectsRequestMarshaller.Instance: IDeleteObjectsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
