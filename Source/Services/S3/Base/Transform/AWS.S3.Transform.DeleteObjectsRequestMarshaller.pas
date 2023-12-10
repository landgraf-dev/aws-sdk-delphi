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
  Request.AddSubResource('delete');
  if PublicRequest.IsSetBypassGovernanceRetention then
    Request.Headers.Add('x-amz-bypass-governance-retention', TStringUtils.FromBoolean(PublicRequest.BypassGovernanceRetention));
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if PublicRequest.IsSetMFA then
    Request.Headers.Add('x-amz-mfa', PublicRequest.MFA);
  if PublicRequest.IsSetRequestPayer then
    Request.Headers.Add('x-amz-request-payer', PublicRequest.RequestPayer.Value);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
      XmlWriter.WriteStartElement('Delete', '');
      var PublicRequestObjects := PublicRequest.Objects;
      if (PublicRequestObjects <> nil) and (PublicRequestObjects.Count > 0) then
      begin
        XmlWriter.WriteStartElement('Object', '');
        for var PublicRequestObjectsValue in PublicRequestObjects do
          if PublicRequestObjectsValue <> nil then
          begin
            if PublicRequestObjectsValue.IsSetKey then
              XmlWriter.WriteElementString('Key', '', TStringUtils.Fromstring(PublicRequestObjectsValue.Key));
            if PublicRequestObjectsValue.IsSetVersionId then
              XmlWriter.WriteElementString('VersionId', '', TStringUtils.Fromstring(PublicRequestObjectsValue.VersionId));
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
    Request.Headers.AddOrSetValue(THeaderKeys.ContentMD5Header, checksum);
//    Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2006-03-01');
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
