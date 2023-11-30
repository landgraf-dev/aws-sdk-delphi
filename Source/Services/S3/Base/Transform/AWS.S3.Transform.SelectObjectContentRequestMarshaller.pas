unit AWS.S3.Transform.SelectObjectContentRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.SelectObjectContentRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils, 
  System.Classes, 
  Bcl.Xml.Writer, 
  AWS.SDKUtils;

type
  ISelectObjectContentRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSelectObjectContentRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSelectObjectContentRequest>, ISelectObjectContentRequestMarshaller)
  strict private
    class var FInstance: ISelectObjectContentRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSelectObjectContentRequest): IRequest; overload;
    class function Instance: ISelectObjectContentRequestMarshaller; static;
  end;
  
implementation

{ TSelectObjectContentRequestMarshaller }

function TSelectObjectContentRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSelectObjectContentRequest(AInput));
end;

function TSelectObjectContentRequestMarshaller.Marshall(PublicRequest: TSelectObjectContentRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'POST';
  Request.AddSubResource('select-type', '2');
  Request.AddSubResource('select');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if PublicRequest.IsSetSSECustomerAlgorithm then
    Request.Headers.Add('x-amz-server-side-encryption-customer-algorithm', PublicRequest.SSECustomerAlgorithm);
  if PublicRequest.IsSetSSECustomerKey then
    Request.Headers.Add('x-amz-server-side-encryption-customer-key', PublicRequest.SSECustomerKey);
  if PublicRequest.IsSetSSECustomerKeyMD5 then
    Request.Headers.Add('x-amz-server-side-encryption-customer-key-MD5', PublicRequest.SSECustomerKeyMD5);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  if not PublicRequest.IsSetKey then
    raise EAmazonS3Exception.Create('Request object does not have required field Key set');
  Request.AddPathResource('{Key+}', TStringUtils.Fromstring(PublicRequest.Key.TrimLeft(['/'])));
  Request.ResourcePath := '/{Bucket}/{Key+}';
  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
      XmlWriter.WriteStartElement('SelectObjectContentRequest', 'http://s3.amazonaws.com/doc/2006-03-01/');
      if PublicRequest.InputSerialization <> nil then
      begin
        XmlWriter.WriteStartElement('InputSerialization', 'http://s3.amazonaws.com/doc/2006-03-01/');
        if PublicRequest.InputSerialization.CSV <> nil then
        begin
          XmlWriter.WriteStartElement('CSV', 'http://s3.amazonaws.com/doc/2006-03-01/');
          if PublicRequest.InputSerialization.CSV.IsSetAllowQuotedRecordDelimiter then
            XmlWriter.WriteElementString('AllowQuotedRecordDelimiter', 'http://s3.amazonaws.com/doc/2006-03-01/', TStringUtils.FromBoolean(PublicRequest.InputSerialization.CSV.AllowQuotedRecordDelimiter));
          if PublicRequest.InputSerialization.CSV.IsSetComments then
            XmlWriter.WriteElementString('Comments', 'http://s3.amazonaws.com/doc/2006-03-01/', TStringUtils.Fromstring(PublicRequest.InputSerialization.CSV.Comments));
          if PublicRequest.InputSerialization.CSV.IsSetFieldDelimiter then
            XmlWriter.WriteElementString('FieldDelimiter', 'http://s3.amazonaws.com/doc/2006-03-01/', TStringUtils.Fromstring(PublicRequest.InputSerialization.CSV.FieldDelimiter));
          if PublicRequest.InputSerialization.CSV.IsSetFileHeaderInfo then
            XmlWriter.WriteElementString('FileHeaderInfo', 'http://s3.amazonaws.com/doc/2006-03-01/', PublicRequest.InputSerialization.CSV.FileHeaderInfo.Value);
          if PublicRequest.InputSerialization.CSV.IsSetQuoteCharacter then
            XmlWriter.WriteElementString('QuoteCharacter', 'http://s3.amazonaws.com/doc/2006-03-01/', TStringUtils.Fromstring(PublicRequest.InputSerialization.CSV.QuoteCharacter));
          if PublicRequest.InputSerialization.CSV.IsSetQuoteEscapeCharacter then
            XmlWriter.WriteElementString('QuoteEscapeCharacter', 'http://s3.amazonaws.com/doc/2006-03-01/', TStringUtils.Fromstring(PublicRequest.InputSerialization.CSV.QuoteEscapeCharacter));
          if PublicRequest.InputSerialization.CSV.IsSetRecordDelimiter then
            XmlWriter.WriteElementString('RecordDelimiter', 'http://s3.amazonaws.com/doc/2006-03-01/', TStringUtils.Fromstring(PublicRequest.InputSerialization.CSV.RecordDelimiter));
          XmlWriter.WriteEndElement;
        end;
        if PublicRequest.InputSerialization.IsSetCompressionType then
          XmlWriter.WriteElementString('CompressionType', 'http://s3.amazonaws.com/doc/2006-03-01/', PublicRequest.InputSerialization.CompressionType.Value);
        if PublicRequest.InputSerialization.JSON <> nil then
        begin
          XmlWriter.WriteStartElement('JSON', 'http://s3.amazonaws.com/doc/2006-03-01/');
          if PublicRequest.InputSerialization.JSON.IsSetType then
            XmlWriter.WriteElementString('Type', 'http://s3.amazonaws.com/doc/2006-03-01/', PublicRequest.InputSerialization.JSON.&Type.Value);
          XmlWriter.WriteEndElement;
        end;
        if PublicRequest.InputSerialization.Parquet <> nil then
        begin
          XmlWriter.WriteStartElement('Parquet', 'http://s3.amazonaws.com/doc/2006-03-01/');
          XmlWriter.WriteEndElement;
        end;
        XmlWriter.WriteEndElement;
      end;
      if PublicRequest.OutputSerialization <> nil then
      begin
        XmlWriter.WriteStartElement('OutputSerialization', 'http://s3.amazonaws.com/doc/2006-03-01/');
        if PublicRequest.OutputSerialization.CSV <> nil then
        begin
          XmlWriter.WriteStartElement('CSV', 'http://s3.amazonaws.com/doc/2006-03-01/');
          if PublicRequest.OutputSerialization.CSV.IsSetFieldDelimiter then
            XmlWriter.WriteElementString('FieldDelimiter', 'http://s3.amazonaws.com/doc/2006-03-01/', TStringUtils.Fromstring(PublicRequest.OutputSerialization.CSV.FieldDelimiter));
          if PublicRequest.OutputSerialization.CSV.IsSetQuoteCharacter then
            XmlWriter.WriteElementString('QuoteCharacter', 'http://s3.amazonaws.com/doc/2006-03-01/', TStringUtils.Fromstring(PublicRequest.OutputSerialization.CSV.QuoteCharacter));
          if PublicRequest.OutputSerialization.CSV.IsSetQuoteEscapeCharacter then
            XmlWriter.WriteElementString('QuoteEscapeCharacter', 'http://s3.amazonaws.com/doc/2006-03-01/', TStringUtils.Fromstring(PublicRequest.OutputSerialization.CSV.QuoteEscapeCharacter));
          if PublicRequest.OutputSerialization.CSV.IsSetQuoteFields then
            XmlWriter.WriteElementString('QuoteFields', 'http://s3.amazonaws.com/doc/2006-03-01/', PublicRequest.OutputSerialization.CSV.QuoteFields.Value);
          if PublicRequest.OutputSerialization.CSV.IsSetRecordDelimiter then
            XmlWriter.WriteElementString('RecordDelimiter', 'http://s3.amazonaws.com/doc/2006-03-01/', TStringUtils.Fromstring(PublicRequest.OutputSerialization.CSV.RecordDelimiter));
          XmlWriter.WriteEndElement;
        end;
        if PublicRequest.OutputSerialization.JSON <> nil then
        begin
          XmlWriter.WriteStartElement('JSON', 'http://s3.amazonaws.com/doc/2006-03-01/');
          if PublicRequest.OutputSerialization.JSON.IsSetRecordDelimiter then
            XmlWriter.WriteElementString('RecordDelimiter', 'http://s3.amazonaws.com/doc/2006-03-01/', TStringUtils.Fromstring(PublicRequest.OutputSerialization.JSON.RecordDelimiter));
          XmlWriter.WriteEndElement;
        end;
        XmlWriter.WriteEndElement;
      end;
      if PublicRequest.RequestProgress <> nil then
      begin
        XmlWriter.WriteStartElement('RequestProgress', 'http://s3.amazonaws.com/doc/2006-03-01/');
        if PublicRequest.RequestProgress.IsSetEnabled then
          XmlWriter.WriteElementString('Enabled', 'http://s3.amazonaws.com/doc/2006-03-01/', TStringUtils.FromBoolean(PublicRequest.RequestProgress.Enabled));
        XmlWriter.WriteEndElement;
      end;
      if PublicRequest.ScanRange <> nil then
      begin
        XmlWriter.WriteStartElement('ScanRange', 'http://s3.amazonaws.com/doc/2006-03-01/');
        if PublicRequest.ScanRange.IsSetEnd then
          XmlWriter.WriteElementString('End', 'http://s3.amazonaws.com/doc/2006-03-01/', TStringUtils.FromInt64(PublicRequest.ScanRange.&End));
        if PublicRequest.ScanRange.IsSetStart then
          XmlWriter.WriteElementString('Start', 'http://s3.amazonaws.com/doc/2006-03-01/', TStringUtils.FromInt64(PublicRequest.ScanRange.Start));
        XmlWriter.WriteEndElement;
      end;
      XmlWriter.WriteEndElement;
    finally
      XmlWriter.Free;
    end;
    Request.Content := Copy(XmlStream.Bytes, 0, XmlStream.Size);
    Request.Headers.AddOrSetValue('Content-Type', 'application/xml');
    var content := TEncoding.UTF8.GetString(Request.Content);
    Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2006-03-01');
  finally
    XmlStream.Free;
  end;
  Result := Request;
end;

class constructor TSelectObjectContentRequestMarshaller.Create;
begin
  FInstance := TSelectObjectContentRequestMarshaller.Create;
end;

class function TSelectObjectContentRequestMarshaller.Instance: ISelectObjectContentRequestMarshaller;
begin
  Result := FInstance;
end;

end.
