unit AWS.S3.Transform.CompleteMultipartUploadRequestMarshaller;

interface

uses
  System.SysUtils, System.Generics.Collections, System.Generics.Defaults,
  AWS.Internal.Request,
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model,
  AWS.S3.Model.CompletedPart,
  AWS.S3.Model.CompleteMultipartUploadRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils,
  AWS.S3.Internal.S3Transforms,
  AWS.S3.Exception, 
  System.Classes, 
  AWS.Xml.Writer, 
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

  if PublicRequest.IsSetRequestPayer then
    Request.Headers.Add('x-amz-request-payer', PublicRequest.RequestPayer.Value);

  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);

  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');

  if not PublicRequest.IsSetKey then
    raise EAmazonS3Exception.Create('Request object does not have required field Key set');

  Request.ResourcePath := Format('/%s/%s',
    [TS3Transforms.ToStringValue(PublicRequest.BucketName),
    TS3Transforms.ToStringValue(PublicRequest.Key)]);

  if PublicRequest.IsSetUploadId then
    Request.AddSubResource('uploadId', TS3Transforms.ToStringValue(PublicRequest.UploadId));

  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
      XmlWriter.WriteStartElement('CompleteMultipartUpload', '');
      var PublicRequestMultipartUploadParts := PublicRequest.Parts;
      PublicRequestMultipartUploadParts.Sort(TComparer<TPartETag>.Construct(
        function(const Left, Right: TPartETag): Integer
        begin
          Result := Left.PartNumber - Right.PartNumber;
        end
      ));
      if (PublicRequestMultipartUploadParts <> nil) and (PublicRequestMultipartUploadParts.Count > 0) then
      begin
        for var PublicRequestMultipartUploadPartsValue in PublicRequestMultipartUploadParts do
        begin
          XmlWriter.WriteStartElement('Part', '');
          if PublicRequestMultipartUploadPartsValue <> nil then
          begin
            if PublicRequestMultipartUploadPartsValue.IsSetETag then
              XmlWriter.WriteElementString('ETag', '', TStringUtils.Fromstring(PublicRequestMultipartUploadPartsValue.ETag));
            if PublicRequestMultipartUploadPartsValue.IsSetPartNumber then
              XmlWriter.WriteElementString('PartNumber', '', TStringUtils.FromInteger(PublicRequestMultipartUploadPartsValue.PartNumber));
          end;
          XmlWriter.WriteEndElement;
        end;
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
